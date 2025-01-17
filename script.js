// Constants
SERVER = 1
CIRCLE_RADIUS = 50
CENTER_X = 0
CENTER_Y = 0
MAX_PLATOON_SIZE = 10
SAFE_DISTANCE = 10
IDEAL_DISTANCE = 15
GREEN_LIGHT_DURATION = 30
RED_LIGHT_DURATION = 20
TIMEOUT(60000);

// Global variables
car_positions = {};
car_speeds = {};
traffic_light_state = "RED";
light_state_duration = 0;
platoon_queue = [];
old_time = 0;
new_time = 0;

function getNextPosition(currentX, currentY, speed) {
    var angle = Math.atan2(currentY - CENTER_Y, currentX - CENTER_X);
    angle += speed * 0.01;
    var newX = CENTER_X + CIRCLE_RADIUS * Math.cos(angle);
    var newY = CENTER_Y + CIRCLE_RADIUS * Math.sin(angle);
    return {x: newX, y: newY};
}

function getDistance(x1, y1, x2, y2) {
    return Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
}

function logMessage(message) {
    log.log(time + ":" + id + ": " + message + "\n");
}

// New function to check for missing motes
function checkMissingMotes() {
    var activeMotes = platoon_queue.filter(moteId => car_positions[moteId] !== undefined);
    if (activeMotes.length < platoon_queue.length) {
        logMessage("Mote(s) missing. Reorganizing platoon.");
        platoon_queue = activeMotes;
        adjustSpeeds();
        repositionCars();
    }
}

// New function to adjust speeds when reorganizing
function adjustSpeeds() {
    var speedIncrease = 1.2;  // 20% speed increase
    for (var i = 0; i < platoon_queue.length; i++) {
        var carId = platoon_queue[i];
        car_speeds[carId] *= speedIncrease;
        logMessage("Increased speed for car " + carId + " to " + car_speeds[carId].toFixed(2));
    }
}

// New function to reposition cars after reorganization
function repositionCars() {
    for (var i = 0; i < platoon_queue.length; i++) {
        var carId = platoon_queue[i];
        var angle = (2 * Math.PI * i) / platoon_queue.length;
        car_positions[carId] = {
            x: CENTER_X + CIRCLE_RADIUS * Math.cos(angle),
            y: CENTER_Y + CIRCLE_RADIUS * Math.sin(angle)
        };
        logMessage("Repositioned car " + carId + " to (" + car_positions[carId].x.toFixed(2) + ", " + car_positions[carId].y.toFixed(2) + ")");
    }
}

while (true) {
    if (id === SERVER) {
        // Traffic light logic
        new_time = time;
        if (old_time === 0) old_time = time;
        
        delta_t = (new_time - old_time) / 1000000;
        light_state_duration += delta_t;
        
        if ((traffic_light_state === "GREEN" && light_state_duration >= GREEN_LIGHT_DURATION) ||
            (traffic_light_state === "RED" && light_state_duration >= RED_LIGHT_DURATION)) {
            traffic_light_state = (traffic_light_state === "GREEN") ? "RED" : "GREEN";
            light_state_duration = 0;
            logMessage("Traffic light changed to " + traffic_light_state);
        }
        
        old_time = new_time;
    } else {
        // Car logic
        checkMissingMotes();  // Check for missing motes at the start of each iteration

        if (!car_positions[id]) {
            var angle = Math.random() * 2 * Math.PI;
            car_positions[id] = {
                x: CENTER_X + CIRCLE_RADIUS * Math.cos(angle),
                y: CENTER_Y + CIRCLE_RADIUS * Math.sin(angle)
            };
            car_speeds[id] = 1 + Math.random();
            platoon_queue.push(id);
            logMessage("Joined platoon at position " + platoon_queue.length);
        }
        
        if (traffic_light_state === "GREEN") {
            var currentPos = car_positions[id];
            var nextPos = getNextPosition(currentPos.x, currentPos.y, car_speeds[id]);
            
            var canMove = true;
            var platoonIndex = platoon_queue.indexOf(id);
            
            if (platoonIndex > 0) {
                var aheadId = platoon_queue[platoonIndex - 1];
                var aheadPos = car_positions[aheadId];
                var distance = getDistance(nextPos.x, nextPos.y, aheadPos.x, aheadPos.y);
                
                if (distance < SAFE_DISTANCE) {
                    canMove = false;
                    logMessage("WARNING: Too close to car ahead (ID: " + aheadId + "). Distance: " + distance.toFixed(2));
                } else if (distance < IDEAL_DISTANCE) {
                    logMessage("Maintaining safe distance from car ahead (ID: " + aheadId + "). Distance: " + distance.toFixed(2));
                } else if (distance > IDEAL_DISTANCE * 1.5) {
                    logMessage("Catching up to car ahead (ID: " + aheadId + "). Distance: " + distance.toFixed(2));
                    car_speeds[id] *= 1.1; // Increase speed to catch up
                } else {
                    logMessage("Ideal platooning distance maintained from car ahead (ID: " + aheadId + "). Distance: " + distance.toFixed(2));
                }
            } else if (platoonIndex === 0) {
                logMessage("Leading the platoon");
            }
            
            if (canMove) {
                car_positions[id] = nextPos;
                logMessage("Moved to new position: (" + nextPos.x.toFixed(2) + ", " + nextPos.y.toFixed(2) + ")");
            } else {
                logMessage("Stopped to maintain safe distance");
            }
        } else {
            logMessage("Waiting at red light");
        }
    }
    
    YIELD();
}
