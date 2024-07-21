<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/collect-view</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <project EXPORT="discard">[APPS_DIR]/mobility</project>
  <simulation>
    <title>project</title>
    <randomseed>123456</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky1</identifier>
      <description>server</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/project/server-broadcast.c</source>
      <commands EXPORT="discard">make server-broadcast.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/project/server-broadcast.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky2</identifier>
      <description>client</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/project/client-broadcast.c</source>
      <commands EXPORT="discard">make client-broadcast.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/project/client-broadcast.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>0.0</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-5.0</x>
        <y>12.0</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>4.806803468208095</x>
        <y>-14.178323699421968</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-24.277456647398843</x>
        <y>-3.624277456647398</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>280</width>
    <z>2</z>
    <height>160</height>
    <location_x>400</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.MoteTypeVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <viewport>4.3686868686868685 0.0 0.0 4.3686868686868685 232.970303030303 188.5666666666666</viewport>
    </plugin_config>
    <width>400</width>
    <z>5</z>
    <height>400</height>
    <location_x>1</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <formatted_time />
      <coloring />
    </plugin_config>
    <width>1520</width>
    <z>6</z>
    <height>240</height>
    <location_x>400</location_x>
    <location_y>160</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.TimeLine
    <plugin_config>
      <mote>0</mote>
      <mote>1</mote>
      <mote>2</mote>
      <mote>3</mote>
      <showRadioRXTX />
      <showRadioHW />
      <showLEDs />
      <zoomfactor>500.0</zoomfactor>
    </plugin_config>
    <width>1920</width>
    <z>4</z>
    <height>166</height>
    <location_x>0</location_x>
    <location_y>718</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Notes
    <plugin_config>
      <notes>Enter notes here</notes>
      <decorations>true</decorations>
    </plugin_config>
    <width>1240</width>
    <z>7</z>
    <height>160</height>
    <location_x>680</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>SERVER = 1&#xD;
BOUNDED_WAITING = 30&#xD;
&#xD;
TIMEOUT(60000);&#xD;
&#xD;
function includes(arr, ele) {&#xD;
    for (var i = 0; i &lt; arr.length; i++) {&#xD;
        if (arr[i] === ele) {&#xD;
            return true;&#xD;
        }&#xD;
    }&#xD;
    return false;&#xD;
}&#xD;
&#xD;
car_positions = new Object();&#xD;
densities = {left:0, right:0, up:0, down:0};&#xD;
&#xD;
time_left = {left:BOUNDED_WAITING,&#xD;
             right:BOUNDED_WAITING,&#xD;
             up:BOUNDED_WAITING, &#xD;
             down:BOUNDED_WAITING};&#xD;
         &#xD;
queue = [];&#xD;
&#xD;
current_green = "none";&#xD;
current_green_time = 0;&#xD;
current_alloted_time = 0;&#xD;
&#xD;
old_time = 0;&#xD;
new_time = 0;&#xD;
&#xD;
timeout_function = function(){   &#xD;
    log.log("END!\n");&#xD;
    log.testOK();&#xD;
}&#xD;
&#xD;
&#xD;
while (true) {&#xD;
    //log.log(time + ":" + id + ":" + msg + "\n");&#xD;
    log.log("=======================================================\n");&#xD;
  &#xD;
    if (msg.startsWith("msg sent")){&#xD;
        xc = mote.interfaces.position.XCoordinate;&#xD;
        yc = mote.interfaces.position.YCoordinate;&#xD;
        car_positions[id] = {x:xc, y:yc};&#xD;
    }&#xD;
    else if(msg.startsWith("msg recvd")){&#xD;
        new_time = time; &#xD;
        &#xD;
        if (old_time === 0){&#xD;
            old_time = time;&#xD;
        }&#xD;
        &#xD;
        densities.left = 0;&#xD;
        densities.right = 0;&#xD;
        densities.up = 0;&#xD;
        densities.down = 0;&#xD;
        Object.keys(car_positions).forEach(function fn1(ele){&#xD;
            sx = car_positions[ele].x;&#xD;
            sy = car_positions[ele].y;&#xD;
            cx = mote.interfaces.position.XCoordinate;&#xD;
            cy = mote.interfaces.position.YCoordinate;&#xD;
          &#xD;
            if (sx &gt; cx + 10 &amp;&amp; cy &lt; sy &amp;&amp; sy &lt; cy + 10){&#xD;
                densities.right++;&#xD;
            } else if (sx &lt;= cx - 10 &amp;&amp; cy - 10 &lt; sy &amp;&amp; sy &lt; cy){&#xD;
                densities.left++;&#xD;
            }&#xD;
            if (sy &gt; cy + 10 &amp;&amp; cx - 10 &lt; sx &amp;&amp; sx &lt; cx){&#xD;
                densities.down++;&#xD;
            } else if (sy &lt;= cy - 10 &amp;&amp; cx &lt; sx &amp;&amp; sx &lt; cx + 10){&#xD;
                densities.up++;&#xD;
            }&#xD;
        })   &#xD;
        &#xD;
        if (queue.length === 0){&#xD;
            if (densities.left !== 0){&#xD;
                queue.push("left");&#xD;
            } else if (densities.right !== 0){&#xD;
                queue.push("right");&#xD;
            } else if (densities.up !== 0){&#xD;
                queue.push("up");&#xD;
            } else if (densities.down !== 0){&#xD;
                queue.push("down");&#xD;
            }&#xD;
        } else {&#xD;
            &#xD;
            if (!includes(queue, "left") &amp;&amp; densities.left !== 0){&#xD;
                queue.push("left");&#xD;
            }&#xD;
            if (!includes(queue, "right") &amp;&amp; densities.right !== 0){&#xD;
                queue.push("right");&#xD;
            }&#xD;
            if (!includes(queue, "up") &amp;&amp; densities.up !== 0){&#xD;
                queue.push("up");&#xD;
            }&#xD;
            if (!includes(queue, "down") &amp;&amp; densities.down !== 0){&#xD;
                queue.push("down");&#xD;
            }&#xD;
            &#xD;
            if (densities[queue[0]] === 0){&#xD;
                queue.shift();&#xD;
                current_alloted_time = 0;&#xD;
                current_green = "none";&#xD;
            }&#xD;
            &#xD;
        }&#xD;
        &#xD;
      &#xD;
        delta_t = (new_time - old_time) / 1000000;&#xD;
        &#xD;
        queue.forEach(function fn4(ele){&#xD;
            if (ele !== current_green &amp;&amp; densities[ele] !== 0){&#xD;
                time_left[ele] -= delta_t;&#xD;
            }&#xD;
        })&#xD;
        &#xD;
        current_green_time += delta_t;&#xD;
        &#xD;
        if (current_green_time &gt;= current_alloted_time &amp;&amp; queue.length !== 0){&#xD;
          &#xD;
            if (current_green !== "none"){&#xD;
                lane = queue.shift();&#xD;
                queue.push(lane);&#xD;
            }&#xD;
                    &#xD;
            current_green = queue[0];&#xD;
            current_green_time = 0;&#xD;
            time_left[current_green] = BOUNDED_WAITING;&#xD;
        }  &#xD;
        &#xD;
        value = queue.length;&#xD;
        if (value === 0){&#xD;
            value = 1;&#xD;
        }&#xD;
        current_alloted_time = BOUNDED_WAITING / value;&#xD;
        &#xD;
        log.log("queue: ");&#xD;
        queue.forEach(function fn2(ele){&#xD;
            log.log(ele + " ");&#xD;
        })&#xD;
        log.log("\n");&#xD;
&#xD;
        log.log("time_left: left-{"+time_left.left+"},right-{"+time_left.right+"},up-{"+time_left.up+"},down-{"+time_left.down+"}\n");&#xD;
        &#xD;
        log.log("GREEN SIGNAL: "+current_green.toUpperCase()+"\n");&#xD;
        log.log("Has been turned on for "+current_green_time+"\n");&#xD;
        log.log("Will be on until "+current_alloted_time+"\n");&#xD;
        &#xD;
        old_time = new_time;&#xD;
    }&#xD;
  &#xD;
    YIELD();&#xD;
}</script>
      <active>true</active>
    </plugin_config>
    <width>982</width>
    <z>1</z>
    <height>834</height>
    <location_x>680</location_x>
    <location_y>-3</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.MoteInterfaceViewer
    <mote_arg>1</mote_arg>
    <plugin_config>
      <interface>Position</interface>
      <scrollpos>0,0</scrollpos>
    </plugin_config>
    <width>350</width>
    <z>3</z>
    <height>300</height>
    <location_x>3</location_x>
    <location_y>400</location_y>
  </plugin>
  <plugin>
    Mobility
    <plugin_config>
      <positions EXPORT="copy">[CONTIKI_DIR]/examples/project/positions.dat</positions>
    </plugin_config>
    <width>500</width>
    <z>0</z>
    <height>200</height>
    <location_x>167</location_x>
    <location_y>477</location_y>
  </plugin>
</simconf>

