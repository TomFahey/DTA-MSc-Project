<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SnapEDA Library" urn="urn:adsk.eagle:library:36272931">
<packages>
<package name="CAPPRD500W60D1000H1250" urn="urn:adsk.eagle:footprint:36420506/1" library_version="10">
<circle x="0" y="0" radius="5" width="0.127" layer="51"/>
<circle x="0" y="0" radius="5" width="0.127" layer="21"/>
<circle x="0" y="0" radius="5.25" width="0.05" layer="39"/>
<circle x="-5.75" y="0" radius="0.1" width="0.2" layer="21"/>
<circle x="-5.75" y="0" radius="0.1" width="0.2" layer="51"/>
<text x="-2.625" y="5.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.625" y="-6.95" size="1.27" layer="27">&gt;VALUE</text>
<pad name="P" x="-2.5" y="0" drill="0.85" diameter="1.2" shape="square"/>
<pad name="N" x="2.5" y="0" drill="0.85" diameter="1.2"/>
</package>
<package name="CUI_TB002-500-02BE" urn="urn:adsk.eagle:footprint:36422747/1" library_version="16">
<wire x1="-2.5" y1="-3.5" x2="-2.5" y2="4.1" width="0.127" layer="51"/>
<wire x1="-2.5" y1="4.1" x2="7.5" y2="4.1" width="0.127" layer="51"/>
<wire x1="7.5" y1="4.1" x2="7.5" y2="-3.5" width="0.127" layer="51"/>
<wire x1="7.5" y1="-3.5" x2="-2.5" y2="-3.5" width="0.127" layer="51"/>
<wire x1="-2.5" y1="-3.5" x2="-2.5" y2="4.1" width="0.127" layer="21"/>
<wire x1="7.5" y1="4.1" x2="7.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="4.1" x2="7.5" y2="4.1" width="0.127" layer="21"/>
<wire x1="7.5" y1="-3.5" x2="-2.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-2.75" y1="4.35" x2="7.75" y2="4.35" width="0.05" layer="39"/>
<wire x1="7.75" y1="-3.75" x2="-2.75" y2="-3.75" width="0.05" layer="39"/>
<wire x1="-2.75" y1="-3.75" x2="-2.75" y2="4.35" width="0.05" layer="39"/>
<wire x1="7.75" y1="4.35" x2="7.75" y2="-3.75" width="0.05" layer="39"/>
<text x="-3.5" y="5.1" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.5" y="-5.75" size="1.778" layer="27">&gt;VALUE</text>
<circle x="0" y="-4.5" radius="0.1" width="0.2" layer="21"/>
<circle x="0" y="-4.5" radius="0.1" width="0.2" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3"/>
</package>
<package name="6000B_SERIES_MUR" urn="urn:adsk.eagle:footprint:36861099/1" library_version="24">
<smd name="1" x="-10.75055" y="0" dx="1.9939" dy="12.4968" layer="1"/>
<smd name="2" x="10.75055" y="0" dx="1.9939" dy="12.4968" layer="1"/>
<wire x1="-11.7348" y1="-6.5024" x2="-11.7348" y2="-14.7828" width="0.1524" layer="47"/>
<wire x1="-11.7348" y1="-14.7828" x2="-11.7348" y2="-15.0368" width="0.1524" layer="47"/>
<wire x1="-11.7348" y1="-14.7828" x2="-11.4808" y2="-14.6304" width="0.1524" layer="47"/>
<wire x1="-11.4808" y1="-14.6304" x2="-11.4808" y2="-14.8844" width="0.1524" layer="47"/>
<wire x1="-11.4808" y1="-14.8844" x2="-11.7348" y2="-14.7828" width="0.1524" layer="47"/>
<wire x1="11.7348" y1="-6.5024" x2="11.7348" y2="-14.7828" width="0.1524" layer="47"/>
<wire x1="11.7348" y1="-14.7828" x2="11.7348" y2="-15.0368" width="0.1524" layer="47"/>
<wire x1="11.7348" y1="-14.7828" x2="11.4808" y2="-14.6304" width="0.1524" layer="47"/>
<wire x1="11.4808" y1="-14.6304" x2="11.4808" y2="-14.8844" width="0.1524" layer="47"/>
<wire x1="11.4808" y1="-14.8844" x2="11.7348" y2="-14.7828" width="0.1524" layer="47"/>
<wire x1="-11.7348" y1="-14.7828" x2="11.7348" y2="-14.7828" width="0.1524" layer="47"/>
<wire x1="11.9888" y1="6.2484" x2="13.0048" y2="6.2484" width="0.1524" layer="47"/>
<wire x1="13.0048" y1="6.2484" x2="13.2588" y2="6.2484" width="0.1524" layer="47"/>
<wire x1="13.0048" y1="6.2484" x2="12.9032" y2="5.9944" width="0.1524" layer="47"/>
<wire x1="12.9032" y1="5.9944" x2="13.1572" y2="5.9944" width="0.1524" layer="47"/>
<wire x1="13.1572" y1="5.9944" x2="13.0048" y2="6.2484" width="0.1524" layer="47"/>
<wire x1="11.9888" y1="-6.2484" x2="13.0048" y2="-6.2484" width="0.1524" layer="47"/>
<wire x1="13.0048" y1="-6.2484" x2="13.2588" y2="-6.2484" width="0.1524" layer="47"/>
<wire x1="13.0048" y1="-6.2484" x2="12.9032" y2="-5.9944" width="0.1524" layer="47"/>
<wire x1="12.9032" y1="-5.9944" x2="13.1572" y2="-5.9944" width="0.1524" layer="47"/>
<wire x1="13.1572" y1="-5.9944" x2="13.0048" y2="-6.2484" width="0.1524" layer="47"/>
<wire x1="13.0048" y1="6.2484" x2="13.0048" y2="-6.2484" width="0.1524" layer="47"/>
<wire x1="-9.7536" y1="6.5024" x2="-9.7536" y2="14.7828" width="0.1524" layer="47"/>
<wire x1="-9.7536" y1="14.7828" x2="-9.7536" y2="15.0368" width="0.1524" layer="47"/>
<wire x1="-9.7536" y1="14.7828" x2="-9.4996" y2="14.6304" width="0.1524" layer="47"/>
<wire x1="-9.4996" y1="14.6304" x2="-9.4996" y2="14.8844" width="0.1524" layer="47"/>
<wire x1="-9.4996" y1="14.8844" x2="-9.7536" y2="14.7828" width="0.1524" layer="47"/>
<wire x1="9.7536" y1="6.5024" x2="9.7536" y2="14.7828" width="0.1524" layer="47"/>
<wire x1="9.7536" y1="14.7828" x2="9.7536" y2="15.0368" width="0.1524" layer="47"/>
<wire x1="9.7536" y1="14.7828" x2="9.4996" y2="14.6304" width="0.1524" layer="47"/>
<wire x1="9.4996" y1="14.6304" x2="9.4996" y2="14.8844" width="0.1524" layer="47"/>
<wire x1="9.4996" y1="14.8844" x2="9.7536" y2="14.7828" width="0.1524" layer="47"/>
<wire x1="-9.7536" y1="14.7828" x2="9.7536" y2="14.7828" width="0.1524" layer="47"/>
<wire x1="-9.8806" y1="13.6144" x2="9.8806" y2="13.6144" width="0.1524" layer="21"/>
<wire x1="9.8806" y1="13.6144" x2="9.8806" y2="6.5786" width="0.1524" layer="21"/>
<wire x1="9.8806" y1="-13.6144" x2="-9.8806" y2="-13.6144" width="0.1524" layer="21"/>
<wire x1="-9.8806" y1="-13.6144" x2="-9.8806" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="-9.8806" y1="6.5786" x2="-9.8806" y2="13.6144" width="0.1524" layer="21"/>
<wire x1="9.8806" y1="-6.5786" x2="9.8806" y2="-13.6144" width="0.1524" layer="21"/>
<wire x1="-9.7536" y1="13.5128" x2="9.7536" y2="13.5128" width="0.1524" layer="51"/>
<wire x1="9.7536" y1="13.5128" x2="9.7536" y2="-13.5128" width="0.1524" layer="51"/>
<wire x1="9.7536" y1="-13.5128" x2="-9.7536" y2="-13.5128" width="0.1524" layer="51"/>
<wire x1="-9.7536" y1="-13.5128" x2="-9.7536" y2="13.5128" width="0.1524" layer="51"/>
<text x="-17.5006" y="-18.8468" size="1.27" layer="47" ratio="6" rot="SR0">Default Pad Style: RX78p5Y492D0T</text>
<text x="-16.5354" y="-20.3708" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Pad Style: OX118Y551D30P</text>
<text x="-16.5354" y="-21.8948" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Pad Style: OX118Y551D30P</text>
<text x="-4.0386" y="-15.6464" size="0.635" layer="47" ratio="4" rot="SR0">.925in/23.495mm</text>
<text x="13.2588" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">.492in/12.497mm</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<polygon width="0.0254" layer="41">
<vertex x="-9.7028" y="13.4493"/>
<vertex x="9.7028" y="13.4493"/>
<vertex x="9.7028" y="-13.4493"/>
<vertex x="-9.7028" y="-13.4493"/>
</polygon>
</package>
<package name="MOLEX_436500603" urn="urn:adsk.eagle:footprint:37003282/1" library_version="29">
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
</packages>
<packages3d>
<package3d name="CAPPRD500W60D1000H1250" urn="urn:adsk.eagle:package:36420508/2" type="model" library_version="10">
<packageinstances>
<packageinstance name="CAPPRD500W60D1000H1250"/>
</packageinstances>
</package3d>
<package3d name="CUI_TB002-500-02BE" urn="urn:adsk.eagle:package:36422753/2" type="model" library_version="16">
<packageinstances>
<packageinstance name="CUI_TB002-500-02BE"/>
</packageinstances>
</package3d>
<package3d name="6000B_SERIES_MUR" urn="urn:adsk.eagle:package:36861100/3" type="model" library_version="25">
<packageinstances>
<packageinstance name="6000B_SERIES_MUR"/>
</packageinstances>
</package3d>
<package3d name="MOLEX_436500603" urn="urn:adsk.eagle:package:37003284/2" type="model" library_version="30">
<packageinstances>
<packageinstance name="MOLEX_436500603"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="ECA1EHG471E" urn="urn:adsk.eagle:symbol:36420507/1" library_version="10">
<text x="-2.54" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="2.286" y1="2.54" x2="2.286" y2="-2.54" width="0.254" layer="94" curve="70"/>
<wire x1="0.508" y1="2.54" x2="0.508" y2="0" width="0.254" layer="94"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.508" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.524" y2="0" width="0.1524" layer="94"/>
<rectangle x1="-1.173" y1="-1.532" x2="-0.284" y2="-1.405" layer="94"/>
<rectangle x1="-0.792" y1="-1.913" x2="-0.665" y2="-1.024" layer="94"/>
<pin name="P" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="N" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="TB002-500-02BE" urn="urn:adsk.eagle:symbol:36422750/1" library_version="16">
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<text x="-5.58" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-10.16" y="2.54" length="middle" direction="pas"/>
<pin name="2" x="-10.16" y="0" length="middle" direction="pas"/>
</symbol>
<symbol name="IND" urn="urn:adsk.eagle:symbol:36861098/1" library_version="24">
<pin name="1" x="15.24" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="2" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="5.08" y1="0" x2="5.08" y2="1.27" width="0.2032" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="1.27" width="0.2032" layer="94"/>
<wire x1="12.7" y1="0" x2="12.7" y2="1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.2032" layer="94"/>
<wire x1="10.16" y1="0" x2="10.16" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.08" y1="1.27" x2="7.62" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="2.54" y1="1.27" x2="5.08" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="7.62" y1="1.27" x2="10.16" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="10.16" y1="1.27" x2="12.7" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<text x="-1.9812" y="-4.2672" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-0.9144" y="3.3528" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
</symbol>
<symbol name="436500603" urn="urn:adsk.eagle:symbol:37003281/1" library_version="29">
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
</symbols>
<devicesets>
<deviceset name="ECA1EHG471E" urn="urn:adsk.eagle:component:36420509/2" prefix="C" library_version="10">
<description>NHG-A  </description>
<gates>
<gate name="G$1" symbol="ECA1EHG471E" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPPRD500W60D1000H1250">
<connects>
<connect gate="G$1" pin="N" pad="N"/>
<connect gate="G$1" pin="P" pad="P"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:36420508/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="A_MAX" value="12.5"/>
<attribute name="B_MAX" value="0.65"/>
<attribute name="B_NOM" value="0.6"/>
<attribute name="DESCRIPTION" value="NHG-A"/>
<attribute name="D_NOM" value="10"/>
<attribute name="E_NOM" value="5"/>
<attribute name="MF" value="PANASONIC"/>
<attribute name="PARTREV" value="20-DEC-19"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TB002-500-02BE" urn="urn:adsk.eagle:component:36422756/2" prefix="J" library_version="16">
<gates>
<gate name="G$1" symbol="TB002-500-02BE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CUI_TB002-500-02BE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:36422753/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="CUI"/>
<attribute name="STANDARD" value="Manufacturer Recommendations"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="60B104C" urn="urn:adsk.eagle:component:36861101/3" prefix="L" library_version="25">
<gates>
<gate name="A" symbol="IND" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="6000B_SERIES_MUR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:36861100/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2022 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="60B104C" constant="no"/>
<attribute name="MFR_NAME" value="Murata" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="436500603" urn="urn:adsk.eagle:component:37003285/2" prefix="J" library_version="30">
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
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="C2" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="ECA1EHG471E" device="" package3d_urn="urn:adsk.eagle:package:36420508/2"/>
<part name="J1" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TB002-500-02BE" device="" package3d_urn="urn:adsk.eagle:package:36422753/2"/>
<part name="L2" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="60B104C" device="" package3d_urn="urn:adsk.eagle:package:36861100/3"/>
<part name="L1" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="60B104C" device="" package3d_urn="urn:adsk.eagle:package:36861100/3"/>
<part name="C1" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="ECA1EHG471E" device="" package3d_urn="urn:adsk.eagle:package:36420508/2"/>
<part name="C3" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="ECA1EHG471E" device="" package3d_urn="urn:adsk.eagle:package:36420508/2"/>
<part name="J3" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TB002-500-02BE" device="" package3d_urn="urn:adsk.eagle:package:36422753/2"/>
<part name="L3" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="60B104C" device="" package3d_urn="urn:adsk.eagle:package:36861100/3"/>
<part name="L4" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="60B104C" device="" package3d_urn="urn:adsk.eagle:package:36861100/3"/>
<part name="C4" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="ECA1EHG471E" device="" package3d_urn="urn:adsk.eagle:package:36420508/2"/>
<part name="J6" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="436500603" device="" package3d_urn="urn:adsk.eagle:package:37003284/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="C2" gate="G$1" x="30.48" y="55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="35.56" y="54.61" size="1.4224" layer="95"/>
<attribute name="VALUE" x="22.86" y="48.26" size="1.4224" layer="96"/>
</instance>
<instance part="J1" gate="G$1" x="-2.54" y="45.72" smashed="yes" rot="R180">
<attribute name="NAME" x="3.04" y="40.64" size="1.4224" layer="95" rot="R180"/>
<attribute name="VALUE" x="2.54" y="50.8" size="1.4224" layer="96" rot="R180"/>
</instance>
<instance part="L2" gate="A" x="43.18" y="30.48" smashed="yes">
<attribute name="VALUE" x="41.1988" y="26.2128" size="1.4224" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="42.2656" y="33.8328" size="1.4224" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="L1" gate="A" x="43.18" y="58.42" smashed="yes">
<attribute name="VALUE" x="41.1988" y="54.1528" size="1.4224" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="42.2656" y="61.7728" size="1.4224" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="C1" gate="G$1" x="30.48" y="33.02" smashed="yes" rot="R90">
<attribute name="NAME" x="25.4" y="34.29" size="1.4224" layer="95" rot="R180"/>
<attribute name="VALUE" x="38.1" y="40.64" size="1.4224" layer="96" rot="R180"/>
</instance>
<instance part="C3" gate="G$1" x="30.48" y="10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="35.56" y="8.89" size="1.4224" layer="95"/>
<attribute name="VALUE" x="22.86" y="2.54" size="1.4224" layer="96"/>
</instance>
<instance part="J3" gate="G$1" x="-2.54" y="0" smashed="yes" rot="R180">
<attribute name="NAME" x="3.04" y="-5.08" size="1.4224" layer="95" rot="R180"/>
<attribute name="VALUE" x="2.54" y="5.08" size="1.4224" layer="96" rot="R180"/>
</instance>
<instance part="L3" gate="A" x="43.18" y="-15.24" smashed="yes">
<attribute name="VALUE" x="41.1988" y="-19.5072" size="1.4224" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="42.2656" y="-11.8872" size="1.4224" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="L4" gate="A" x="43.18" y="12.7" smashed="yes">
<attribute name="VALUE" x="41.1988" y="8.4328" size="1.4224" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="42.2656" y="16.0528" size="1.4224" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="C4" gate="G$1" x="30.48" y="-12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="25.4" y="-11.43" size="1.4224" layer="95" rot="R180"/>
<attribute name="VALUE" x="38.1" y="-5.08" size="1.4224" layer="96" rot="R180"/>
</instance>
<instance part="J6" gate="G$1" x="106.68" y="15.24" smashed="yes" rot="MR180">
<attribute name="NAME" x="106.68" y="1.27" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="106.68" y="30.48" size="1.778" layer="96" rot="MR180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="IN1" class="0">
<segment>
<pinref part="L1" gate="A" pin="1"/>
<wire x1="58.42" y1="58.42" x2="96.52" y2="58.42" width="0.1524" layer="91"/>
<label x="83.82" y="58.42" size="1.778" layer="95"/>
<wire x1="96.52" y1="58.42" x2="96.52" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="6"/>
<wire x1="96.52" y1="17.78" x2="101.6" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OUT1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<pinref part="C2" gate="G$1" pin="P"/>
<wire x1="7.62" y1="45.72" x2="7.62" y2="58.42" width="0.1524" layer="91"/>
<wire x1="7.62" y1="58.42" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<pinref part="L1" gate="A" pin="2"/>
<wire x1="30.48" y1="58.42" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
<junction x="30.48" y="58.42"/>
<label x="10.16" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<label x="78.74" y="45.72" size="1.778" layer="95"/>
<pinref part="C1" gate="G$1" pin="N"/>
<pinref part="C2" gate="G$1" pin="N"/>
<wire x1="30.48" y1="50.8" x2="30.48" y2="45.72" width="0.1524" layer="91"/>
<wire x1="30.48" y1="45.72" x2="30.48" y2="38.1" width="0.1524" layer="91"/>
<wire x1="30.48" y1="45.72" x2="93.98" y2="45.72" width="0.1524" layer="91"/>
<junction x="30.48" y="45.72"/>
<wire x1="93.98" y1="15.24" x2="93.98" y2="45.72" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="5"/>
<wire x1="93.98" y1="15.24" x2="101.6" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="78.74" y="0" size="1.778" layer="95"/>
<pinref part="C4" gate="G$1" pin="N"/>
<pinref part="C3" gate="G$1" pin="N"/>
<wire x1="30.48" y1="5.08" x2="30.48" y2="0" width="0.1524" layer="91"/>
<wire x1="30.48" y1="0" x2="30.48" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="30.48" y1="0" x2="83.82" y2="0" width="0.1524" layer="91"/>
<junction x="30.48" y="0"/>
<wire x1="83.82" y1="0" x2="83.82" y2="7.62" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="2"/>
<wire x1="83.82" y1="7.62" x2="101.6" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OUT2" class="0">
<segment>
<pinref part="L2" gate="A" pin="2"/>
<wire x1="43.18" y1="30.48" x2="30.48" y2="30.48" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="P"/>
<wire x1="30.48" y1="30.48" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<junction x="30.48" y="30.48"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="7.62" y1="30.48" x2="7.62" y2="43.18" width="0.1524" layer="91"/>
<label x="10.16" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN2" class="0">
<segment>
<label x="83.82" y="27.94" size="1.778" layer="95"/>
<pinref part="L2" gate="A" pin="1"/>
<wire x1="58.42" y1="30.48" x2="83.82" y2="30.48" width="0.1524" layer="91"/>
<wire x1="83.82" y1="30.48" x2="83.82" y2="17.78" width="0.1524" layer="91"/>
<wire x1="83.82" y1="17.78" x2="91.44" y2="17.78" width="0.1524" layer="91"/>
<wire x1="91.44" y1="17.78" x2="91.44" y2="12.7" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="4"/>
<wire x1="91.44" y1="12.7" x2="101.6" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IN3" class="0">
<segment>
<pinref part="L4" gate="A" pin="1"/>
<wire x1="58.42" y1="12.7" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
<label x="83.82" y="15.24" size="1.778" layer="95"/>
<wire x1="83.82" y1="12.7" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="3"/>
<wire x1="83.82" y1="10.16" x2="101.6" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IN4" class="0">
<segment>
<pinref part="L3" gate="A" pin="1"/>
<wire x1="58.42" y1="-15.24" x2="96.52" y2="-15.24" width="0.1524" layer="91"/>
<label x="83.82" y="-17.78" size="1.778" layer="95"/>
<wire x1="96.52" y1="-15.24" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="1"/>
<wire x1="96.52" y1="5.08" x2="101.6" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OUT3" class="0">
<segment>
<pinref part="C3" gate="G$1" pin="P"/>
<pinref part="L4" gate="A" pin="2"/>
<wire x1="30.48" y1="12.7" x2="43.18" y2="12.7" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="2"/>
<wire x1="7.62" y1="0" x2="12.7" y2="0" width="0.1524" layer="91"/>
<wire x1="12.7" y1="0" x2="12.7" y2="12.7" width="0.1524" layer="91"/>
<wire x1="12.7" y1="12.7" x2="30.48" y2="12.7" width="0.1524" layer="91"/>
<junction x="30.48" y="12.7"/>
<label x="12.7" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="OUT4" class="0">
<segment>
<pinref part="L3" gate="A" pin="2"/>
<wire x1="43.18" y1="-15.24" x2="30.48" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="P"/>
<pinref part="J3" gate="G$1" pin="1"/>
<wire x1="7.62" y1="-2.54" x2="12.7" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-2.54" x2="12.7" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-15.24" x2="30.48" y2="-15.24" width="0.1524" layer="91"/>
<junction x="30.48" y="-15.24"/>
<label x="12.7" y="-17.78" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
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
</compatibility>
</eagle>
