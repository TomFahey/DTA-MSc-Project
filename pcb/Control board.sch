<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%N (%S.%C%R)" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lsta" urn="urn:adsk.eagle:library:161">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE20" urn="urn:adsk.eagle:footprint:8147/1" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-25.4" y1="1.27" x2="-25.4" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-1.27" x2="-23.114" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-23.114" y1="-1.27" x2="-22.86" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-1.016" x2="-22.606" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-22.606" y1="-1.27" x2="-20.574" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.574" y1="-1.27" x2="-20.32" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-1.016" x2="-20.066" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.066" y1="-1.27" x2="-18.034" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.034" y1="-1.27" x2="-17.78" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.016" x2="-17.526" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.526" y1="-1.27" x2="-15.494" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-1.27" x2="-15.24" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.016" x2="-14.986" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="1.27" x2="-15.24" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.016" x2="-15.494" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="1.27" x2="-17.526" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.526" y1="1.27" x2="-17.78" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="1.016" x2="-18.034" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.034" y1="1.27" x2="-20.066" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-20.066" y1="1.27" x2="-20.32" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="1.016" x2="-20.574" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-20.574" y1="1.27" x2="-22.606" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-22.606" y1="1.27" x2="-22.86" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.016" x2="-23.114" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-23.114" y1="1.27" x2="-25.4" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-24.384" y1="0.762" x2="-24.384" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-24.384" y1="0.508" x2="-24.638" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-24.638" y1="0.508" x2="-24.638" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-24.638" y1="-0.508" x2="-24.384" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-24.384" y1="-0.508" x2="-24.384" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-24.384" y1="-0.762" x2="-23.876" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-23.876" y1="-0.762" x2="-23.876" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-23.876" y1="-0.508" x2="-23.622" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-23.622" y1="-0.508" x2="-23.622" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-23.622" y1="0.508" x2="-23.876" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-23.876" y1="0.508" x2="-23.876" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-23.876" y1="0.762" x2="-24.384" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-21.844" y1="0.762" x2="-21.844" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-21.844" y1="0.508" x2="-22.098" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-22.098" y1="0.508" x2="-22.098" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-22.098" y1="-0.508" x2="-21.844" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-21.844" y1="-0.508" x2="-21.844" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-21.844" y1="-0.762" x2="-21.336" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-21.336" y1="-0.762" x2="-21.336" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-21.336" y1="-0.508" x2="-21.082" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-21.082" y1="-0.508" x2="-21.082" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-21.082" y1="0.508" x2="-21.336" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-21.336" y1="0.508" x2="-21.336" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-21.336" y1="0.762" x2="-21.844" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-19.304" y1="0.762" x2="-19.304" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-19.304" y1="0.508" x2="-19.558" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-19.558" y1="0.508" x2="-19.558" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-19.558" y1="-0.508" x2="-19.304" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-19.304" y1="-0.508" x2="-19.304" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-19.304" y1="-0.762" x2="-18.796" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-18.796" y1="-0.762" x2="-18.796" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-18.796" y1="-0.508" x2="-18.542" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-18.542" y1="-0.508" x2="-18.542" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-18.542" y1="0.508" x2="-18.796" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-18.796" y1="0.508" x2="-18.796" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-18.796" y1="0.762" x2="-19.304" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-16.764" y1="0.762" x2="-16.764" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-16.764" y1="0.508" x2="-17.018" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-17.018" y1="0.508" x2="-17.018" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-17.018" y1="-0.508" x2="-16.764" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-16.764" y1="-0.508" x2="-16.764" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-16.764" y1="-0.762" x2="-16.256" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-16.256" y1="-0.762" x2="-16.256" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-16.256" y1="-0.508" x2="-16.002" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-16.002" y1="-0.508" x2="-16.002" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-16.002" y1="0.508" x2="-16.256" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-16.256" y1="0.508" x2="-16.256" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-16.256" y1="0.762" x2="-16.764" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-14.224" y1="0.762" x2="-14.224" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-14.224" y1="0.508" x2="-14.478" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-14.478" y1="0.508" x2="-14.478" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-14.478" y1="-0.508" x2="-14.224" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-14.224" y1="-0.508" x2="-14.224" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-14.224" y1="-0.762" x2="-13.716" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-13.716" y1="-0.762" x2="-13.716" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-13.716" y1="-0.508" x2="-13.462" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-13.462" y1="-0.508" x2="-13.462" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-13.462" y1="0.508" x2="-13.716" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-13.716" y1="0.508" x2="-13.716" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-13.716" y1="0.762" x2="-14.224" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-14.986" y1="-1.27" x2="-12.954" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.954" y1="-1.27" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.016" x2="-12.446" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-1.27" x2="-10.414" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-1.27" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.016" x2="-9.906" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="1.27" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.414" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="1.27" x2="-12.446" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="1.27" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.954" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-12.954" y1="1.27" x2="-14.986" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-11.684" y1="0.762" x2="-11.684" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="0.508" x2="-11.938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-11.938" y1="0.508" x2="-11.938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-11.938" y1="-0.508" x2="-11.684" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="-0.508" x2="-11.684" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="-0.762" x2="-11.176" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-11.176" y1="-0.762" x2="-11.176" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-11.176" y1="-0.508" x2="-10.922" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-10.922" y1="-0.508" x2="-10.922" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-10.922" y1="0.508" x2="-11.176" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-11.176" y1="0.508" x2="-11.176" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-11.176" y1="0.762" x2="-11.684" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="0.762" x2="-9.144" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="0.508" x2="-9.398" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-9.398" y1="0.508" x2="-9.398" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-9.398" y1="-0.508" x2="-9.144" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-0.508" x2="-9.144" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-0.762" x2="-8.636" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="-0.762" x2="-8.636" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="-0.508" x2="-8.382" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-0.508" x2="-8.382" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="0.508" x2="-8.636" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="0.508" x2="-8.636" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="0.762" x2="-9.144" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="1.016" x2="-7.874" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="1.27" x2="-7.62" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="1.27" x2="-9.906" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.016" x2="-7.366" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-1.27" x2="-7.62" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-1.27" x2="-7.874" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="0.762" x2="-6.604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="0.508" x2="-6.858" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="0.508" x2="-6.858" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="-0.508" x2="-6.604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.508" x2="-6.604" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.762" x2="-6.096" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.762" x2="-6.096" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.508" x2="-5.842" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-0.508" x2="-5.842" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="0.508" x2="-6.096" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="0.508" x2="-6.096" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="0.762" x2="-6.604" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-1.27" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.27" x2="0" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.016" x2="0.254" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="4.826" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-1.27" x2="5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.016" x2="5.334" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.334" y1="1.27" x2="5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.016" x2="4.826" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.27" x2="2.794" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.794" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.016" x2="2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.27" x2="0.254" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.254" y1="1.27" x2="0" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0" y1="1.016" x2="-0.254" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.794" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="0.762" x2="-4.064" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="0.508" x2="-4.318" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="0.508" x2="-4.318" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-0.508" x2="-4.064" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.508" x2="-4.064" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.762" x2="-3.556" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.762" x2="-3.556" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.508" x2="-3.302" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.508" x2="-3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.508" x2="-3.556" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="0.508" x2="-3.556" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="0.762" x2="-4.064" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.762" x2="-1.524" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="-1.778" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.508" x2="-1.524" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.508" x2="-1.524" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.762" x2="-1.016" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.762" x2="-1.016" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.508" x2="-0.762" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.508" x2="-1.016" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0.508" x2="-1.016" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0.762" x2="-1.524" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.762" x2="1.016" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.508" x2="0.762" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.508" x2="0.762" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.762" y1="-0.508" x2="1.016" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.508" x2="1.016" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.762" x2="1.524" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.762" x2="1.524" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.508" x2="1.778" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-0.508" x2="1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.778" y1="0.508" x2="1.524" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.508" x2="1.524" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.762" x2="1.016" y2="0.762" width="0.1524" layer="51"/>
<wire x1="3.556" y1="0.762" x2="3.556" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.556" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.302" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.508" x2="3.556" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.508" x2="3.556" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.762" x2="4.064" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.762" x2="4.064" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.508" x2="4.318" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-0.508" x2="4.318" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.318" y1="0.508" x2="4.064" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.064" y1="0.508" x2="4.064" y2="0.762" width="0.1524" layer="51"/>
<wire x1="4.064" y1="0.762" x2="3.556" y2="0.762" width="0.1524" layer="51"/>
<wire x1="6.096" y1="0.762" x2="6.096" y2="0.508" width="0.1524" layer="51"/>
<wire x1="6.096" y1="0.508" x2="5.842" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.842" y1="0.508" x2="5.842" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-0.508" x2="6.096" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.508" x2="6.096" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.762" x2="6.604" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.762" x2="6.604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.508" x2="6.858" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="6.858" y1="-0.508" x2="6.858" y2="0.508" width="0.1524" layer="51"/>
<wire x1="6.858" y1="0.508" x2="6.604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="6.604" y1="0.508" x2="6.604" y2="0.762" width="0.1524" layer="51"/>
<wire x1="6.604" y1="0.762" x2="6.096" y2="0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-1.27" x2="7.366" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-1.27" x2="7.62" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.016" x2="7.874" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-1.27" x2="9.906" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-1.27" x2="10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.016" x2="10.414" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.414" y1="1.27" x2="10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.016" x2="9.906" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.906" y1="1.27" x2="7.874" y2="1.27" width="0.1524" layer="21"/>
<wire x1="7.874" y1="1.27" x2="7.62" y2="1.016" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.016" x2="7.366" y2="1.27" width="0.1524" layer="21"/>
<wire x1="7.366" y1="1.27" x2="5.334" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0.762" x2="8.636" y2="0.508" width="0.1524" layer="51"/>
<wire x1="8.636" y1="0.508" x2="8.382" y2="0.508" width="0.1524" layer="51"/>
<wire x1="8.382" y1="0.508" x2="8.382" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-0.508" x2="8.636" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-0.508" x2="8.636" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-0.762" x2="9.144" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="9.144" y1="-0.762" x2="9.144" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="9.144" y1="-0.508" x2="9.398" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="9.398" y1="-0.508" x2="9.398" y2="0.508" width="0.1524" layer="51"/>
<wire x1="9.398" y1="0.508" x2="9.144" y2="0.508" width="0.1524" layer="51"/>
<wire x1="9.144" y1="0.508" x2="9.144" y2="0.762" width="0.1524" layer="51"/>
<wire x1="9.144" y1="0.762" x2="8.636" y2="0.762" width="0.1524" layer="51"/>
<wire x1="11.176" y1="0.762" x2="11.176" y2="0.508" width="0.1524" layer="51"/>
<wire x1="11.176" y1="0.508" x2="10.922" y2="0.508" width="0.1524" layer="51"/>
<wire x1="10.922" y1="0.508" x2="10.922" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="10.922" y1="-0.508" x2="11.176" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="11.176" y1="-0.508" x2="11.176" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="11.176" y1="-0.762" x2="11.684" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="11.684" y1="-0.762" x2="11.684" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="11.684" y1="-0.508" x2="11.938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="11.938" y1="-0.508" x2="11.938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="11.938" y1="0.508" x2="11.684" y2="0.508" width="0.1524" layer="51"/>
<wire x1="11.684" y1="0.508" x2="11.684" y2="0.762" width="0.1524" layer="51"/>
<wire x1="11.684" y1="0.762" x2="11.176" y2="0.762" width="0.1524" layer="51"/>
<wire x1="12.954" y1="-1.27" x2="14.986" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.016" x2="12.446" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.954" y1="1.27" x2="12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="12.446" y1="1.27" x2="10.414" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.016" x2="12.954" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.446" y1="-1.27" x2="12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-1.27" x2="12.446" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.716" y1="0.762" x2="13.716" y2="0.508" width="0.1524" layer="51"/>
<wire x1="13.716" y1="0.508" x2="13.462" y2="0.508" width="0.1524" layer="51"/>
<wire x1="13.462" y1="0.508" x2="13.462" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="13.462" y1="-0.508" x2="13.716" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="13.716" y1="-0.508" x2="13.716" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="13.716" y1="-0.762" x2="14.224" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="14.224" y1="-0.762" x2="14.224" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="14.224" y1="-0.508" x2="14.478" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="14.478" y1="-0.508" x2="14.478" y2="0.508" width="0.1524" layer="51"/>
<wire x1="14.478" y1="0.508" x2="14.224" y2="0.508" width="0.1524" layer="51"/>
<wire x1="14.224" y1="0.508" x2="14.224" y2="0.762" width="0.1524" layer="51"/>
<wire x1="14.224" y1="0.762" x2="13.716" y2="0.762" width="0.1524" layer="51"/>
<wire x1="17.526" y1="-1.27" x2="17.78" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.016" x2="18.034" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.034" y1="-1.27" x2="20.066" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.066" y1="-1.27" x2="20.32" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.016" x2="20.574" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.574" y1="-1.27" x2="22.606" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.606" y1="-1.27" x2="22.86" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.016" x2="23.114" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.114" y1="1.27" x2="22.86" y2="1.016" width="0.1524" layer="21"/>
<wire x1="22.86" y1="1.016" x2="22.606" y2="1.27" width="0.1524" layer="21"/>
<wire x1="22.606" y1="1.27" x2="20.574" y2="1.27" width="0.1524" layer="21"/>
<wire x1="20.574" y1="1.27" x2="20.32" y2="1.016" width="0.1524" layer="21"/>
<wire x1="20.32" y1="1.016" x2="20.066" y2="1.27" width="0.1524" layer="21"/>
<wire x1="20.066" y1="1.27" x2="18.034" y2="1.27" width="0.1524" layer="21"/>
<wire x1="18.034" y1="1.27" x2="17.78" y2="1.016" width="0.1524" layer="21"/>
<wire x1="17.78" y1="1.016" x2="17.526" y2="1.27" width="0.1524" layer="21"/>
<wire x1="16.256" y1="0.762" x2="16.256" y2="0.508" width="0.1524" layer="51"/>
<wire x1="16.256" y1="0.508" x2="16.002" y2="0.508" width="0.1524" layer="51"/>
<wire x1="16.002" y1="0.508" x2="16.002" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="16.002" y1="-0.508" x2="16.256" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="16.256" y1="-0.508" x2="16.256" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="16.256" y1="-0.762" x2="16.764" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="16.764" y1="-0.762" x2="16.764" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="16.764" y1="-0.508" x2="17.018" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="17.018" y1="-0.508" x2="17.018" y2="0.508" width="0.1524" layer="51"/>
<wire x1="17.018" y1="0.508" x2="16.764" y2="0.508" width="0.1524" layer="51"/>
<wire x1="16.764" y1="0.508" x2="16.764" y2="0.762" width="0.1524" layer="51"/>
<wire x1="16.764" y1="0.762" x2="16.256" y2="0.762" width="0.1524" layer="51"/>
<wire x1="18.796" y1="0.762" x2="18.796" y2="0.508" width="0.1524" layer="51"/>
<wire x1="18.796" y1="0.508" x2="18.542" y2="0.508" width="0.1524" layer="51"/>
<wire x1="18.542" y1="0.508" x2="18.542" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="18.542" y1="-0.508" x2="18.796" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="18.796" y1="-0.508" x2="18.796" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="18.796" y1="-0.762" x2="19.304" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="19.304" y1="-0.762" x2="19.304" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="19.304" y1="-0.508" x2="19.558" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="19.558" y1="-0.508" x2="19.558" y2="0.508" width="0.1524" layer="51"/>
<wire x1="19.558" y1="0.508" x2="19.304" y2="0.508" width="0.1524" layer="51"/>
<wire x1="19.304" y1="0.508" x2="19.304" y2="0.762" width="0.1524" layer="51"/>
<wire x1="19.304" y1="0.762" x2="18.796" y2="0.762" width="0.1524" layer="51"/>
<wire x1="21.336" y1="0.762" x2="21.336" y2="0.508" width="0.1524" layer="51"/>
<wire x1="21.336" y1="0.508" x2="21.082" y2="0.508" width="0.1524" layer="51"/>
<wire x1="21.082" y1="0.508" x2="21.082" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="21.082" y1="-0.508" x2="21.336" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="21.336" y1="-0.508" x2="21.336" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="21.336" y1="-0.762" x2="21.844" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="21.844" y1="-0.762" x2="21.844" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="21.844" y1="-0.508" x2="22.098" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="22.098" y1="-0.508" x2="22.098" y2="0.508" width="0.1524" layer="51"/>
<wire x1="22.098" y1="0.508" x2="21.844" y2="0.508" width="0.1524" layer="51"/>
<wire x1="21.844" y1="0.508" x2="21.844" y2="0.762" width="0.1524" layer="51"/>
<wire x1="21.844" y1="0.762" x2="21.336" y2="0.762" width="0.1524" layer="51"/>
<wire x1="23.876" y1="0.762" x2="23.876" y2="0.508" width="0.1524" layer="51"/>
<wire x1="23.876" y1="0.508" x2="23.622" y2="0.508" width="0.1524" layer="51"/>
<wire x1="23.622" y1="0.508" x2="23.622" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="23.622" y1="-0.508" x2="23.876" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="23.876" y1="-0.508" x2="23.876" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="23.876" y1="-0.762" x2="24.384" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="24.384" y1="-0.762" x2="24.384" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="24.384" y1="-0.508" x2="24.638" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="24.638" y1="-0.508" x2="24.638" y2="0.508" width="0.1524" layer="51"/>
<wire x1="24.638" y1="0.508" x2="24.384" y2="0.508" width="0.1524" layer="51"/>
<wire x1="24.384" y1="0.508" x2="24.384" y2="0.762" width="0.1524" layer="51"/>
<wire x1="24.384" y1="0.762" x2="23.876" y2="0.762" width="0.1524" layer="51"/>
<wire x1="25.4" y1="1.27" x2="25.4" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.114" y1="-1.27" x2="25.4" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="25.4" y1="1.27" x2="23.114" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.986" y1="-1.27" x2="15.24" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.016" x2="15.494" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.24" y1="1.016" x2="14.986" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.494" y1="1.27" x2="15.24" y2="1.016" width="0.1524" layer="21"/>
<wire x1="17.526" y1="1.27" x2="15.494" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.494" y1="-1.27" x2="17.526" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.986" y1="1.27" x2="12.954" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="1.27" x2="-7.366" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="-1.27" x2="-5.334" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.27" x2="-2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.016" x2="-4.826" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-1.27" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.334" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="1.27" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="1.27" x2="-4.826" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-21.59" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-24.638" y="1.524" size="1.27" layer="21" ratio="10">1</text>
<text x="-25.4" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="22.987" y="1.524" size="1.27" layer="21" ratio="10">20</text>
<rectangle x1="-24.257" y1="0.254" x2="-24.003" y2="0.762" layer="51"/>
<rectangle x1="-24.257" y1="-0.762" x2="-24.003" y2="-0.254" layer="51"/>
<rectangle x1="-21.717" y1="0.254" x2="-21.463" y2="0.762" layer="51"/>
<rectangle x1="-21.717" y1="-0.762" x2="-21.463" y2="-0.254" layer="51"/>
<rectangle x1="-19.177" y1="0.254" x2="-18.923" y2="0.762" layer="51"/>
<rectangle x1="-19.177" y1="-0.762" x2="-18.923" y2="-0.254" layer="51"/>
<rectangle x1="-16.637" y1="0.254" x2="-16.383" y2="0.762" layer="51"/>
<rectangle x1="-16.637" y1="-0.762" x2="-16.383" y2="-0.254" layer="51"/>
<rectangle x1="-14.097" y1="0.254" x2="-13.843" y2="0.762" layer="51"/>
<rectangle x1="-14.097" y1="-0.762" x2="-13.843" y2="-0.254" layer="51"/>
<rectangle x1="-11.557" y1="0.254" x2="-11.303" y2="0.762" layer="51"/>
<rectangle x1="-11.557" y1="-0.762" x2="-11.303" y2="-0.254" layer="51"/>
<rectangle x1="-9.017" y1="0.254" x2="-8.763" y2="0.762" layer="51"/>
<rectangle x1="-9.017" y1="-0.762" x2="-8.763" y2="-0.254" layer="51"/>
<rectangle x1="-6.477" y1="0.254" x2="-6.223" y2="0.762" layer="51"/>
<rectangle x1="-6.477" y1="-0.762" x2="-6.223" y2="-0.254" layer="51"/>
<rectangle x1="-3.937" y1="0.254" x2="-3.683" y2="0.762" layer="51"/>
<rectangle x1="-3.937" y1="-0.762" x2="-3.683" y2="-0.254" layer="51"/>
<rectangle x1="-1.397" y1="0.254" x2="-1.143" y2="0.762" layer="51"/>
<rectangle x1="-1.397" y1="-0.762" x2="-1.143" y2="-0.254" layer="51"/>
<rectangle x1="1.143" y1="0.254" x2="1.397" y2="0.762" layer="51"/>
<rectangle x1="1.143" y1="-0.762" x2="1.397" y2="-0.254" layer="51"/>
<rectangle x1="3.683" y1="0.254" x2="3.937" y2="0.762" layer="51"/>
<rectangle x1="3.683" y1="-0.762" x2="3.937" y2="-0.254" layer="51"/>
<rectangle x1="6.223" y1="0.254" x2="6.477" y2="0.762" layer="51"/>
<rectangle x1="6.223" y1="-0.762" x2="6.477" y2="-0.254" layer="51"/>
<rectangle x1="8.763" y1="0.254" x2="9.017" y2="0.762" layer="51"/>
<rectangle x1="8.763" y1="-0.762" x2="9.017" y2="-0.254" layer="51"/>
<rectangle x1="11.303" y1="0.254" x2="11.557" y2="0.762" layer="51"/>
<rectangle x1="11.303" y1="-0.762" x2="11.557" y2="-0.254" layer="51"/>
<rectangle x1="13.843" y1="0.254" x2="14.097" y2="0.762" layer="51"/>
<rectangle x1="13.843" y1="-0.762" x2="14.097" y2="-0.254" layer="51"/>
<rectangle x1="16.383" y1="0.254" x2="16.637" y2="0.762" layer="51"/>
<rectangle x1="16.383" y1="-0.762" x2="16.637" y2="-0.254" layer="51"/>
<rectangle x1="18.923" y1="0.254" x2="19.177" y2="0.762" layer="51"/>
<rectangle x1="18.923" y1="-0.762" x2="19.177" y2="-0.254" layer="51"/>
<rectangle x1="21.463" y1="0.254" x2="21.717" y2="0.762" layer="51"/>
<rectangle x1="21.463" y1="-0.762" x2="21.717" y2="-0.254" layer="51"/>
<rectangle x1="24.003" y1="0.254" x2="24.257" y2="0.762" layer="51"/>
<rectangle x1="24.003" y1="-0.762" x2="24.257" y2="-0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="FE20" urn="urn:adsk.eagle:package:8196/1" type="box" library_version="2">
<description>FEMALE HEADER</description>
<packageinstances>
<packageinstance name="FE20"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="FE20-1" urn="urn:adsk.eagle:symbol:8146/1" library_version="2">
<wire x1="3.81" y1="-27.94" x2="-1.27" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="1.905" y1="-19.685" x2="1.905" y2="-20.955" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-22.225" x2="1.905" y2="-23.495" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-24.765" x2="1.905" y2="-26.035" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-14.605" x2="1.905" y2="-15.875" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-17.145" x2="1.905" y2="-18.415" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-9.525" x2="1.905" y2="-10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-12.065" x2="1.905" y2="-13.335" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="10.795" x2="1.905" y2="9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="18.415" x2="1.905" y2="17.145" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="15.875" x2="1.905" y2="14.605" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="13.335" x2="1.905" y2="12.065" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.27" y1="25.4" x2="-1.27" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-27.94" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="25.4" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="1.905" y1="23.495" x2="1.905" y2="22.225" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="20.955" x2="1.905" y2="19.685" width="0.254" layer="94" curve="-180" cap="flat"/>
<text x="-1.27" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="26.162" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE20-1" urn="urn:adsk.eagle:component:8239/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE20-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE20">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8196/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="HDRVR8W64P254_1X8_2159X200X810B" urn="urn:adsk.eagle:footprint:36517121/1">
<description>Single-row, 8-pin Receptacle Header (Female) Straight, 2.54 mm (0.10 in) col pitch, 8.10 mm insulator length, 21.59 X 2.00 X 8.10 mm body
&lt;p&gt;Single-row (1X8), 8-pin Receptacle Header (Female) Straight package with 2.54 mm (0.10 in) col pitch, 0.64 mm lead width, 3.00 mm tail length and 8.10 mm insulator length with overall size 21.59 X 2.00 X 8.10 mm, pin pattern - clockwise from top left&lt;/p&gt;</description>
<circle x="-8.89" y="1.6105" radius="0.25" width="0" layer="21"/>
<wire x1="10.845" y1="-1.1065" x2="-10.845" y2="-1.1065" width="0.12" layer="21"/>
<wire x1="-10.845" y1="-1.1065" x2="-10.845" y2="1.1065" width="0.12" layer="21"/>
<wire x1="-10.845" y1="1.1065" x2="10.845" y2="1.1065" width="0.12" layer="21"/>
<wire x1="10.845" y1="1.1065" x2="10.845" y2="-1.1065" width="0.12" layer="21"/>
<wire x1="10.845" y1="-1.05" x2="-10.845" y2="-1.05" width="0.12" layer="51"/>
<wire x1="-10.845" y1="-1.05" x2="-10.845" y2="1.05" width="0.12" layer="51"/>
<wire x1="-10.845" y1="1.05" x2="10.845" y2="1.05" width="0.12" layer="51"/>
<wire x1="10.845" y1="1.05" x2="10.845" y2="-1.05" width="0.12" layer="51"/>
<pad name="1" x="-8.89" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="2" x="-6.35" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="3" x="-3.81" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="4" x="-1.27" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="5" x="1.27" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="6" x="3.81" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="7" x="6.35" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="8" x="8.89" y="0" drill="1.1051" diameter="1.7051"/>
<text x="0" y="2.4956" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.7415" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="1X08" urn="urn:adsk.eagle:footprint:22262/1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.2362" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
<package name="1X08/90" urn="urn:adsk.eagle:footprint:22261/1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-10.795" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="12.065" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="HDRVR8W64P254_1X8_2159X200X810B" urn="urn:adsk.eagle:package:36517119/1" type="model">
<description>Single-row, 8-pin Receptacle Header (Female) Straight, 2.54 mm (0.10 in) col pitch, 8.10 mm insulator length, 21.59 X 2.00 X 8.10 mm body
&lt;p&gt;Single-row (1X8), 8-pin Receptacle Header (Female) Straight package with 2.54 mm (0.10 in) col pitch, 0.64 mm lead width, 3.00 mm tail length and 8.10 mm insulator length with overall size 21.59 X 2.00 X 8.10 mm, pin pattern - clockwise from top left&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="HDRVR8W64P254_1X8_2159X200X810B"/>
</packageinstances>
</package3d>
<package3d name="1X08" urn="urn:adsk.eagle:package:22409/2" type="model">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X08"/>
</packageinstances>
</package3d>
<package3d name="1X08/90" urn="urn:adsk.eagle:package:22413/2" type="model">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X08/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD8">
<wire x1="-6.35" y1="-10.16" x2="1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="12.7" x2="-6.35" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="12.7" x2="-6.35" y2="-10.16" width="0.4064" layer="94"/>
<text x="-6.35" y="13.335" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X8" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X08">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22409/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="67" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X08/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22413/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
</technology>
</technologies>
</device>
<device name="1X08/FE" package="HDRVR8W64P254_1X8_2159X200X810B">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:36517119/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper" urn="urn:adsk.eagle:library:252">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SJ_2W" urn="urn:adsk.eagle:footprint:15438/1" library_version="2">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="3.175" y1="-1.524" x2="-3.175" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.524" x2="3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.429" y1="1.27" x2="-3.175" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.429" y1="-1.27" x2="-3.175" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="3.175" y1="-1.524" x2="3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="3.429" y1="-1.27" x2="3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.524" x2="3.175" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0" x2="-3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0.762" x2="0" y2="1.397" width="0.1524" layer="51"/>
<wire x1="0" y1="-1.397" x2="0" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.127" x2="2.032" y2="-0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<wire x1="-2.032" y1="-0.127" x2="-2.032" y2="0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-2.54" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="0" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="3" x="2.54" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="-3.429" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="-0.508" y1="-0.762" x2="0.508" y2="0.762" layer="51"/>
</package>
<package name="SJ_2" urn="urn:adsk.eagle:footprint:15439/1" library_version="2">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="2.159" y1="-1.016" x2="-2.159" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="0.762" x2="-2.159" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="-0.762" x2="-2.159" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="-1.016" x2="2.413" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-0.762" x2="-2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.016" x2="2.159" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0" x2="-2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0.762" x2="0" y2="1.016" width="0.1524" layer="51"/>
<wire x1="0" y1="-1.016" x2="0" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.127" x2="1.016" y2="-0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<wire x1="-1.016" y1="-0.127" x2="-1.016" y2="0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-1.524" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="2" x="0" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="3" x="1.524" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<text x="-2.413" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="-0.508" y1="-0.762" x2="0.508" y2="0.762" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="SJ_2W" urn="urn:adsk.eagle:package:15476/1" type="box" library_version="2">
<description>Solder jumper</description>
<packageinstances>
<packageinstance name="SJ_2W"/>
</packageinstances>
</package3d>
<package3d name="SJ_2" urn="urn:adsk.eagle:package:15474/1" type="box" library_version="2">
<description>Solder jumper</description>
<packageinstances>
<packageinstance name="SJ_2"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="SJ_2" urn="urn:adsk.eagle:symbol:15437/1" library_version="2">
<wire x1="-0.635" y1="-1.397" x2="0.635" y2="-1.397" width="1.27" layer="94" curve="180" cap="flat"/>
<wire x1="-0.635" y1="1.397" x2="0.635" y2="1.397" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="2.54" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.27" y1="-0.635" x2="1.27" y2="0.635" layer="94"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SJ2W" urn="urn:adsk.eagle:component:15505/2" prefix="SJ" uservalue="yes" library_version="2">
<description>SMD solder &lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="SJ_2" x="0" y="0"/>
</gates>
<devices>
<device name="W" package="SJ_2W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15476/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="SJ_2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15474/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SnapEDA Library" urn="urn:adsk.eagle:library:36272931">
<packages>
<package name="MOLEX_436500603" urn="urn:adsk.eagle:footprint:37003282/1" library_version="33">
<rectangle x1="-0.8362" y1="-0.8362" x2="0.8362" y2="0.8362" layer="29"/>
<rectangle x1="-0.8362" y1="-0.8362" x2="0.8362" y2="0.8362" layer="30"/>
<rectangle x1="1.62" y1="-2.27" x2="4.07" y2="-0.67" layer="41"/>
<rectangle x1="-19.07" y1="-2.27" x2="-16.62" y2="-0.67" layer="41"/>
<rectangle x1="-19.07" y1="-2.27" x2="-16.62" y2="-0.67" layer="43"/>
<rectangle x1="1.62" y1="-2.27" x2="4.07" y2="-0.67" layer="43"/>
<circle x="-3" y="0" radius="0.4181" width="0.8362" layer="29"/>
<circle x="-3" y="0" radius="0.4181" width="0.8362" layer="30"/>
<circle x="-17.15" y="-4.32" radius="0.7656" width="1.5312" layer="29"/>
<circle x="-17.15" y="-4.32" radius="0.7656" width="1.5312" layer="30"/>
<circle x="2.15" y="-4.32" radius="0.7656" width="1.5312" layer="29"/>
<circle x="2.15" y="-4.32" radius="0.7656" width="1.5312" layer="30"/>
<circle x="-6" y="0" radius="0.4181" width="0.8362" layer="29"/>
<circle x="-6" y="0" radius="0.4181" width="0.8362" layer="30"/>
<circle x="-9" y="0" radius="0.4181" width="0.8362" layer="29"/>
<circle x="-9" y="0" radius="0.4181" width="0.8362" layer="30"/>
<circle x="-12" y="0" radius="0.4181" width="0.8362" layer="29"/>
<circle x="-12" y="0" radius="0.4181" width="0.8362" layer="30"/>
<circle x="-15" y="0" radius="0.4181" width="0.8362" layer="29"/>
<circle x="-15" y="0" radius="0.4181" width="0.8362" layer="30"/>
<wire x1="3.32" y1="-8.92" x2="-18.32" y2="-8.92" width="0.127" layer="21"/>
<wire x1="-18.32" y1="0.98" x2="3.32" y2="0.98" width="0.127" layer="51"/>
<wire x1="3.32" y1="-8.92" x2="-18.32" y2="-8.92" width="0.127" layer="51"/>
<wire x1="3.32" y1="-8.92" x2="3.32" y2="0.98" width="0.127" layer="51"/>
<wire x1="-18.32" y1="-8.92" x2="-18.32" y2="0.98" width="0.127" layer="51"/>
<wire x1="-19.59" y1="2.25" x2="4.59" y2="2.25" width="0.05" layer="39"/>
<wire x1="4.59" y1="-10.19" x2="-19.59" y2="-10.19" width="0.05" layer="39"/>
<wire x1="4.59" y1="-10.19" x2="4.59" y2="2.25" width="0.05" layer="39"/>
<wire x1="-19.59" y1="-10.19" x2="-19.59" y2="2.25" width="0.05" layer="39"/>
<wire x1="-0.4" y1="2.05" x2="0.4" y2="2.05" width="0.127" layer="51"/>
<wire x1="0.4" y1="2.05" x2="0" y2="1.25" width="0.127" layer="51"/>
<wire x1="0" y1="1.25" x2="-0.4" y2="2.05" width="0.127" layer="51"/>
<wire x1="-0.4" y1="2.05" x2="0.4" y2="2.05" width="0.127" layer="21"/>
<wire x1="0.4" y1="2.05" x2="0" y2="1.25" width="0.127" layer="21"/>
<wire x1="0" y1="1.25" x2="-0.4" y2="2.05" width="0.127" layer="21"/>
<wire x1="-18.32" y1="0.98" x2="-16.11" y2="0.98" width="0.127" layer="21"/>
<wire x1="3.32" y1="0.98" x2="1.11" y2="0.98" width="0.127" layer="21"/>
<wire x1="-18.32" y1="0.98" x2="-18.32" y2="-0.55" width="0.127" layer="21"/>
<wire x1="3.32" y1="0.98" x2="3.32" y2="-0.55" width="0.127" layer="21"/>
<wire x1="-18.32" y1="-5.65" x2="-18.32" y2="-8.92" width="0.127" layer="21"/>
<wire x1="3.32" y1="-8.92" x2="3.32" y2="-5.65" width="0.127" layer="21"/>
<wire x1="3.32" y1="-14.48" x2="-18.32" y2="-14.48" width="0.127" layer="51"/>
<text x="-18.325" y="6.3368" size="1.27" layer="25">&gt;NAME</text>
<text x="-18.325" y="4.7668" size="1.27" layer="27">&gt;VALUE</text>
<text x="-18.14" y="-13.415" size="0.75" layer="51" rot="R90">MAX</text>
<text x="-18" y="-14.75" size="1.27" layer="51" align="top-left">PCB Edge</text>
<text x="-18.325" y="3.75" size="0.5" layer="51">PTH D1.02 +/-0.05</text>
<text x="-18.325" y="3" size="0.5" layer="51">PTH D2.41 +/-0.05</text>
<pad name="1" x="0" y="0" drill="1.02" diameter="1.52" shape="square" stop="no"/>
<pad name="2" x="-3" y="0" drill="1.02" diameter="1.52" stop="no"/>
<pad name="S2" x="-17.15" y="-4.32" drill="2.41" diameter="2.91" stop="no"/>
<pad name="S1" x="2.15" y="-4.32" drill="2.41" diameter="2.91" stop="no"/>
<pad name="3" x="-6" y="0" drill="1.02" diameter="1.52" stop="no"/>
<pad name="4" x="-9" y="0" drill="1.02" diameter="1.52" stop="no"/>
<pad name="5" x="-12" y="0" drill="1.02" diameter="1.52" stop="no"/>
<pad name="6" x="-15" y="0" drill="1.02" diameter="1.52" stop="no"/>
</package>
<package name="CAPC1608X90N" urn="urn:adsk.eagle:footprint:37021507/1" library_version="35">
<text x="-1.46" y="-0.8" size="0.5" layer="27" align="top-left">&gt;VALUE</text>
<text x="-1.46" y="0.8" size="0.5" layer="25">&gt;NAME</text>
<wire x1="0.85" y1="-0.45" x2="-0.85" y2="-0.45" width="0.127" layer="51"/>
<wire x1="0.85" y1="0.45" x2="-0.85" y2="0.45" width="0.127" layer="51"/>
<wire x1="0.85" y1="-0.45" x2="0.85" y2="0.45" width="0.127" layer="51"/>
<wire x1="-0.85" y1="-0.45" x2="-0.85" y2="0.45" width="0.127" layer="51"/>
<wire x1="-1.465" y1="-0.7" x2="1.465" y2="-0.7" width="0.05" layer="39"/>
<wire x1="-1.465" y1="0.7" x2="1.465" y2="0.7" width="0.05" layer="39"/>
<wire x1="-1.465" y1="-0.7" x2="-1.465" y2="0.7" width="0.05" layer="39"/>
<wire x1="1.465" y1="-0.7" x2="1.465" y2="0.7" width="0.05" layer="39"/>
<smd name="1" x="-0.78" y="0" dx="0.87" dy="0.93" layer="1"/>
<smd name="2" x="0.78" y="0" dx="0.87" dy="0.93" layer="1"/>
</package>
</packages>
<packages3d>
<package3d name="MOLEX_436500603" urn="urn:adsk.eagle:package:37003284/2" type="model" library_version="33">
<packageinstances>
<packageinstance name="MOLEX_436500603"/>
</packageinstances>
</package3d>
<package3d name="CAPC1608X90N" urn="urn:adsk.eagle:package:37021508/2" type="model" library_version="35">
<packageinstances>
<packageinstance name="CAPC1608X90N"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="436500603" urn="urn:adsk.eagle:symbol:37003281/1" library_version="33">
<wire x1="0" y1="11.43" x2="1.27" y2="12.7" width="0.254" layer="94"/>
<wire x1="0" y1="11.43" x2="0" y2="10.16" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="0" y2="-11.43" width="0.254" layer="94"/>
<wire x1="0" y1="-11.43" x2="1.27" y2="-12.7" width="0.254" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="12.7" x2="1.27" y2="12.7" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="1.905" y2="10.16" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="1.905" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.905" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<text x="0" y="13.97" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="0.635" y1="9.8425" x2="2.2225" y2="10.4775" layer="94"/>
<rectangle x1="0.635" y1="7.3025" x2="2.2225" y2="7.9375" layer="94"/>
<rectangle x1="0.635" y1="4.7625" x2="2.2225" y2="5.3975" layer="94"/>
<rectangle x1="0.635" y1="2.2225" x2="2.2225" y2="2.8575" layer="94"/>
<rectangle x1="0.635" y1="-0.3175" x2="2.2225" y2="0.3175" layer="94"/>
<rectangle x1="0.635" y1="-2.8575" x2="2.2225" y2="-2.2225" layer="94"/>
<pin name="1" x="-5.08" y="10.16" length="middle" direction="pas"/>
<pin name="2" x="-5.08" y="7.62" length="middle" direction="pas"/>
<pin name="SHIELD1" x="-5.08" y="-7.62" length="middle" direction="pas"/>
<pin name="SHIELD2" x="-5.08" y="-10.16" length="middle" direction="pas"/>
<pin name="3" x="-5.08" y="5.08" length="middle" direction="pas"/>
<pin name="4" x="-5.08" y="2.54" length="middle" direction="pas"/>
<pin name="5" x="-5.08" y="0" length="middle" direction="pas"/>
<pin name="6" x="-5.08" y="-2.54" length="middle" direction="pas"/>
</symbol>
<symbol name="CL10A105KO8NNNC" urn="urn:adsk.eagle:symbol:37021506/1" library_version="35">
<text x="0" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-1.905" x2="0.635" y2="1.905" layer="94"/>
<rectangle x1="1.905" y1="-1.905" x2="2.54" y2="1.905" layer="94"/>
<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="436500603" urn="urn:adsk.eagle:component:37003285/2" prefix="J" library_version="33">
<gates>
<gate name="G$1" symbol="436500603" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOLEX_436500603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="SHIELD1" pad="S1"/>
<connect gate="G$1" pin="SHIELD2" pad="S2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37003284/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Molex"/>
<attribute name="MAXIMUM_PACKAGE_HEIGHT" value="5.57 mm"/>
<attribute name="PARTREV" value="F3"/>
<attribute name="STANDARD" value="Manufacturer Recommendations"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CL10A105KO8NNNC" urn="urn:adsk.eagle:component:37021509/2" prefix="C" library_version="35">
<gates>
<gate name="G$1" symbol="CL10A105KO8NNNC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC1608X90N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37021508/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
<clearance class="0" value="0.205"/>
</class>
</classes>
<parts>
<part name="SV1" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE20-1" device="" package3d_urn="urn:adsk.eagle:package:8196/1" override_package3d_urn="urn:adsk.eagle:package:36516669/2" override_package_urn="urn:adsk.eagle:footprint:8147/1"/>
<part name="GND16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SV2" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE20-1" device="" package3d_urn="urn:adsk.eagle:package:8196/1" override_package3d_urn="urn:adsk.eagle:package:36516708/2" override_package_urn="urn:adsk.eagle:footprint:8147/1"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X8" device="1X08/FE" package3d_urn="urn:adsk.eagle:package:36517119/1"/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X8" device="1X08/FE" package3d_urn="urn:adsk.eagle:package:36517119/1"/>
<part name="JP3" library="pinhead" deviceset="PINHD-1X8" device="1X08/FE" package3d_urn="urn:adsk.eagle:package:36517119/1"/>
<part name="JP4" library="pinhead" deviceset="PINHD-1X8" device="1X08/FE" package3d_urn="urn:adsk.eagle:package:36517119/1"/>
<part name="SJ1" library="jumper" library_urn="urn:adsk.eagle:library:252" deviceset="SJ2W" device="" package3d_urn="urn:adsk.eagle:package:15474/1" override_package3d_urn="urn:adsk.eagle:package:37023970/2" override_package_urn="urn:adsk.eagle:footprint:15439/1"/>
<part name="SJ2" library="jumper" library_urn="urn:adsk.eagle:library:252" deviceset="SJ2W" device="" package3d_urn="urn:adsk.eagle:package:15474/1" override_package3d_urn="urn:adsk.eagle:package:37023969/2" override_package_urn="urn:adsk.eagle:footprint:15439/1"/>
<part name="SJ3" library="jumper" library_urn="urn:adsk.eagle:library:252" deviceset="SJ2W" device="" package3d_urn="urn:adsk.eagle:package:15474/1" override_package3d_urn="urn:adsk.eagle:package:37023968/2" override_package_urn="urn:adsk.eagle:footprint:15439/1"/>
<part name="SJ4" library="jumper" library_urn="urn:adsk.eagle:library:252" deviceset="SJ2W" device="" package3d_urn="urn:adsk.eagle:package:15474/1" override_package3d_urn="urn:adsk.eagle:package:37023963/2" override_package_urn="urn:adsk.eagle:footprint:15439/1"/>
<part name="J1" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="436500603" device="" package3d_urn="urn:adsk.eagle:package:37003284/2"/>
<part name="C1" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="CL10A105KO8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37021508/2"/>
<part name="C2" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="CL10A105KO8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37021508/2"/>
<part name="C3" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="CL10A105KO8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37021508/2"/>
<part name="C4" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="CL10A105KO8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37021508/2"/>
<part name="C5" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="CL10A105KO8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37021508/2"/>
<part name="C6" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="CL10A105KO8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37021508/2"/>
<part name="JP5" library="pinhead" deviceset="PINHD-1X8" device="1X08/FE" package3d_urn="urn:adsk.eagle:package:36517119/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SV1" gate="G$1" x="177.8" y="22.86" smashed="yes" rot="MR0">
<attribute name="VALUE" x="205.74" y="16.51" size="1.778" layer="96" rot="MR90"/>
<attribute name="NAME" x="140.462" y="21.59" size="1.778" layer="95" rot="MR90"/>
</instance>
<instance part="GND16" gate="1" x="160.02" y="-10.16" smashed="yes">
<attribute name="VALUE" x="157.48" y="-12.7" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="G$1" x="238.76" y="22.86" smashed="yes">
<attribute name="VALUE" x="210.82" y="16.51" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="235.458" y="21.59" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="269.24" y="-10.16" smashed="yes">
<attribute name="VALUE" x="266.7" y="-12.7" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="1" x="256.54" y="-12.7" smashed="yes" rot="R180">
<attribute name="VALUE" x="259.08" y="-7.62" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="P+2" gate="1" x="116.84" y="106.68" smashed="yes">
<attribute name="VALUE" x="114.3" y="101.6" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND2" gate="1" x="142.24" y="5.08" smashed="yes">
<attribute name="VALUE" x="139.7" y="2.54" size="1.778" layer="96"/>
</instance>
<instance part="JP1" gate="A" x="119.38" y="93.98" smashed="yes" rot="R180">
<attribute name="NAME" x="130.81" y="106.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="125.73" y="106.68" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="JP2" gate="A" x="119.38" y="71.12" smashed="yes" rot="R180">
<attribute name="NAME" x="130.81" y="80.645" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="125.73" y="83.82" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="JP3" gate="A" x="119.38" y="48.26" smashed="yes" rot="R180">
<attribute name="NAME" x="128.27" y="57.785" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="125.73" y="60.96" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="JP4" gate="A" x="119.38" y="25.4" smashed="yes" rot="R180">
<attribute name="NAME" x="128.27" y="34.925" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="125.73" y="38.1" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SJ1" gate="G$1" x="137.16" y="83.82" smashed="yes" rot="R180">
<attribute name="NAME" x="134.62" y="83.439" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="134.62" y="85.725" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SJ2" gate="G$1" x="137.16" y="60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="134.62" y="60.579" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="134.62" y="62.865" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SJ3" gate="G$1" x="137.16" y="38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="134.62" y="37.719" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="134.62" y="40.005" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SJ4" gate="G$1" x="137.16" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="134.62" y="14.859" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="134.62" y="17.145" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="J1" gate="G$1" x="292.1" y="35.56" smashed="yes">
<attribute name="NAME" x="292.1" y="49.53" size="1.778" layer="95"/>
<attribute name="VALUE" x="292.1" y="20.32" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="104.14" y="83.82" smashed="yes">
<attribute name="NAME" x="104.14" y="87.63" size="1.778" layer="95"/>
<attribute name="VALUE" x="91.44" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="104.14" y="60.96" smashed="yes">
<attribute name="NAME" x="104.14" y="64.77" size="1.778" layer="95"/>
<attribute name="VALUE" x="91.44" y="55.88" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="104.14" y="38.1" smashed="yes">
<attribute name="NAME" x="104.14" y="41.91" size="1.778" layer="95"/>
<attribute name="VALUE" x="91.44" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="104.14" y="15.24" smashed="yes">
<attribute name="NAME" x="104.14" y="19.05" size="1.778" layer="95"/>
<attribute name="VALUE" x="91.44" y="10.16" size="1.778" layer="96"/>
</instance>
<instance part="C5" gate="G$1" x="274.32" y="20.32" smashed="yes">
<attribute name="NAME" x="274.32" y="24.13" size="1.778" layer="95"/>
<attribute name="VALUE" x="274.32" y="15.24" size="1.778" layer="96"/>
</instance>
<instance part="C6" gate="G$1" x="274.32" y="7.62" smashed="yes">
<attribute name="NAME" x="274.32" y="11.43" size="1.778" layer="95"/>
<attribute name="VALUE" x="274.32" y="2.54" size="1.778" layer="96"/>
</instance>
<instance part="JP5" gate="A" x="320.04" y="35.56" smashed="yes">
<attribute name="NAME" x="311.15" y="26.035" size="1.778" layer="95"/>
<attribute name="VALUE" x="313.69" y="22.86" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
<bus name="SPI:CLK,CS[0..5],MISO,MOSI">
<segment>
<wire x1="149.86" y1="99.06" x2="149.86" y2="0" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND16" gate="1" pin="GND"/>
<pinref part="SV1" gate="G$1" pin="18"/>
<wire x1="160.02" y1="-7.62" x2="160.02" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-5.08" x2="160.02" y2="15.24" width="0.1524" layer="91"/>
<wire x1="160.02" y1="15.24" x2="160.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="160.02" y1="40.64" x2="170.18" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="8"/>
<wire x1="170.18" y1="15.24" x2="160.02" y2="15.24" width="0.1524" layer="91"/>
<junction x="160.02" y="15.24"/>
<wire x1="160.02" y1="-5.08" x2="167.64" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-5.08" x2="167.64" y2="-15.24" width="0.1524" layer="91"/>
<junction x="160.02" y="-5.08"/>
<pinref part="SV2" gate="G$1" pin="18"/>
<wire x1="246.38" y1="40.64" x2="218.44" y2="40.64" width="0.1524" layer="91"/>
<wire x1="218.44" y1="40.64" x2="218.44" y2="15.24" width="0.1524" layer="91"/>
<wire x1="218.44" y1="15.24" x2="218.44" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-15.24" x2="193.04" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="8"/>
<wire x1="193.04" y1="-15.24" x2="167.64" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="246.38" y1="15.24" x2="218.44" y2="15.24" width="0.1524" layer="91"/>
<junction x="218.44" y="15.24"/>
<label x="162.56" y="15.24" size="1.778" layer="95"/>
<label x="162.56" y="27.94" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="3"/>
<pinref part="SV1" gate="G$1" pin="13"/>
<wire x1="193.04" y1="27.94" x2="170.18" y2="27.94" width="0.1524" layer="91"/>
<wire x1="193.04" y1="2.54" x2="193.04" y2="27.94" width="0.1524" layer="91"/>
<wire x1="193.04" y1="2.54" x2="170.18" y2="2.54" width="0.1524" layer="91"/>
<wire x1="193.04" y1="2.54" x2="193.04" y2="-15.24" width="0.1524" layer="91"/>
<junction x="193.04" y="2.54"/>
<junction x="193.04" y="-15.24"/>
<wire x1="218.44" y1="-15.24" x2="276.86" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-15.24" x2="276.86" y2="-5.08" width="0.1524" layer="91"/>
<junction x="218.44" y="-15.24"/>
<pinref part="SV2" gate="G$1" pin="3"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="246.38" y1="2.54" x2="269.24" y2="2.54" width="0.1524" layer="91"/>
<wire x1="269.24" y1="2.54" x2="269.24" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="13"/>
<wire x1="269.24" y1="-5.08" x2="269.24" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="246.38" y1="27.94" x2="269.24" y2="27.94" width="0.1524" layer="91"/>
<wire x1="269.24" y1="27.94" x2="269.24" y2="20.32" width="0.1524" layer="91"/>
<junction x="269.24" y="2.54"/>
<wire x1="269.24" y1="20.32" x2="269.24" y2="7.62" width="0.1524" layer="91"/>
<wire x1="269.24" y1="7.62" x2="269.24" y2="2.54" width="0.1524" layer="91"/>
<wire x1="269.24" y1="27.94" x2="281.94" y2="27.94" width="0.1524" layer="91"/>
<junction x="269.24" y="27.94"/>
<wire x1="281.94" y1="27.94" x2="281.94" y2="35.56" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="287.02" y1="35.56" x2="281.94" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="271.78" y1="20.32" x2="269.24" y2="20.32" width="0.1524" layer="91"/>
<junction x="269.24" y="20.32"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="271.78" y1="7.62" x2="269.24" y2="7.62" width="0.1524" layer="91"/>
<junction x="269.24" y="7.62"/>
<wire x1="276.86" y1="-5.08" x2="269.24" y2="-5.08" width="0.1524" layer="91"/>
<junction x="269.24" y="-5.08"/>
<pinref part="JP5" gate="A" pin="5"/>
<wire x1="317.5" y1="35.56" x2="287.02" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="SJ4" gate="G$1" pin="2"/>
<wire x1="142.24" y1="7.62" x2="142.24" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SJ3" gate="G$1" pin="2"/>
<wire x1="142.24" y1="15.24" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
<junction x="142.24" y="15.24"/>
<pinref part="SJ2" gate="G$1" pin="2"/>
<wire x1="142.24" y1="38.1" x2="142.24" y2="60.96" width="0.1524" layer="91"/>
<junction x="142.24" y="38.1"/>
<pinref part="SJ1" gate="G$1" pin="2"/>
<wire x1="142.24" y1="60.96" x2="142.24" y2="83.82" width="0.1524" layer="91"/>
<junction x="142.24" y="60.96"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="101.6" y1="83.82" x2="93.98" y2="83.82" width="0.1524" layer="91"/>
<wire x1="93.98" y1="83.82" x2="93.98" y2="60.96" width="0.1524" layer="91"/>
<wire x1="93.98" y1="60.96" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<wire x1="93.98" y1="38.1" x2="93.98" y2="15.24" width="0.1524" layer="91"/>
<wire x1="93.98" y1="15.24" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="7.62" x2="142.24" y2="7.62" width="0.1524" layer="91"/>
<junction x="142.24" y="7.62"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="101.6" y1="15.24" x2="93.98" y2="15.24" width="0.1524" layer="91"/>
<junction x="93.98" y="15.24"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="101.6" y1="38.1" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<junction x="93.98" y="38.1"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="101.6" y1="60.96" x2="93.98" y2="60.96" width="0.1524" layer="91"/>
<junction x="93.98" y="60.96"/>
</segment>
</net>
<net name="PIN1" class="0">
<segment>
<label x="165.1" y="45.72" size="1.778" layer="95" align="bottom-right"/>
<pinref part="SV1" gate="G$1" pin="20"/>
<wire x1="165.1" y1="45.72" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN2" class="0">
<segment>
<label x="165.1" y="43.18" size="1.778" layer="95" align="bottom-right"/>
<pinref part="SV1" gate="G$1" pin="19"/>
<wire x1="165.1" y1="43.18" x2="170.18" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN4" class="0">
<segment>
<label x="165.1" y="38.1" size="1.778" layer="95" align="bottom-right"/>
<pinref part="SV1" gate="G$1" pin="17"/>
<wire x1="165.1" y1="38.1" x2="170.18" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN5" class="0">
<segment>
<label x="165.1" y="35.56" size="1.778" layer="95" align="bottom-right"/>
<pinref part="SV1" gate="G$1" pin="16"/>
<wire x1="165.1" y1="35.56" x2="170.18" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN39" class="0">
<segment>
<label x="256.54" y="0" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="2"/>
<wire x1="256.54" y1="0" x2="246.38" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN36" class="0">
<segment>
<label x="256.54" y="7.62" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="5"/>
<wire x1="256.54" y1="7.62" x2="246.38" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN35" class="0">
<segment>
<label x="256.54" y="10.16" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="6"/>
<wire x1="256.54" y1="10.16" x2="246.38" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN20" class="0">
<segment>
<label x="165.1" y="-2.54" size="1.778" layer="95" align="bottom-right"/>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="165.1" y1="-2.54" x2="170.18" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PWM1" class="0">
<segment>
<label x="256.54" y="45.72" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="20"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="246.38" y1="45.72" x2="287.02" y2="45.72" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="1"/>
<wire x1="287.02" y1="45.72" x2="317.5" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PWM2" class="0">
<segment>
<label x="256.54" y="43.18" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="19"/>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="246.38" y1="43.18" x2="287.02" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="2"/>
<wire x1="287.02" y1="43.18" x2="317.5" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PWM3" class="0">
<segment>
<label x="256.54" y="38.1" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="17"/>
<wire x1="246.38" y1="38.1" x2="276.86" y2="38.1" width="0.1524" layer="91"/>
<wire x1="276.86" y1="38.1" x2="276.86" y2="40.64" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="276.86" y1="40.64" x2="287.02" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="3"/>
<wire x1="287.02" y1="40.64" x2="317.5" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PWM4" class="0">
<segment>
<label x="256.54" y="35.56" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="16"/>
<wire x1="246.38" y1="35.56" x2="279.4" y2="35.56" width="0.1524" layer="91"/>
<wire x1="279.4" y1="35.56" x2="279.4" y2="38.1" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="279.4" y1="38.1" x2="287.02" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="4"/>
<wire x1="287.02" y1="38.1" x2="317.5" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN26" class="0">
<segment>
<label x="256.54" y="33.02" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="15"/>
<wire x1="256.54" y1="33.02" x2="246.38" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN27" class="0">
<segment>
<label x="256.54" y="30.48" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="14"/>
<wire x1="256.54" y1="30.48" x2="246.38" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN29" class="0">
<segment>
<label x="256.54" y="25.4" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="12"/>
<wire x1="256.54" y1="25.4" x2="246.38" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN31" class="0">
<segment>
<label x="256.54" y="20.32" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="10"/>
<wire x1="256.54" y1="20.32" x2="246.38" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN32" class="0">
<segment>
<label x="256.54" y="17.78" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="9"/>
<wire x1="256.54" y1="17.78" x2="246.38" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN34" class="0">
<segment>
<label x="256.54" y="12.7" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="7"/>
<wire x1="256.54" y1="12.7" x2="246.38" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN37" class="0">
<segment>
<label x="256.54" y="5.08" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="4"/>
<wire x1="256.54" y1="5.08" x2="246.38" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN30" class="0">
<segment>
<label x="256.54" y="22.86" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="11"/>
<wire x1="256.54" y1="22.86" x2="246.38" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<wire x1="121.92" y1="50.8" x2="149.86" y2="50.8" width="0.1524" layer="91"/>
<label x="129.54" y="50.8" size="1.778" layer="95"/>
<pinref part="JP3" gate="A" pin="6"/>
</segment>
<segment>
<wire x1="149.86" y1="73.66" x2="121.92" y2="73.66" width="0.1524" layer="91"/>
<label x="127" y="73.66" size="1.778" layer="95"/>
<pinref part="JP2" gate="A" pin="6"/>
</segment>
<segment>
<wire x1="121.92" y1="96.52" x2="149.86" y2="96.52" width="0.1524" layer="91"/>
<label x="129.54" y="96.52" size="1.778" layer="95"/>
<pinref part="JP1" gate="A" pin="6"/>
</segment>
<segment>
<wire x1="149.86" y1="27.94" x2="134.62" y2="27.94" width="0.1524" layer="91"/>
<wire x1="121.92" y1="27.94" x2="134.62" y2="27.94" width="0.1524" layer="91"/>
<label x="124.46" y="27.94" size="1.778" layer="95"/>
<pinref part="JP4" gate="A" pin="6"/>
</segment>
<segment>
<wire x1="149.86" y1="10.16" x2="157.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="157.48" y1="10.16" x2="170.18" y2="10.16" width="0.1524" layer="91"/>
<label x="160.02" y="10.16" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="6"/>
</segment>
</net>
<net name="CS4" class="0">
<segment>
<wire x1="149.86" y1="25.4" x2="170.18" y2="25.4" width="0.1524" layer="91"/>
<label x="162.56" y="25.4" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="12"/>
</segment>
</net>
<net name="CS3" class="0">
<segment>
<wire x1="149.86" y1="30.48" x2="121.92" y2="30.48" width="0.1524" layer="91"/>
<label x="124.46" y="30.48" size="1.778" layer="95"/>
<pinref part="JP4" gate="A" pin="7"/>
</segment>
<segment>
<wire x1="149.86" y1="0" x2="160.02" y2="0" width="0.1524" layer="91"/>
<wire x1="160.02" y1="0" x2="170.18" y2="0" width="0.1524" layer="91"/>
<label x="162.56" y="0" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="CS2" class="0">
<segment>
<wire x1="149.86" y1="20.32" x2="170.18" y2="20.32" width="0.1524" layer="91"/>
<label x="162.56" y="20.32" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="10"/>
</segment>
<segment>
<wire x1="149.86" y1="99.06" x2="132.08" y2="99.06" width="0.1524" layer="91"/>
<wire x1="121.92" y1="99.06" x2="132.08" y2="99.06" width="0.1524" layer="91"/>
<label x="124.46" y="99.06" size="1.778" layer="95"/>
<pinref part="JP1" gate="A" pin="7"/>
</segment>
</net>
<net name="CS1" class="0">
<segment>
<wire x1="149.86" y1="17.78" x2="170.18" y2="17.78" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="9"/>
<label x="162.56" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="149.86" y1="76.2" x2="121.92" y2="76.2" width="0.1524" layer="91"/>
<label x="129.54" y="76.2" size="1.778" layer="95"/>
<pinref part="JP2" gate="A" pin="7"/>
</segment>
</net>
<net name="CS0" class="0">
<segment>
<wire x1="149.86" y1="5.08" x2="170.18" y2="5.08" width="0.1524" layer="91"/>
<label x="162.56" y="5.08" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="4"/>
</segment>
<segment>
<wire x1="149.86" y1="53.34" x2="121.92" y2="53.34" width="0.1524" layer="91"/>
<label x="129.54" y="53.34" size="1.778" layer="95"/>
<pinref part="JP3" gate="A" pin="7"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<wire x1="149.86" y1="7.62" x2="170.18" y2="7.62" width="0.1524" layer="91"/>
<label x="162.56" y="7.62" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="5"/>
</segment>
<segment>
<wire x1="121.92" y1="48.26" x2="149.86" y2="48.26" width="0.1524" layer="91"/>
<label x="129.54" y="48.26" size="1.778" layer="95"/>
<pinref part="JP3" gate="A" pin="5"/>
</segment>
<segment>
<wire x1="149.86" y1="71.12" x2="121.92" y2="71.12" width="0.1524" layer="91"/>
<label x="127" y="71.12" size="1.778" layer="95"/>
<pinref part="JP2" gate="A" pin="5"/>
</segment>
<segment>
<wire x1="121.92" y1="93.98" x2="149.86" y2="93.98" width="0.1524" layer="91"/>
<label x="129.54" y="93.98" size="1.778" layer="95"/>
<pinref part="JP1" gate="A" pin="5"/>
</segment>
<segment>
<wire x1="149.86" y1="25.4" x2="134.62" y2="25.4" width="0.1524" layer="91"/>
<wire x1="121.92" y1="25.4" x2="134.62" y2="25.4" width="0.1524" layer="91"/>
<label x="124.46" y="25.4" size="1.778" layer="95"/>
<pinref part="JP4" gate="A" pin="5"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<wire x1="149.86" y1="45.72" x2="121.92" y2="45.72" width="0.1524" layer="91"/>
<label x="129.54" y="45.72" size="1.778" layer="95"/>
<pinref part="JP3" gate="A" pin="4"/>
</segment>
<segment>
<wire x1="149.86" y1="68.58" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
<label x="129.54" y="68.58" size="1.778" layer="95"/>
<pinref part="JP2" gate="A" pin="4"/>
</segment>
<segment>
<wire x1="149.86" y1="91.44" x2="121.92" y2="91.44" width="0.1524" layer="91"/>
<label x="129.54" y="91.44" size="1.778" layer="95"/>
<pinref part="JP1" gate="A" pin="4"/>
</segment>
<segment>
<wire x1="149.86" y1="12.7" x2="170.18" y2="12.7" width="0.1524" layer="91"/>
<label x="162.56" y="12.7" size="1.778" layer="95"/>
<pinref part="SV1" gate="G$1" pin="7"/>
</segment>
<segment>
<wire x1="149.86" y1="22.86" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="121.92" y1="22.86" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
<label x="124.46" y="22.86" size="1.778" layer="95"/>
<pinref part="JP4" gate="A" pin="4"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<label x="256.54" y="-2.54" size="1.778" layer="95"/>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="256.54" y1="-2.54" x2="246.38" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="256.54" y1="-2.54" x2="256.54" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-2.54" x2="284.48" y2="-2.54" width="0.1524" layer="91"/>
<junction x="256.54" y="-2.54"/>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="287.02" y1="33.02" x2="284.48" y2="33.02" width="0.1524" layer="91"/>
<wire x1="284.48" y1="33.02" x2="284.48" y2="20.32" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="284.48" y1="20.32" x2="284.48" y2="7.62" width="0.1524" layer="91"/>
<wire x1="284.48" y1="7.62" x2="284.48" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="279.4" y1="20.32" x2="284.48" y2="20.32" width="0.1524" layer="91"/>
<junction x="284.48" y="20.32"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="279.4" y1="7.62" x2="284.48" y2="7.62" width="0.1524" layer="91"/>
<junction x="284.48" y="7.62"/>
<pinref part="JP5" gate="A" pin="6"/>
<wire x1="317.5" y1="33.02" x2="287.02" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="116.84" y1="104.14" x2="116.84" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="116.84" y1="83.82" x2="121.92" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="116.84" y1="83.82" x2="116.84" y2="60.96" width="0.1524" layer="91"/>
<wire x1="116.84" y1="60.96" x2="121.92" y2="60.96" width="0.1524" layer="91"/>
<junction x="116.84" y="83.82"/>
<pinref part="JP3" gate="A" pin="1"/>
<wire x1="116.84" y1="60.96" x2="116.84" y2="38.1" width="0.1524" layer="91"/>
<wire x1="116.84" y1="38.1" x2="121.92" y2="38.1" width="0.1524" layer="91"/>
<junction x="116.84" y="60.96"/>
<pinref part="JP4" gate="A" pin="1"/>
<wire x1="116.84" y1="38.1" x2="116.84" y2="15.24" width="0.1524" layer="91"/>
<wire x1="116.84" y1="15.24" x2="121.92" y2="15.24" width="0.1524" layer="91"/>
<junction x="116.84" y="38.1"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="121.92" y1="83.82" x2="109.22" y2="83.82" width="0.1524" layer="91"/>
<junction x="121.92" y="83.82"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="121.92" y1="60.96" x2="109.22" y2="60.96" width="0.1524" layer="91"/>
<junction x="121.92" y="60.96"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="121.92" y1="38.1" x2="109.22" y2="38.1" width="0.1524" layer="91"/>
<junction x="121.92" y="38.1"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="121.92" y1="15.24" x2="109.22" y2="15.24" width="0.1524" layer="91"/>
<junction x="121.92" y="15.24"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="15"/>
<wire x1="170.18" y1="33.02" x2="165.1" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="14"/>
<wire x1="170.18" y1="30.48" x2="165.1" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP4" gate="A" pin="2"/>
<pinref part="SJ4" gate="G$1" pin="1"/>
<wire x1="137.16" y1="10.16" x2="132.08" y2="10.16" width="0.1524" layer="91"/>
<wire x1="132.08" y1="10.16" x2="132.08" y2="17.78" width="0.1524" layer="91"/>
<wire x1="132.08" y1="17.78" x2="121.92" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SJ1" gate="G$1" pin="3"/>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="137.16" y1="88.9" x2="121.92" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="SJ1" gate="G$1" pin="1"/>
<wire x1="137.16" y1="78.74" x2="132.08" y2="78.74" width="0.1524" layer="91"/>
<wire x1="132.08" y1="78.74" x2="132.08" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="132.08" y1="86.36" x2="121.92" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="SJ2" gate="G$1" pin="3"/>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="137.16" y1="66.04" x2="121.92" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SJ2" gate="G$1" pin="1"/>
<wire x1="137.16" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
<wire x1="134.62" y1="55.88" x2="134.62" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="134.62" y1="63.5" x2="121.92" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SJ3" gate="G$1" pin="3"/>
<pinref part="JP3" gate="A" pin="3"/>
<wire x1="137.16" y1="43.18" x2="121.92" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SJ3" gate="G$1" pin="1"/>
<wire x1="137.16" y1="33.02" x2="132.08" y2="33.02" width="0.1524" layer="91"/>
<wire x1="132.08" y1="33.02" x2="132.08" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="2"/>
<wire x1="132.08" y1="40.64" x2="121.92" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="SJ4" gate="G$1" pin="3"/>
<pinref part="JP4" gate="A" pin="3"/>
<wire x1="137.16" y1="20.32" x2="121.92" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN11" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="11"/>
<wire x1="170.18" y1="22.86" x2="162.56" y2="22.86" width="0.1524" layer="91"/>
<label x="162.56" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="106,1,170.18,25.4,CS4,,,,,"/>
<approved hash="106,1,170.18,33.02,N$1,,,,,"/>
<approved hash="106,1,170.18,30.48,N$2,,,,,"/>
<approved hash="106,1,170.18,45.72,PIN1,,,,,"/>
<approved hash="106,1,170.18,43.18,PIN2,,,,,"/>
<approved hash="106,1,170.18,38.1,PIN4,,,,,"/>
<approved hash="106,1,170.18,35.56,PIN5,,,,,"/>
<approved hash="106,1,170.18,22.86,PIN11,,,,,"/>
<approved hash="106,1,170.18,-2.54,PIN20,,,,,"/>
<approved hash="106,1,246.38,33.02,PIN26,,,,,"/>
<approved hash="106,1,246.38,30.48,PIN27,,,,,"/>
<approved hash="106,1,246.38,25.4,PIN29,,,,,"/>
<approved hash="106,1,246.38,22.86,PIN30,,,,,"/>
<approved hash="106,1,246.38,20.32,PIN31,,,,,"/>
<approved hash="106,1,246.38,17.78,PIN32,,,,,"/>
<approved hash="106,1,246.38,12.7,PIN34,,,,,"/>
<approved hash="106,1,246.38,10.16,PIN35,,,,,"/>
<approved hash="106,1,246.38,7.62,PIN36,,,,,"/>
<approved hash="106,1,246.38,5.08,PIN37,,,,,"/>
<approved hash="106,1,246.38,0,PIN39,,,,,"/>
<approved hash="110,1,160.02,0,GND,CS3,,,,"/>
<approved hash="110,1,160.02,0,GND,CS3,,,,"/>
<approved hash="113,1,159.571,21.59,SV1,,,,,"/>
<approved hash="113,1,241.798,21.59,SV2,,,,,"/>
<approved hash="113,1,124.223,93.8572,JP1,,,,,"/>
<approved hash="113,1,124.223,69.85,JP2,,,,,"/>
<approved hash="113,1,122.953,46.99,JP3,,,,,"/>
<approved hash="113,1,122.953,24.13,JP4,,,,,"/>
<approved hash="113,1,138.097,83.82,SJ1,,,,,"/>
<approved hash="113,1,138.097,60.96,SJ2,,,,,"/>
<approved hash="113,1,138.097,38.1,SJ3,,,,,"/>
<approved hash="113,1,138.097,15.24,SJ4,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="9.4" severity="warning">
Since Version 9.4, EAGLE supports the overriding of 3D packages
in schematics and board files. Those overridden 3d packages
will not be understood (or retained) with this version.
</note>
<note version="9.0" severity="warning">
Since Version 9.0, EAGLE supports the align property for labels. 
Labels in schematic will not be understood with this version. Update EAGLE to the latest version 
for full support of labels. 
</note>
</compatibility>
</eagle>
