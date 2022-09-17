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
<schematic xreflabel="%N (%S.%C%R)" xrefpart="/%S.%C%R">
<libraries>
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://eagle.componentsearchengine.com&lt;/b&gt;&lt;p&gt;&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC3216X140N">
<description>&lt;b&gt;1206_(CL31B)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.38" y="0" dx="1.78" dy="1.02" layer="1" rot="R90"/>
<smd name="2" x="1.38" y="0" dx="1.78" dy="1.02" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.04" y1="1.04" x2="2.04" y2="1.04" width="0.05" layer="51"/>
<wire x1="2.04" y1="1.04" x2="2.04" y2="-1.04" width="0.05" layer="51"/>
<wire x1="2.04" y1="-1.04" x2="-2.04" y2="-1.04" width="0.05" layer="51"/>
<wire x1="-2.04" y1="-1.04" x2="-2.04" y2="1.04" width="0.05" layer="51"/>
<wire x1="-1.6" y1="0.8" x2="1.6" y2="0.8" width="0.1" layer="51"/>
<wire x1="1.6" y1="0.8" x2="1.6" y2="-0.8" width="0.1" layer="51"/>
<wire x1="1.6" y1="-0.8" x2="-1.6" y2="-0.8" width="0.1" layer="51"/>
<wire x1="-1.6" y1="-0.8" x2="-1.6" y2="0.8" width="0.1" layer="51"/>
<wire x1="0" y1="0.7" x2="0" y2="-0.7" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="CL31B334KACNNNC">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CL31B334KACNNNC" prefix="C">
<description>&lt;b&gt;Multilayer Ceramic Capacitors MLCC - SMD/SMT 330nF+/-10% 25V X7R 1206&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.lcsc.com/lcsc/1912111437_Samsung-Electro-Mechanics-CL31B334KACNNNC_C318760.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CL31B334KACNNNC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC3216X140N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Multilayer Ceramic Capacitors MLCC - SMD/SMT 330nF+/-10% 25V X7R 1206" constant="no"/>
<attribute name="HEIGHT" value="1.4mm" constant="no"/>
<attribute name="LCSC_PART" value="C318760"/>
<attribute name="MANUFACTURER_NAME" value="Samsung Electro-Mechanics" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL31B334KACNNNC" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SnapEDA Library" urn="urn:adsk.eagle:library:36272931">
<packages>
<package name="5PIN_SO6_TOS" urn="urn:adsk.eagle:footprint:37021468/1" library_version="38">
<smd name="1" x="-3.4417" y="1.27" dx="1.208025" dy="0.46634375" layer="1"/>
<smd name="3" x="-3.4417" y="-1.27" dx="1.208025" dy="0.46634375" layer="1"/>
<smd name="4" x="3.4417" y="-1.27" dx="1.208025" dy="0.46634375" layer="1"/>
<smd name="5" x="3.4417" y="0" dx="1.208025" dy="0.46634375" layer="1"/>
<smd name="6" x="3.4417" y="1.27" dx="1.208025" dy="0.46634375" layer="1"/>
<wire x1="-2.286" y1="1.0668" x2="-2.286" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.4732" x2="-3.7084" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="-3.7084" y1="1.4732" x2="-3.7084" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="-3.7084" y1="1.0668" x2="-2.286" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-1.4732" x2="-2.286" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-1.0668" x2="-3.7084" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="-3.7084" y1="-1.0668" x2="-3.7084" y2="-1.4732" width="0.1524" layer="51"/>
<wire x1="-3.7084" y1="-1.4732" x2="-2.286" y2="-1.4732" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-1.0668" x2="2.286" y2="-1.4732" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-1.4732" x2="3.7084" y2="-1.4732" width="0.1524" layer="51"/>
<wire x1="3.7084" y1="-1.4732" x2="3.7084" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="3.7084" y1="-1.0668" x2="2.286" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0.2032" x2="2.286" y2="-0.2032" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.2032" x2="3.7084" y2="-0.2032" width="0.1524" layer="51"/>
<wire x1="3.7084" y1="-0.2032" x2="3.7084" y2="0.2032" width="0.1524" layer="51"/>
<wire x1="3.7084" y1="0.2032" x2="2.286" y2="0.2032" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="1.4732" x2="2.286" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.0668" x2="3.7084" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="3.7084" y1="1.0668" x2="3.7084" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="3.7084" y1="1.4732" x2="2.2606" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-1.8542" x2="2.286" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-1.8542" x2="2.286" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.8542" x2="0.3048" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.8542" x2="-0.3048" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="1.8542" x2="-2.286" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.8542" x2="-2.286" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.8542" x2="-0.3048" y2="1.8542" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="3.7592" width="0.1524" layer="47"/>
<wire x1="-2.286" y1="3.7592" x2="-2.286" y2="4.1402" width="0.1524" layer="47"/>
<wire x1="2.286" y1="0" x2="2.286" y2="3.7592" width="0.1524" layer="47"/>
<wire x1="2.286" y1="3.7592" x2="2.286" y2="4.1402" width="0.1524" layer="47"/>
<wire x1="-2.286" y1="3.7592" x2="2.286" y2="3.7592" width="0.1524" layer="47"/>
<wire x1="-2.286" y1="3.7592" x2="-2.032" y2="3.8862" width="0.1524" layer="47"/>
<wire x1="-2.286" y1="3.7592" x2="-2.032" y2="3.6322" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="3.8862" x2="-2.032" y2="3.6322" width="0.1524" layer="47"/>
<wire x1="2.286" y1="3.7592" x2="2.032" y2="3.8862" width="0.1524" layer="47"/>
<wire x1="2.286" y1="3.7592" x2="2.032" y2="3.6322" width="0.1524" layer="47"/>
<wire x1="2.032" y1="3.8862" x2="2.032" y2="3.6322" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="-4.1402" x2="-3.7084" y2="-3.7592" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="-3.7592" x2="-3.7084" y2="5.6642" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="5.6642" x2="-3.7084" y2="6.0452" width="0.1524" layer="47"/>
<wire x1="3.7084" y1="0" x2="3.7084" y2="5.6642" width="0.1524" layer="47"/>
<wire x1="3.7084" y1="5.6642" x2="3.7084" y2="6.0452" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="5.6642" x2="3.7084" y2="5.6642" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="5.6642" x2="-3.4544" y2="5.7912" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="5.6642" x2="-3.4544" y2="5.5372" width="0.1524" layer="47"/>
<wire x1="-3.4544" y1="5.7912" x2="-3.4544" y2="5.5372" width="0.1524" layer="47"/>
<wire x1="3.7084" y1="5.6642" x2="3.4544" y2="5.7912" width="0.1524" layer="47"/>
<wire x1="3.7084" y1="5.6642" x2="3.4544" y2="5.5372" width="0.1524" layer="47"/>
<wire x1="3.4544" y1="5.7912" x2="3.4544" y2="5.5372" width="0.1524" layer="47"/>
<wire x1="0" y1="1.8542" x2="9.906" y2="1.8542" width="0.1524" layer="47"/>
<wire x1="9.906" y1="1.8542" x2="10.2616" y2="1.8542" width="0.1524" layer="47"/>
<wire x1="0" y1="-1.8542" x2="9.906" y2="-1.8542" width="0.1524" layer="47"/>
<wire x1="9.906" y1="-1.8542" x2="10.2616" y2="-1.8542" width="0.1524" layer="47"/>
<wire x1="9.906" y1="1.8542" x2="9.906" y2="3.1242" width="0.1524" layer="47"/>
<wire x1="9.906" y1="-1.8542" x2="9.906" y2="-3.1242" width="0.1524" layer="47"/>
<wire x1="9.906" y1="1.8542" x2="9.7536" y2="2.1082" width="0.1524" layer="47"/>
<wire x1="9.906" y1="1.8542" x2="10.0076" y2="2.1082" width="0.1524" layer="47"/>
<wire x1="9.7536" y1="2.1082" x2="10.0076" y2="2.1082" width="0.1524" layer="47"/>
<wire x1="9.906" y1="-1.8542" x2="9.7536" y2="-2.1082" width="0.1524" layer="47"/>
<wire x1="9.906" y1="-1.8542" x2="10.0076" y2="-2.1082" width="0.1524" layer="47"/>
<wire x1="9.7536" y1="-2.1082" x2="10.0076" y2="-2.1082" width="0.1524" layer="47"/>
<wire x1="-3.4544" y1="1.27" x2="-5.9944" y2="1.27" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="1.27" x2="-6.35" y2="1.27" width="0.1524" layer="47"/>
<wire x1="-3.4544" y1="-1.27" x2="-5.9944" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="-1.27" x2="-6.35" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="1.27" x2="-5.9944" y2="2.54" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="-1.27" x2="-5.9944" y2="-2.54" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="1.27" x2="-6.096" y2="1.524" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="1.27" x2="-5.842" y2="1.524" width="0.1524" layer="47"/>
<wire x1="-6.096" y1="1.524" x2="-5.842" y2="1.524" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="-1.27" x2="-6.096" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-5.9944" y1="-1.27" x2="-5.842" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-6.096" y1="-1.524" x2="-5.842" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="3.4544" y1="1.27" x2="5.9944" y2="1.27" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="1.27" x2="6.35" y2="1.27" width="0.1524" layer="47"/>
<wire x1="3.4544" y1="0" x2="5.9944" y2="0" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="0" x2="6.35" y2="0" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="1.27" x2="5.9944" y2="2.54" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="0" x2="5.9944" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="1.27" x2="5.842" y2="1.524" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="1.27" x2="6.096" y2="1.524" width="0.1524" layer="47"/>
<wire x1="5.842" y1="1.524" x2="6.096" y2="1.524" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="0" x2="5.842" y2="-0.254" width="0.1524" layer="47"/>
<wire x1="5.9944" y1="0" x2="6.096" y2="-0.254" width="0.1524" layer="47"/>
<wire x1="5.842" y1="-0.254" x2="6.096" y2="-0.254" width="0.1524" layer="47"/>
<wire x1="-3.2004" y1="0" x2="-3.2004" y2="-3.7592" width="0.1524" layer="47"/>
<wire x1="-3.2004" y1="-3.7592" x2="-3.2004" y2="-4.1402" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="-3.7592" x2="-4.9784" y2="-3.7592" width="0.1524" layer="47"/>
<wire x1="-3.2004" y1="-3.7592" x2="-1.9304" y2="-3.7592" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="-3.7592" x2="-3.9624" y2="-3.6322" width="0.1524" layer="47"/>
<wire x1="-3.7084" y1="-3.7592" x2="-3.9624" y2="-3.8862" width="0.1524" layer="47"/>
<wire x1="-3.9624" y1="-3.6322" x2="-3.9624" y2="-3.8862" width="0.1524" layer="47"/>
<wire x1="-3.2004" y1="-3.7592" x2="-2.9464" y2="-3.6322" width="0.1524" layer="47"/>
<wire x1="-3.2004" y1="-3.7592" x2="-2.9464" y2="-3.8862" width="0.1524" layer="47"/>
<wire x1="-2.9464" y1="-3.6322" x2="-2.9464" y2="-3.8862" width="0.1524" layer="47"/>
<wire x1="-2.3876" y1="-1.9812" x2="2.3876" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="2.3876" y1="-1.9812" x2="2.3876" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="2.3876" y1="1.9812" x2="-2.3876" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-2.3876" y1="1.9812" x2="-2.3876" y2="-1.9812" width="0.1524" layer="21"/>
<text x="-2.5908" y="0.508" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-19.0246" y="-8.4582" size="1.27" layer="47" ratio="6" rot="SR0">Pin One Padstyle: RX47p56Y18p36D0T</text>
<text x="-18.669" y="-6.9342" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX47p56Y18p36D0T</text>
<text x="-14.8082" y="-13.0302" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-14.5542" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="-4.0386" y="4.2672" size="0.635" layer="47" ratio="4" rot="SR0">0.179in/4.547mm</text>
<text x="-4.0386" y="6.1722" size="0.635" layer="47" ratio="4" rot="SR0">0.291in/7.391mm</text>
<text x="10.414" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.146in/3.708mm</text>
<text x="-12.8524" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.1in/2.54mm</text>
<text x="6.5024" y="0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.05in/1.27mm</text>
<text x="-7.1882" y="-4.9022" size="0.635" layer="47" ratio="4" rot="SR0">0.02in/0.508mm</text>
<text x="-4.2672" y="1.6002" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="VREG_L78M05ABDT-TR" urn="urn:adsk.eagle:footprint:37027272/1" library_version="38">
<wire x1="-1.9" y1="3.25" x2="4.2" y2="3.25" width="0.127" layer="51"/>
<wire x1="4.2" y1="3.25" x2="4.2" y2="-3.25" width="0.127" layer="51"/>
<wire x1="4.2" y1="-3.25" x2="-1.9" y2="-3.25" width="0.127" layer="51"/>
<wire x1="-1.9" y1="-3.25" x2="-1.9" y2="3.25" width="0.127" layer="51"/>
<wire x1="-1.264" y1="3.25" x2="-1.9" y2="3.25" width="0.127" layer="21"/>
<wire x1="-1.9" y1="3.25" x2="-1.9" y2="-3.25" width="0.127" layer="21"/>
<wire x1="-1.9" y1="-3.25" x2="-1.264" y2="-3.25" width="0.127" layer="21"/>
<wire x1="-6" y1="3.6" x2="-6" y2="-3.6" width="0.05" layer="39"/>
<wire x1="-6" y1="-3.6" x2="6" y2="-3.6" width="0.05" layer="39"/>
<wire x1="6" y1="-3.6" x2="6" y2="3.6" width="0.05" layer="39"/>
<wire x1="6" y1="3.6" x2="-6" y2="3.6" width="0.05" layer="39"/>
<circle x="-4.25" y="4" radius="0.1" width="0.2" layer="21"/>
<circle x="-4.25" y="4" radius="0.1" width="0.2" layer="51"/>
<text x="-2" y="4" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="-4" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<rectangle x1="1.61" y1="-0.79" x2="3.19" y2="0.79" layer="31"/>
<rectangle x1="1.61" y1="1.44" x2="3.19" y2="3.02" layer="31"/>
<rectangle x1="1.61" y1="-3.02" x2="3.19" y2="-1.44" layer="31"/>
<rectangle x1="-0.62" y1="-0.79" x2="0.96" y2="0.79" layer="31"/>
<rectangle x1="-0.62" y1="1.44" x2="0.96" y2="3.02" layer="31"/>
<rectangle x1="-0.62" y1="-3.02" x2="0.96" y2="-1.44" layer="31"/>
<rectangle x1="3.84" y1="-0.79" x2="5.42" y2="0.79" layer="31"/>
<rectangle x1="3.84" y1="1.44" x2="5.42" y2="3.02" layer="31"/>
<rectangle x1="3.84" y1="-3.02" x2="5.42" y2="-1.44" layer="31"/>
<smd name="1" x="-4.25" y="2.3" dx="3" dy="1.6" layer="1"/>
<smd name="3" x="-4.25" y="-2.3" dx="3" dy="1.6" layer="1"/>
<smd name="2" x="2.4" y="0" dx="6.7" dy="6.7" layer="1" cream="no"/>
</package>
<package name="MOLEX_436500603" urn="urn:adsk.eagle:footprint:37003282/1" library_version="41">
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
</packages>
<packages3d>
<package3d name="5PIN_SO6_TOS" urn="urn:adsk.eagle:package:37021469/2" type="model" library_version="38">
<packageinstances>
<packageinstance name="5PIN_SO6_TOS"/>
</packageinstances>
</package3d>
<package3d name="TO228P972X240-4L" urn="urn:adsk.eagle:package:37027273/2" type="model" library_version="38">
<description>4-TO, DPAK, 2.28 mm pitch, 9.72 mm span, 6.55 X 6.10 X 2.40 mm body
&lt;p&gt;4-pin TO, DPAK package with 2.28 mm pitch, 9.72 mm span with body size 6.55 X 6.10 X 2.40 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="VREG_L78M05ABDT-TR"/>
</packageinstances>
</package3d>
<package3d name="MOLEX_436500603" urn="urn:adsk.eagle:package:37003284/2" type="model" library_version="41">
<packageinstances>
<packageinstance name="MOLEX_436500603"/>
</packageinstances>
</package3d>
<package3d name="CUI_TB002-500-02BE" urn="urn:adsk.eagle:package:36422753/2" type="model" library_version="16">
<packageinstances>
<packageinstance name="CUI_TB002-500-02BE"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="TLP2362" urn="urn:adsk.eagle:symbol:37021467/1" library_version="38">
<pin name="1" x="-2.5146" y="-2.54" length="point" direction="pas" rot="R180"/>
<pin name="3" x="-2.5146" y="-12.7" length="point" direction="pas" rot="R180"/>
<pin name="4" x="17.8054" y="-12.7" length="point" direction="pas" rot="R180"/>
<pin name="5" x="17.8054" y="-7.62" length="point" direction="out" rot="R180"/>
<pin name="6" x="17.8054" y="-2.54" length="point" direction="pas" rot="R180"/>
<wire x1="-2.5146" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-2.5146" y1="-12.7" x2="-2.54" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="17.8054" y1="-12.7" x2="17.78" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="17.8054" y1="-7.62" x2="17.78" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="17.8054" y1="-2.54" x2="17.78" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="0" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-12.7" x2="15.24" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-7.62" x2="15.24" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-2.54" x2="15.24" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-15.24" x2="0" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="0" y1="-12.7" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="15.24" y2="0" width="0.1524" layer="94"/>
<wire x1="15.24" y1="0" x2="15.24" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-12.7" x2="15.24" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="0" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-8.636" x2="2.54" y2="-8.636" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-8.636" x2="3.81" y2="-8.636" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-12.7" x2="2.54" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-6.604" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-12.7" x2="2.54" y2="-8.636" width="0.1524" layer="94"/>
<wire x1="9.144" y1="-5.334" x2="9.144" y2="-9.906" width="0.1524" layer="94"/>
<wire x1="14.478" y1="-7.62" x2="15.24" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-12.7" x2="15.24" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-2.54" x2="6.35" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.668" x2="3.81" y2="-12.446" width="0.1524" layer="94"/>
<wire x1="4.318" y1="-10.922" x2="5.08" y2="-10.668" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-11.43" x2="5.08" y2="-10.668" width="0.1524" layer="94"/>
<wire x1="9.144" y1="-9.906" x2="13.462" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="9.144" y1="-5.334" x2="13.462" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="14.224" y1="-7.62" x2="13.716" y2="-7.62" width="0.508" layer="94" curve="-180"/>
<wire x1="13.716" y1="-7.62" x2="14.224" y2="-7.62" width="0.508" layer="94" curve="-180"/>
<polygon width="0.0254" layer="94">
<vertex x="1.27" y="-6.604"/>
<vertex x="3.81" y="-6.604"/>
<vertex x="2.54" y="-8.636"/>
</polygon>
<text x="2.54" y="-12.954" size="1.27" layer="97" ratio="0" rot="SR0">SHIELD</text>
<text x="11.938" y="-10.668" size="1.27" layer="97" ratio="0" rot="SR0">GND</text>
<text x="11.938" y="-1.524" size="1.27" layer="97" ratio="0" rot="SR0">VCC</text>
<text x="-2.8702" y="-0.635" size="1.27" layer="95" ratio="6" rot="SR0">&gt;Name</text>
</symbol>
<symbol name="L78M05ABDT-TR" urn="urn:adsk.eagle:symbol:37027271/1" library_version="38">
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<text x="-10.16" y="6.35" size="1.778" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-10.16" y="-6.35" size="1.778" layer="96" ratio="10" rot="SMR180">&gt;VALUE</text>
<pin name="IN" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="GND" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="OUT" x="15.24" y="2.54" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="436500603" urn="urn:adsk.eagle:symbol:37003281/1" library_version="41">
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
</symbols>
<devicesets>
<deviceset name="TLP2362(TPL,E(T" urn="urn:adsk.eagle:component:37021470/3" prefix="U" library_version="40">
<gates>
<gate name="A" symbol="TLP2362" x="0" y="0"/>
</gates>
<devices>
<device name="" package="5PIN_SO6_TOS">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37021469/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2022 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="LCSC_PART" value="C37658"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TLP2362(TPL,E(T" constant="no"/>
<attribute name="MFR_NAME" value="Toshiba Electronic Devices &amp; Storage Co." constant="no"/>
<attribute name="PACKAGE" value="SOP-5_3.6x4.4x1.27P"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L78M05ABDT-TR" urn="urn:adsk.eagle:component:37027274/3" prefix="U" library_version="40">
<description>Linear Voltage Regulator IC 1 Output 500mA DPAK </description>
<gates>
<gate name="G$1" symbol="L78M05ABDT-TR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VREG_L78M05ABDT-TR">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37027273/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="LCSC_PART" value="C58069"/>
<attribute name="MANUFACTURER" value="STMicroelectronics"/>
<attribute name="MAXIMUM_PACKAGE_HEIGHT" value="2.4 mm"/>
<attribute name="PACKAGE" value="TO-252-2"/>
<attribute name="PARTREV" value="23"/>
<attribute name="STANDARD" value="Manufacturer Recommendations"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="436500603" urn="urn:adsk.eagle:component:37003285/2" prefix="J" library_version="41">
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
</devicesets>
</library>
<library name="SamacSys_Parts" urn="urn:adsk.eagle:library:36261219">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC1608X90N" urn="urn:adsk.eagle:footprint:37027348/1" library_version="6">
<description>&lt;b&gt;0603(thickness 0.9)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.71" y="0" dx="0.94" dy="0.73" layer="1" rot="R90"/>
<smd name="2" x="0.71" y="0" dx="0.94" dy="0.73" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.225" y1="0.62" x2="1.225" y2="0.62" width="0.05" layer="51"/>
<wire x1="1.225" y1="0.62" x2="1.225" y2="-0.62" width="0.05" layer="51"/>
<wire x1="1.225" y1="-0.62" x2="-1.225" y2="-0.62" width="0.05" layer="51"/>
<wire x1="-1.225" y1="-0.62" x2="-1.225" y2="0.62" width="0.05" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.1" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.1" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.1" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.1" layer="51"/>
</package>
<package name="RESC2013X65N" urn="urn:adsk.eagle:footprint:37027440/1" library_version="8">
<description>&lt;b&gt;0805(royalohm)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.95" y="0" dx="1.45" dy="1" layer="1" rot="R90"/>
<smd name="2" x="0.95" y="0" dx="1.45" dy="1" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.7" y1="1" x2="1.7" y2="1" width="0.05" layer="51"/>
<wire x1="1.7" y1="1" x2="1.7" y2="-1" width="0.05" layer="51"/>
<wire x1="1.7" y1="-1" x2="-1.7" y2="-1" width="0.05" layer="51"/>
<wire x1="-1.7" y1="-1" x2="-1.7" y2="1" width="0.05" layer="51"/>
<wire x1="-1" y1="0.638" x2="1" y2="0.638" width="0.1" layer="51"/>
<wire x1="1" y1="0.638" x2="1" y2="-0.638" width="0.1" layer="51"/>
<wire x1="1" y1="-0.638" x2="-1" y2="-0.638" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.638" x2="-1" y2="0.638" width="0.1" layer="51"/>
<wire x1="0" y1="0.538" x2="0" y2="-0.538" width="0.2" layer="21"/>
</package>
<package name="SOIC127P600X175-14N" urn="urn:adsk.eagle:footprint:37028199/1" library_version="12">
<description>&lt;b&gt;SOT108-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.725" y="3.81" dx="1.55" dy="0.7" layer="1"/>
<smd name="2" x="-2.725" y="2.54" dx="1.55" dy="0.7" layer="1"/>
<smd name="3" x="-2.725" y="1.27" dx="1.55" dy="0.7" layer="1"/>
<smd name="4" x="-2.725" y="0" dx="1.55" dy="0.7" layer="1"/>
<smd name="5" x="-2.725" y="-1.27" dx="1.55" dy="0.7" layer="1"/>
<smd name="6" x="-2.725" y="-2.54" dx="1.55" dy="0.7" layer="1"/>
<smd name="7" x="-2.725" y="-3.81" dx="1.55" dy="0.7" layer="1"/>
<smd name="8" x="2.725" y="-3.81" dx="1.55" dy="0.7" layer="1"/>
<smd name="9" x="2.725" y="-2.54" dx="1.55" dy="0.7" layer="1"/>
<smd name="10" x="2.725" y="-1.27" dx="1.55" dy="0.7" layer="1"/>
<smd name="11" x="2.725" y="0" dx="1.55" dy="0.7" layer="1"/>
<smd name="12" x="2.725" y="1.27" dx="1.55" dy="0.7" layer="1"/>
<smd name="13" x="2.725" y="2.54" dx="1.55" dy="0.7" layer="1"/>
<smd name="14" x="2.725" y="3.81" dx="1.55" dy="0.7" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.75" y1="4.625" x2="3.75" y2="4.625" width="0.05" layer="51"/>
<wire x1="3.75" y1="4.625" x2="3.75" y2="-4.625" width="0.05" layer="51"/>
<wire x1="3.75" y1="-4.625" x2="-3.75" y2="-4.625" width="0.05" layer="51"/>
<wire x1="-3.75" y1="-4.625" x2="-3.75" y2="4.625" width="0.05" layer="51"/>
<wire x1="-1.95" y1="4.325" x2="1.95" y2="4.325" width="0.1" layer="51"/>
<wire x1="1.95" y1="4.325" x2="1.95" y2="-4.325" width="0.1" layer="51"/>
<wire x1="1.95" y1="-4.325" x2="-1.95" y2="-4.325" width="0.1" layer="51"/>
<wire x1="-1.95" y1="-4.325" x2="-1.95" y2="4.325" width="0.1" layer="51"/>
<wire x1="-1.95" y1="3.055" x2="-0.68" y2="4.325" width="0.1" layer="51"/>
<wire x1="-1.6" y1="4.325" x2="1.6" y2="4.325" width="0.2" layer="21"/>
<wire x1="1.6" y1="4.325" x2="1.6" y2="-4.325" width="0.2" layer="21"/>
<wire x1="1.6" y1="-4.325" x2="-1.6" y2="-4.325" width="0.2" layer="21"/>
<wire x1="-1.6" y1="-4.325" x2="-1.6" y2="4.325" width="0.2" layer="21"/>
<wire x1="-3.5" y1="4.51" x2="-1.95" y2="4.51" width="0.2" layer="21"/>
</package>
<package name="HDRV40W64P254_2X20_5080X508X83" urn="urn:adsk.eagle:footprint:37028276/1" library_version="14">
<description>&lt;b&gt;M20-976&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.65" shape="square"/>
<pad name="2" x="0" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="3" x="2.54" y="0" drill="1.1" diameter="1.65"/>
<pad name="4" x="2.54" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="5" x="5.08" y="0" drill="1.1" diameter="1.65"/>
<pad name="6" x="5.08" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="7" x="7.62" y="0" drill="1.1" diameter="1.65"/>
<pad name="8" x="7.62" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="9" x="10.16" y="0" drill="1.1" diameter="1.65"/>
<pad name="10" x="10.16" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="11" x="12.7" y="0" drill="1.1" diameter="1.65"/>
<pad name="12" x="12.7" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="13" x="15.24" y="0" drill="1.1" diameter="1.65"/>
<pad name="14" x="15.24" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="15" x="17.78" y="0" drill="1.1" diameter="1.65"/>
<pad name="16" x="17.78" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="17" x="20.32" y="0" drill="1.1" diameter="1.65"/>
<pad name="18" x="20.32" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="19" x="22.86" y="0" drill="1.1" diameter="1.65"/>
<pad name="20" x="22.86" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="21" x="25.4" y="0" drill="1.1" diameter="1.65"/>
<pad name="22" x="25.4" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="23" x="27.94" y="0" drill="1.1" diameter="1.65"/>
<pad name="24" x="27.94" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="25" x="30.48" y="0" drill="1.1" diameter="1.65"/>
<pad name="26" x="30.48" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="27" x="33.02" y="0" drill="1.1" diameter="1.65"/>
<pad name="28" x="33.02" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="29" x="35.56" y="0" drill="1.1" diameter="1.65"/>
<pad name="30" x="35.56" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="31" x="38.1" y="0" drill="1.1" diameter="1.65"/>
<pad name="32" x="38.1" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="33" x="40.64" y="0" drill="1.1" diameter="1.65"/>
<pad name="34" x="40.64" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="35" x="43.18" y="0" drill="1.1" diameter="1.65"/>
<pad name="36" x="43.18" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="37" x="45.72" y="0" drill="1.1" diameter="1.65"/>
<pad name="38" x="45.72" y="-2.54" drill="1.1" diameter="1.65"/>
<pad name="39" x="48.26" y="0" drill="1.1" diameter="1.65"/>
<pad name="40" x="48.26" y="-2.54" drill="1.1" diameter="1.65"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.695" y1="1.52" x2="49.955" y2="1.52" width="0.05" layer="51"/>
<wire x1="49.955" y1="1.52" x2="49.955" y2="-4.06" width="0.05" layer="51"/>
<wire x1="49.955" y1="-4.06" x2="-1.695" y2="-4.06" width="0.05" layer="51"/>
<wire x1="-1.695" y1="-4.06" x2="-1.695" y2="1.52" width="0.05" layer="51"/>
<wire x1="-1.445" y1="1.27" x2="49.705" y2="1.27" width="0.1" layer="51"/>
<wire x1="49.705" y1="1.27" x2="49.705" y2="-3.81" width="0.1" layer="51"/>
<wire x1="49.705" y1="-3.81" x2="-1.445" y2="-3.81" width="0.1" layer="51"/>
<wire x1="-1.445" y1="-3.81" x2="-1.445" y2="1.27" width="0.1" layer="51"/>
<wire x1="0" y1="1.27" x2="49.705" y2="1.27" width="0.2" layer="21"/>
<wire x1="49.705" y1="1.27" x2="49.705" y2="-3.81" width="0.2" layer="21"/>
<wire x1="49.705" y1="-3.81" x2="-1.445" y2="-3.81" width="0.2" layer="21"/>
<wire x1="-1.445" y1="-3.81" x2="-1.445" y2="0" width="0.2" layer="21"/>
</package>
<package name="DIOAD2855W132L835D505" urn="urn:adsk.eagle:footprint:37028310/1" library_version="16">
<description>&lt;b&gt;DO-201AD&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.5" diameter="2.25" shape="square"/>
<pad name="2" x="28.6" y="0" drill="1.5" diameter="2.25"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.375" y1="2.875" x2="29.975" y2="2.875" width="0.05" layer="51"/>
<wire x1="29.975" y1="2.875" x2="29.975" y2="-2.875" width="0.05" layer="51"/>
<wire x1="29.975" y1="-2.875" x2="-1.375" y2="-2.875" width="0.05" layer="51"/>
<wire x1="-1.375" y1="-2.875" x2="-1.375" y2="2.875" width="0.05" layer="51"/>
<wire x1="10.125" y1="2.525" x2="18.475" y2="2.525" width="0.1" layer="51"/>
<wire x1="18.475" y1="2.525" x2="18.475" y2="-2.525" width="0.1" layer="51"/>
<wire x1="18.475" y1="-2.525" x2="10.125" y2="-2.525" width="0.1" layer="51"/>
<wire x1="10.125" y1="-2.525" x2="10.125" y2="2.525" width="0.1" layer="51"/>
<wire x1="10.125" y1="0" x2="12.65" y2="2.525" width="0.1" layer="51"/>
<wire x1="0" y1="0" x2="10.125" y2="0" width="0.1" layer="51"/>
<wire x1="18.475" y1="0" x2="28.6" y2="0" width="0.1" layer="51"/>
<wire x1="10.125" y1="2.525" x2="18.475" y2="2.525" width="0.2" layer="21"/>
<wire x1="18.475" y1="2.525" x2="18.475" y2="-2.525" width="0.2" layer="21"/>
<wire x1="18.475" y1="-2.525" x2="10.125" y2="-2.525" width="0.2" layer="21"/>
<wire x1="10.125" y1="-2.525" x2="10.125" y2="2.525" width="0.2" layer="21"/>
<wire x1="10.125" y1="0" x2="12.65" y2="2.525" width="0.2" layer="21"/>
<wire x1="1.475" y1="0" x2="10.125" y2="0" width="0.2" layer="21"/>
<wire x1="18.475" y1="0" x2="27.125" y2="0" width="0.2" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="CAPC1608X90N" urn="urn:adsk.eagle:package:37027349/2" type="model" library_version="6">
<description>&lt;b&gt;0603(thickness 0.9)&lt;/b&gt;&lt;br&gt;</description>
<packageinstances>
<packageinstance name="CAPC1608X90N"/>
</packageinstances>
</package3d>
<package3d name="RESC2013X65N" urn="urn:adsk.eagle:package:37027441/2" type="model" library_version="8">
<description>&lt;b&gt;0805(royalohm)&lt;/b&gt;&lt;br&gt;</description>
<packageinstances>
<packageinstance name="RESC2013X65N"/>
</packageinstances>
</package3d>
<package3d name="SOIC127P600X175-14N" urn="urn:adsk.eagle:package:37028200/2" type="model" library_version="12">
<description>&lt;b&gt;SOT108-1&lt;/b&gt;&lt;br&gt;</description>
<packageinstances>
<packageinstance name="SOIC127P600X175-14N"/>
</packageinstances>
</package3d>
<package3d name="HDRV40W64P254_2X20_5080X508X83" urn="urn:adsk.eagle:package:37028277/2" type="model" library_version="14">
<description>&lt;b&gt;M20-976&lt;/b&gt;&lt;br&gt;</description>
<packageinstances>
<packageinstance name="HDRV40W64P254_2X20_5080X508X83"/>
</packageinstances>
</package3d>
<package3d name="DIOAD2855W132L835D505" urn="urn:adsk.eagle:package:37028311/2" type="model" library_version="16">
<description>&lt;b&gt;DO-201AD&lt;/b&gt;&lt;br&gt;</description>
<packageinstances>
<packageinstance name="DIOAD2855W132L835D505"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="CL10B104KA8NNNC" urn="urn:adsk.eagle:symbol:37027345/1" library_version="6">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="0805W8F1500T5E" urn="urn:adsk.eagle:symbol:37027439/1" library_version="8">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="74HCT14D,653" urn="urn:adsk.eagle:symbol:37028198/1" library_version="12">
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-17.78" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-17.78" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<text x="21.59" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1A" x="0" y="0" length="middle"/>
<pin name="1Y" x="0" y="-2.54" length="middle"/>
<pin name="2A" x="0" y="-5.08" length="middle"/>
<pin name="2Y" x="0" y="-7.62" length="middle"/>
<pin name="3A" x="0" y="-10.16" length="middle"/>
<pin name="3Y" x="0" y="-12.7" length="middle"/>
<pin name="GND" x="0" y="-15.24" length="middle"/>
<pin name="VCC" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="6A" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="6Y" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="5A" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="5Y" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="4A" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="4Y" x="25.4" y="-15.24" length="middle" rot="R180"/>
</symbol>
<symbol name="M20-9762042" urn="urn:adsk.eagle:symbol:37028275/1" library_version="14">
<wire x1="5.08" y1="2.54" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-50.8" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-50.8" x2="5.08" y2="-50.8" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-50.8" width="0.254" layer="94"/>
<text x="19.05" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="19.05" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="3" x="0" y="-2.54" length="middle"/>
<pin name="5" x="0" y="-5.08" length="middle"/>
<pin name="7" x="0" y="-7.62" length="middle"/>
<pin name="9" x="0" y="-10.16" length="middle"/>
<pin name="11" x="0" y="-12.7" length="middle"/>
<pin name="13" x="0" y="-15.24" length="middle"/>
<pin name="15" x="0" y="-17.78" length="middle"/>
<pin name="17" x="0" y="-20.32" length="middle"/>
<pin name="19" x="0" y="-22.86" length="middle"/>
<pin name="21" x="0" y="-25.4" length="middle"/>
<pin name="23" x="0" y="-27.94" length="middle"/>
<pin name="25" x="0" y="-30.48" length="middle"/>
<pin name="27" x="0" y="-33.02" length="middle"/>
<pin name="29" x="0" y="-35.56" length="middle"/>
<pin name="31" x="0" y="-38.1" length="middle"/>
<pin name="33" x="0" y="-40.64" length="middle"/>
<pin name="35" x="0" y="-43.18" length="middle"/>
<pin name="37" x="0" y="-45.72" length="middle"/>
<pin name="39" x="0" y="-48.26" length="middle"/>
<pin name="2" x="22.86" y="0" length="middle" rot="R180"/>
<pin name="4" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="8" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="10" x="22.86" y="-10.16" length="middle" rot="R180"/>
<pin name="12" x="22.86" y="-12.7" length="middle" rot="R180"/>
<pin name="14" x="22.86" y="-15.24" length="middle" rot="R180"/>
<pin name="16" x="22.86" y="-17.78" length="middle" rot="R180"/>
<pin name="18" x="22.86" y="-20.32" length="middle" rot="R180"/>
<pin name="20" x="22.86" y="-22.86" length="middle" rot="R180"/>
<pin name="22" x="22.86" y="-25.4" length="middle" rot="R180"/>
<pin name="24" x="22.86" y="-27.94" length="middle" rot="R180"/>
<pin name="26" x="22.86" y="-30.48" length="middle" rot="R180"/>
<pin name="28" x="22.86" y="-33.02" length="middle" rot="R180"/>
<pin name="30" x="22.86" y="-35.56" length="middle" rot="R180"/>
<pin name="32" x="22.86" y="-38.1" length="middle" rot="R180"/>
<pin name="34" x="22.86" y="-40.64" length="middle" rot="R180"/>
<pin name="36" x="22.86" y="-43.18" length="middle" rot="R180"/>
<pin name="38" x="22.86" y="-45.72" length="middle" rot="R180"/>
<pin name="40" x="22.86" y="-48.26" length="middle" rot="R180"/>
</symbol>
<symbol name="UF5408-E3_54" urn="urn:adsk.eagle:symbol:37028309/1" library_version="16">
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="12.7" y2="0" width="0.254" layer="94"/>
<text x="11.43" y="5.08" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="11.43" y="2.54" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="K" x="0" y="0" visible="pad" length="short"/>
<pin name="A" x="15.24" y="0" visible="pad" length="short" rot="R180"/>
<polygon width="0.254" layer="94">
<vertex x="5.08" y="0"/>
<vertex x="10.16" y="2.54"/>
<vertex x="10.16" y="-2.54"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="CL10B104KA8NNNC" urn="urn:adsk.eagle:component:37027351/3" prefix="C" library_version="6">
<description>&lt;b&gt;Ceramic cap 0603 X7R 25V 100nF (Reel) Samsung Electro-Mechanics 100nF Multilayer Ceramic Capacitor (MLCC) 25 V +/-10% X7R dielectric CL max op. temp. +125C&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://media.digikey.com/pdf/Data Sheets/Samsung PDFs/CL_Series_MLCC_ds.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CL10B104KA8NNNC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC1608X90N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37027349/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="CL10B104KA8NNNC" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/cl10b104ka8nnnc/samsung-electro-mechanics?region=europe" constant="no"/>
<attribute name="DESCRIPTION" value="Ceramic cap 0603 X7R 25V 100nF (Reel) Samsung Electro-Mechanics 100nF Multilayer Ceramic Capacitor (MLCC) 25 V +/-10% X7R dielectric CL max op. temp. +125C" constant="no"/>
<attribute name="HEIGHT" value="0.9mm" constant="no"/>
<attribute name="LCSC_PART" value="C1590"/>
<attribute name="MANUFACTURER_NAME" value="Samsung Electro-Mechanics" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL10B104KA8NNNC" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="187-CL10B104KA8NNNC" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Samsung-Electro-Mechanics/CL10B104KA8NNNC?qs=349EhDEZ59rmu3pGeZXx0A%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0805W8F1500T5E" urn="urn:adsk.eagle:component:37027442/2" prefix="R" library_version="8">
<description>&lt;b&gt;Thick Film Resistors - SMD 0805 1/8W 1% 150R T/R-5000&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.lcsc.com/lcsc/2206010216_UNI-ROYAL-Uniroyal-Elec-0805W8F1500T5E_C17471.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="0805W8F1500T5E" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC2013X65N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37027441/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Thick Film Resistors - SMD 0805 1/8W 1% 150R T/R-5000" constant="no"/>
<attribute name="HEIGHT" value="0.65mm" constant="no"/>
<attribute name="LCSC_PART" value="C17471"/>
<attribute name="MANUFACTURER_NAME" value="ROYALOHM" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="0805W8F1500T5E" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74HCT14D,653" urn="urn:adsk.eagle:component:37028201/3" prefix="IC" library_version="12">
<description>&lt;b&gt;74HC(T)14 - Hex inverting Schmitt trigger@en-us&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://assets.nexperia.com/documents/data-sheet/74HC_HCT14.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="74HCT14D,653" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P600X175-14N">
<connects>
<connect gate="G$1" pin="1A" pad="1"/>
<connect gate="G$1" pin="1Y" pad="2"/>
<connect gate="G$1" pin="2A" pad="3"/>
<connect gate="G$1" pin="2Y" pad="4"/>
<connect gate="G$1" pin="3A" pad="5"/>
<connect gate="G$1" pin="3Y" pad="6"/>
<connect gate="G$1" pin="4A" pad="9"/>
<connect gate="G$1" pin="4Y" pad="8"/>
<connect gate="G$1" pin="5A" pad="11"/>
<connect gate="G$1" pin="5Y" pad="10"/>
<connect gate="G$1" pin="6A" pad="13"/>
<connect gate="G$1" pin="6Y" pad="12"/>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="VCC" pad="14"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37028200/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="74HCT14D,653" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/74hct14d653/nexperia?region=europe" constant="no"/>
<attribute name="DESCRIPTION" value="74HC(T)14 - Hex inverting Schmitt trigger@en-us" constant="no"/>
<attribute name="HEIGHT" value="1.75mm" constant="no"/>
<attribute name="LCSC_PART" value="C5967"/>
<attribute name="MANUFACTURER_NAME" value="Nexperia" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="74HCT14D,653" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="771-74HCT14D-T" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Nexperia/74HCT14D653?qs=P62ublwmbi%2FQcvMOcCK30w%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
<attribute name="PACKAGE" value="SOIC-14_3.9x8.7x1.27P" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M20-9762042" urn="urn:adsk.eagle:component:37028278/2" prefix="J" library_version="14">
<description>&lt;b&gt;Headers &amp; Wire Housings 20+20 DIL VERTICAL PIN HEADER GOLD+TIN&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://cdn.harwin.com/pdfs/M20-976.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="M20-9762042" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDRV40W64P254_2X20_5080X508X83">
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
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37028277/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Headers &amp; Wire Housings 20+20 DIL VERTICAL PIN HEADER GOLD+TIN" constant="no"/>
<attribute name="HEIGHT" value="8.38mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Harwin" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="M20-9762042" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="855-M20-9762042" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Harwin/M20-9762042?qs=vF78I%252BjhbY9cC9ob9MEFaw%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UF5408-E3_54" urn="urn:adsk.eagle:component:37028312/2" prefix="D" library_version="16">
<description>&lt;b&gt;Rectifiers Vr/1000V Io/3A&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/UF5408-E3_54.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="UF5408-E3_54" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIOAD2855W132L835D505">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37028311/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="UF5408-E3/54" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/uf5408-e354/vishay?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Rectifiers Vr/1000V Io/3A" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Vishay" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UF5408-E3/54" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="625-UF5408-E3" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Vishay-General-Semiconductor/UF5408-E3-54?qs=D6r9GjgEnNMkLmquNRV%2FYA%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
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
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
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
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
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
<part name="C2" library="SamacSys_Parts" deviceset="CL31B334KACNNNC" device=""/>
<part name="U1" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TLP2362(TPL,E(T" device="" package3d_urn="urn:adsk.eagle:package:37021469/2"/>
<part name="U2" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TLP2362(TPL,E(T" device="" package3d_urn="urn:adsk.eagle:package:37021469/2"/>
<part name="U3" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TLP2362(TPL,E(T" device="" package3d_urn="urn:adsk.eagle:package:37021469/2"/>
<part name="U4" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TLP2362(TPL,E(T" device="" package3d_urn="urn:adsk.eagle:package:37021469/2"/>
<part name="U5" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="L78M05ABDT-TR" device="" package3d_urn="urn:adsk.eagle:package:37027273/2"/>
<part name="C1" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="CL10B104KA8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37027349/2"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="J1" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="436500603" device="" package3d_urn="urn:adsk.eagle:package:37003284/2"/>
<part name="SJ5" library="jumper" library_urn="urn:adsk.eagle:library:252" deviceset="SJ2W" device="" package3d_urn="urn:adsk.eagle:package:15474/1"/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="C3" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="CL10B104KA8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37027349/2"/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C4" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="CL10B104KA8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37027349/2"/>
<part name="C5" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="CL10B104KA8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37027349/2"/>
<part name="C6" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="CL10B104KA8NNNC" device="" package3d_urn="urn:adsk.eagle:package:37027349/2"/>
<part name="R1" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="J5" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TB002-500-02BE" device="" package3d_urn="urn:adsk.eagle:package:36422753/2"/>
<part name="J7" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TB002-500-02BE" device="" package3d_urn="urn:adsk.eagle:package:36422753/2"/>
<part name="J8" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TB002-500-02BE" device="" package3d_urn="urn:adsk.eagle:package:36422753/2"/>
<part name="J9" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="436500603" device="" package3d_urn="urn:adsk.eagle:package:37003284/2"/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="R2" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R3" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R4" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="IC1" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="74HCT14D,653" device="" package3d_urn="urn:adsk.eagle:package:37028200/2"/>
<part name="R5" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R6" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R7" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R8" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R9" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R10" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R11" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R12" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R13" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R14" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R15" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="R16" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="0805W8F1500T5E" device="" package3d_urn="urn:adsk.eagle:package:37027441/2"/>
<part name="J2" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="M20-9762042" device="" package3d_urn="urn:adsk.eagle:package:37028277/2"/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="D2" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="D1" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="D3" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="D4" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="D5" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="D6" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="D7" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="D8" library="SamacSys_Parts" library_urn="urn:adsk.eagle:library:36261219" deviceset="UF5408-E3_54" device="" package3d_urn="urn:adsk.eagle:package:37028311/2"/>
<part name="J3" library="SnapEDA Library" library_urn="urn:adsk.eagle:library:36272931" deviceset="TB002-500-02BE" device="" package3d_urn="urn:adsk.eagle:package:36422753/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="C2" gate="G$1" x="-121.92" y="66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="-125.73" y="57.15" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-146.05" y="62.23" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="U1" gate="A" x="10.16" y="73.66" smashed="yes">
<attribute name="NAME" x="7.2898" y="73.025" size="1.27" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="U2" gate="A" x="10.16" y="48.26" smashed="yes">
<attribute name="NAME" x="7.2898" y="47.625" size="1.27" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="U3" gate="A" x="10.16" y="22.86" smashed="yes">
<attribute name="NAME" x="7.2898" y="22.225" size="1.27" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="U4" gate="A" x="10.16" y="-2.54" smashed="yes">
<attribute name="NAME" x="7.2898" y="-3.175" size="1.27" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="U5" gate="G$1" x="-99.06" y="63.5" smashed="yes">
<attribute name="NAME" x="-109.22" y="69.85" size="1.778" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="-109.22" y="57.15" size="1.778" layer="96" ratio="10" rot="SMR180"/>
</instance>
<instance part="C1" gate="G$1" x="-76.2" y="66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="-74.93" y="57.15" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-74.93" y="62.23" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND1" gate="1" x="-99.06" y="50.8" smashed="yes">
<attribute name="VALUE" x="-101.6" y="48.26" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="1" x="-60.96" y="86.36" smashed="yes">
<attribute name="VALUE" x="-63.5" y="81.28" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="J1" gate="G$1" x="-53.34" y="38.1" smashed="yes" rot="MR0">
<attribute name="NAME" x="-53.34" y="52.07" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-53.34" y="22.86" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="SJ5" gate="G$1" x="-60.96" y="73.66" smashed="yes" rot="R270">
<attribute name="NAME" x="-60.579" y="71.12" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-62.865" y="71.12" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND4" gate="1" x="-43.18" y="7.62" smashed="yes">
<attribute name="VALUE" x="-45.72" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="P+4" gate="1" x="40.64" y="83.82" smashed="yes">
<attribute name="VALUE" x="38.1" y="78.74" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C3" gate="G$1" x="40.64" y="71.12" smashed="yes">
<attribute name="NAME" x="44.45" y="67.31" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="41.91" y="74.93" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND5" gate="1" x="53.34" y="-35.56" smashed="yes">
<attribute name="VALUE" x="50.8" y="-38.1" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="40.64" y="45.72" smashed="yes">
<attribute name="NAME" x="44.45" y="41.91" size="1.778" layer="95" align="center-left"/>
</instance>
<instance part="C5" gate="G$1" x="40.64" y="20.32" smashed="yes">
<attribute name="NAME" x="44.45" y="16.51" size="1.778" layer="95" align="center-left"/>
</instance>
<instance part="C6" gate="G$1" x="40.64" y="-5.08" smashed="yes">
<attribute name="NAME" x="44.45" y="-8.89" size="1.778" layer="95" align="center-left"/>
</instance>
<instance part="R1" gate="G$1" x="-20.32" y="71.12" smashed="yes">
<attribute name="NAME" x="-11.43" y="74.93" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-19.05" y="67.31" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J5" gate="G$1" x="-86.36" y="27.94" smashed="yes">
<attribute name="NAME" x="-91.94" y="33.02" size="1.778" layer="95"/>
<attribute name="VALUE" x="-91.44" y="22.86" size="1.778" layer="96"/>
</instance>
<instance part="J7" gate="G$1" x="-106.68" y="2.54" smashed="yes">
<attribute name="NAME" x="-112.26" y="7.62" size="1.778" layer="95"/>
<attribute name="VALUE" x="-111.76" y="-2.54" size="1.778" layer="96"/>
</instance>
<instance part="J8" gate="G$1" x="-106.68" y="-10.16" smashed="yes">
<attribute name="NAME" x="-112.26" y="-5.08" size="1.778" layer="95"/>
<attribute name="VALUE" x="-111.76" y="-15.24" size="1.778" layer="96"/>
</instance>
<instance part="J9" gate="G$1" x="-172.72" y="2.54" smashed="yes" rot="R180">
<attribute name="NAME" x="-172.72" y="-11.43" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-172.72" y="17.78" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND6" gate="1" x="-96.52" y="-50.8" smashed="yes">
<attribute name="VALUE" x="-99.06" y="-53.34" size="1.778" layer="96"/>
</instance>
<instance part="P+5" gate="VCC" x="-116.84" y="38.1" smashed="yes">
<attribute name="VALUE" x="-119.38" y="35.56" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+6" gate="VCC" x="-121.92" y="76.2" smashed="yes">
<attribute name="VALUE" x="-124.46" y="73.66" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R2" gate="G$1" x="-20.32" y="45.72" smashed="yes">
<attribute name="NAME" x="-11.43" y="49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-19.05" y="41.91" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R3" gate="G$1" x="-17.78" y="20.32" smashed="yes">
<attribute name="NAME" x="-8.89" y="24.13" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-16.51" y="16.51" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R4" gate="G$1" x="-20.32" y="-5.08" smashed="yes">
<attribute name="NAME" x="-11.43" y="-1.27" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-19.05" y="-8.89" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC1" gate="G$1" x="93.98" y="35.56" smashed="yes">
<attribute name="NAME" x="100.33" y="43.18" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="100.33" y="40.64" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R5" gate="G$1" x="76.2" y="71.12" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="72.39" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="82.55" y="67.31" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R6" gate="G$1" x="76.2" y="66.04" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="67.31" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R7" gate="G$1" x="76.2" y="60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="62.23" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R8" gate="G$1" x="76.2" y="50.8" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="52.07" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R9" gate="G$1" x="76.2" y="45.72" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="46.99" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R10" gate="G$1" x="76.2" y="40.64" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="41.91" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R11" gate="G$1" x="76.2" y="25.4" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="26.67" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R12" gate="G$1" x="76.2" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="21.59" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R13" gate="G$1" x="76.2" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="16.51" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R14" gate="G$1" x="76.2" y="0" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="1.27" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R15" gate="G$1" x="76.2" y="-5.08" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="-3.81" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="R16" gate="G$1" x="76.2" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="77.47" y="-8.89" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="J2" gate="G$1" x="-73.66" y="-22.86" smashed="yes">
<attribute name="NAME" x="-54.61" y="-15.24" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-54.61" y="-17.78" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND2" gate="1" x="-40.64" y="-33.02" smashed="yes">
<attribute name="VALUE" x="-43.18" y="-35.56" size="1.778" layer="96"/>
</instance>
<instance part="D2" gate="G$1" x="-132.08" y="27.94" smashed="yes" rot="R270">
<attribute name="NAME" x="-127" y="16.51" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="D1" gate="G$1" x="-121.92" y="27.94" smashed="yes" rot="R270">
<attribute name="NAME" x="-116.84" y="16.51" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-128.27" y="33.02" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="D3" gate="G$1" x="-142.24" y="27.94" smashed="yes" rot="R270">
<attribute name="NAME" x="-137.16" y="16.51" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="D4" gate="G$1" x="-152.4" y="27.94" smashed="yes" rot="R270">
<attribute name="NAME" x="-147.32" y="16.51" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="D5" gate="G$1" x="-121.92" y="-10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="-116.84" y="-21.59" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="D6" gate="G$1" x="-132.08" y="-10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="-127" y="-21.59" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="D7" gate="G$1" x="-142.24" y="-10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="-137.16" y="-21.59" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="D8" gate="G$1" x="-152.4" y="-10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="-147.32" y="-21.59" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="J3" gate="G$1" x="-88.9" y="15.24" smashed="yes">
<attribute name="NAME" x="-94.48" y="20.32" size="1.778" layer="95"/>
<attribute name="VALUE" x="-93.98" y="10.16" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-121.92" y1="53.34" x2="-99.06" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="GND"/>
<wire x1="-99.06" y1="53.34" x2="-83.82" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="53.34" x2="-76.2" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="60.96" x2="-83.82" y2="53.34" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<junction x="-99.06" y="53.34"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="53.34" y1="71.12" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="53.34" y1="60.96" x2="53.34" y2="45.72" width="0.1524" layer="91"/>
<wire x1="53.34" y1="45.72" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<junction x="53.34" y="45.72"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="53.34" y1="35.56" x2="53.34" y2="20.32" width="0.1524" layer="91"/>
<wire x1="53.34" y1="20.32" x2="53.34" y2="10.16" width="0.1524" layer="91"/>
<junction x="53.34" y="20.32"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="53.34" y1="10.16" x2="53.34" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-5.08" x2="53.34" y2="-15.24" width="0.1524" layer="91"/>
<junction x="53.34" y="-5.08"/>
<wire x1="53.34" y1="-15.24" x2="53.34" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-30.48" x2="53.34" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="27.94" y1="10.16" x2="27.9654" y2="10.16" width="0.1524" layer="91"/>
<wire x1="27.9654" y1="10.16" x2="53.34" y2="10.16" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-15.24" x2="27.9654" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="27.9654" y1="-15.24" x2="53.34" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="27.94" y1="35.56" x2="27.9654" y2="35.56" width="0.1524" layer="91"/>
<wire x1="27.9654" y1="35.56" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<wire x1="27.94" y1="60.96" x2="27.9654" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="4"/>
<wire x1="27.9654" y1="60.96" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<junction x="27.9654" y="60.96"/>
<pinref part="U2" gate="A" pin="4"/>
<junction x="27.9654" y="35.56"/>
<pinref part="U3" gate="A" pin="4"/>
<junction x="27.9654" y="10.16"/>
<pinref part="U4" gate="A" pin="4"/>
<junction x="27.9654" y="-15.24"/>
<wire x1="7.6454" y1="53.34" x2="27.94" y2="53.34" width="0.1524" layer="91"/>
<wire x1="27.94" y1="53.34" x2="27.94" y2="60.96" width="0.1524" layer="91"/>
<wire x1="7.6454" y1="27.94" x2="27.94" y2="27.94" width="0.1524" layer="91"/>
<wire x1="27.94" y1="27.94" x2="27.94" y2="35.56" width="0.1524" layer="91"/>
<wire x1="7.6454" y1="2.54" x2="27.94" y2="2.54" width="0.1524" layer="91"/>
<wire x1="27.94" y1="2.54" x2="27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-22.86" x2="27.94" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-22.86" x2="27.94" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="53.34" y1="-30.48" x2="93.98" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-30.48" x2="93.98" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="3"/>
<wire x1="7.6454" y1="60.96" x2="7.6454" y2="53.34" width="0.1524" layer="91"/>
<wire x1="7.6454" y1="53.34" x2="7.62" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="3"/>
<wire x1="7.6454" y1="35.56" x2="7.6454" y2="27.94" width="0.1524" layer="91"/>
<wire x1="7.6454" y1="27.94" x2="7.62" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U3" gate="A" pin="3"/>
<wire x1="7.6454" y1="10.16" x2="7.6454" y2="2.54" width="0.1524" layer="91"/>
<wire x1="7.6454" y1="2.54" x2="7.62" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U4" gate="A" pin="3"/>
<wire x1="7.6454" y1="-15.24" x2="7.62" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="-48.26" y1="38.1" x2="-43.18" y2="38.1" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="-43.18" y1="38.1" x2="-43.18" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J5" gate="G$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="-96.52" y1="27.94" x2="-96.52" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="10.16" x2="-96.52" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="-30.48" x2="-96.52" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="-30.48" x2="-121.92" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="-30.48" x2="-132.08" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="-30.48" x2="-142.24" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-142.24" y1="-30.48" x2="-152.4" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-152.4" y1="-30.48" x2="-165.1" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="-30.48" x2="-165.1" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J9" gate="G$1" pin="5"/>
<wire x1="-165.1" y1="-5.08" x2="-165.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="2.54" x2="-167.64" y2="2.54" width="0.1524" layer="91"/>
<pinref part="J9" gate="G$1" pin="2"/>
<wire x1="-165.1" y1="-5.08" x2="-167.64" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="D8" gate="G$1" pin="A"/>
<wire x1="-152.4" y1="-25.4" x2="-152.4" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="D7" gate="G$1" pin="A"/>
<wire x1="-142.24" y1="-25.4" x2="-142.24" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="D6" gate="G$1" pin="A"/>
<wire x1="-132.08" y1="-25.4" x2="-132.08" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="D5" gate="G$1" pin="A"/>
<wire x1="-121.92" y1="-25.4" x2="-121.92" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="2"/>
<wire x1="-99.06" y1="15.24" x2="-99.06" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="10.16" x2="-96.52" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="6"/>
<wire x1="-50.8" y1="-27.94" x2="-40.64" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="-40.64" y1="-27.94" x2="-40.64" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="OUT"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-83.82" y1="66.04" x2="-76.2" y2="66.04" width="0.1524" layer="91"/>
<pinref part="SJ5" gate="G$1" pin="3"/>
<wire x1="-66.04" y1="73.66" x2="-76.2" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="73.66" x2="-76.2" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="P+1" gate="1" pin="+5V"/>
<pinref part="SJ5" gate="G$1" pin="2"/>
<wire x1="-60.96" y1="83.82" x2="-60.96" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+4" gate="1" pin="+5V"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="40.64" y1="81.28" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
<wire x1="40.64" y1="78.74" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="40.64" y1="71.12" x2="40.64" y2="45.72" width="0.1524" layer="91"/>
<wire x1="40.64" y1="45.72" x2="40.64" y2="20.32" width="0.1524" layer="91"/>
<wire x1="40.64" y1="20.32" x2="40.64" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U4" gate="A" pin="6"/>
<wire x1="40.64" y1="-5.08" x2="27.9654" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="27.94" y1="20.32" x2="27.9654" y2="20.32" width="0.1524" layer="91"/>
<wire x1="27.9654" y1="20.32" x2="40.64" y2="20.32" width="0.1524" layer="91"/>
<wire x1="27.94" y1="45.72" x2="27.9654" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="6"/>
<wire x1="27.9654" y1="45.72" x2="40.64" y2="45.72" width="0.1524" layer="91"/>
<wire x1="27.9654" y1="71.12" x2="27.94" y2="71.12" width="0.1524" layer="91"/>
<wire x1="27.9654" y1="71.12" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="6"/>
<junction x="27.9654" y="45.72"/>
<pinref part="U3" gate="A" pin="6"/>
<junction x="27.9654" y="20.32"/>
<pinref part="C3" gate="G$1" pin="1"/>
<junction x="40.64" y="71.12"/>
<pinref part="C4" gate="G$1" pin="1"/>
<junction x="40.64" y="45.72"/>
<pinref part="C5" gate="G$1" pin="1"/>
<junction x="40.64" y="20.32"/>
<wire x1="40.64" y1="78.74" x2="-35.56" y2="78.74" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-27.94" x2="124.46" y2="35.56" width="0.1524" layer="91"/>
<wire x1="124.46" y1="35.56" x2="124.46" y2="78.74" width="0.1524" layer="91"/>
<wire x1="124.46" y1="78.74" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
<wire x1="76.2" y1="78.74" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VCC"/>
<wire x1="119.38" y1="35.56" x2="124.46" y2="35.56" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="76.2" y1="78.74" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<junction x="76.2" y="78.74"/>
<wire x1="76.2" y1="71.12" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<junction x="76.2" y="71.12"/>
<wire x1="81.28" y1="71.12" x2="81.28" y2="50.8" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="81.28" y1="50.8" x2="76.2" y2="50.8" width="0.1524" layer="91"/>
<wire x1="81.28" y1="50.8" x2="81.28" y2="25.4" width="0.1524" layer="91"/>
<junction x="81.28" y="50.8"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="81.28" y1="25.4" x2="76.2" y2="25.4" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="81.28" y1="25.4" x2="81.28" y2="0" width="0.1524" layer="91"/>
<wire x1="81.28" y1="0" x2="76.2" y2="0" width="0.1524" layer="91"/>
<junction x="81.28" y="25.4"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="-48.26" y1="35.56" x2="-38.1" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="35.56" x2="-38.1" y2="73.66" width="0.1524" layer="91"/>
<pinref part="SJ5" gate="G$1" pin="1"/>
<wire x1="-38.1" y1="73.66" x2="-55.88" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="-48.26" y1="48.26" x2="-20.32" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="48.26" x2="-20.32" y2="71.12" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="-48.26" y1="43.18" x2="-17.78" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="43.18" x2="-17.78" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="-48.26" y1="40.64" x2="-20.32" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="40.64" x2="-20.32" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="4"/>
<pinref part="R4" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<wire x1="-116.84" y1="35.56" x2="-116.84" y2="30.48" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="1"/>
<wire x1="-116.84" y1="30.48" x2="-101.6" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="K"/>
<wire x1="-101.6" y1="30.48" x2="-96.52" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-152.4" y1="27.94" x2="-152.4" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-152.4" y1="30.48" x2="-142.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-142.24" y1="30.48" x2="-132.08" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="K"/>
<wire x1="-132.08" y1="30.48" x2="-121.92" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="30.48" x2="-121.92" y2="27.94" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="K"/>
<wire x1="-142.24" y1="27.94" x2="-142.24" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="K"/>
<wire x1="-132.08" y1="27.94" x2="-132.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="30.48" x2="-116.84" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="30.48" x2="-101.6" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="1"/>
<wire x1="-101.6" y1="17.78" x2="-99.06" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="U5" gate="G$1" pin="IN"/>
<wire x1="-121.92" y1="66.04" x2="-114.3" y2="66.04" width="0.1524" layer="91"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<wire x1="-121.92" y1="73.66" x2="-121.92" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="27.94" y1="66.04" x2="27.9654" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="5"/>
<wire x1="27.9654" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91"/>
<junction x="27.9654" y="66.04"/>
<wire x1="55.88" y1="66.04" x2="55.88" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="55.88" y1="60.96" x2="58.42" y2="60.96" width="0.1524" layer="91"/>
<wire x1="58.42" y1="60.96" x2="58.42" y2="55.88" width="0.1524" layer="91"/>
<junction x="58.42" y="60.96"/>
<wire x1="58.42" y1="55.88" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="55.88" x2="88.9" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="1A"/>
<wire x1="88.9" y1="35.56" x2="93.98" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="58.42" y1="71.12" x2="58.42" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="76.2" y1="66.04" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="58.42" y1="50.8" x2="58.42" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="76.2" y1="45.72" x2="76.2" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="58.42" y1="25.4" x2="58.42" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="76.2" y1="20.32" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<wire x1="27.94" y1="-10.16" x2="27.9654" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="U4" gate="A" pin="5"/>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="27.9654" y1="-10.16" x2="58.42" y2="-10.16" width="0.1524" layer="91"/>
<junction x="27.9654" y="-10.16"/>
<wire x1="58.42" y1="-10.16" x2="58.42" y2="-15.24" width="0.1524" layer="91"/>
<junction x="58.42" y="-10.16"/>
<wire x1="58.42" y1="-15.24" x2="121.92" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-15.24" x2="121.92" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="4A"/>
<wire x1="121.92" y1="22.86" x2="119.38" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="58.42" y1="0" x2="58.42" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="1"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="76.2" y1="-5.08" x2="76.2" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PWM1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="1Y"/>
<wire x1="93.98" y1="33.02" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<label x="88.9" y="33.02" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="32"/>
<wire x1="-48.26" y1="-60.96" x2="-50.8" y2="-60.96" width="0.1524" layer="91"/>
<label x="-48.26" y="-60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="2Y"/>
<wire x1="93.98" y1="27.94" x2="88.9" y2="27.94" width="0.1524" layer="91"/>
<label x="88.9" y="27.94" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="37"/>
<wire x1="-78.74" y1="-68.58" x2="-73.66" y2="-68.58" width="0.1524" layer="91"/>
<label x="-78.74" y="-68.58" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="PWM3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="3Y"/>
<wire x1="93.98" y1="22.86" x2="88.9" y2="22.86" width="0.1524" layer="91"/>
<label x="88.9" y="22.86" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="33"/>
<wire x1="-78.74" y1="-63.5" x2="-73.66" y2="-63.5" width="0.1524" layer="91"/>
<label x="-78.74" y="-63.5" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="PWM4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="4Y"/>
<wire x1="119.38" y1="20.32" x2="111.76" y2="20.32" width="0.1524" layer="91"/>
<label x="119.38" y="20.32" size="1.778" layer="95" rot="R180" align="bottom-right"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="18"/>
<wire x1="-48.26" y1="-43.18" x2="-50.8" y2="-43.18" width="0.1524" layer="91"/>
<label x="-48.26" y="-43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="J7" gate="G$1" pin="1"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="-116.84" y1="5.08" x2="-152.4" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D8" gate="G$1" pin="K"/>
<wire x1="-152.4" y1="12.7" x2="-152.4" y2="5.08" width="0.1524" layer="91"/>
<pinref part="J9" gate="G$1" pin="6"/>
<wire x1="-152.4" y1="5.08" x2="-152.4" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-152.4" y1="5.08" x2="-167.64" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="J7" gate="G$1" pin="2"/>
<wire x1="-116.84" y1="2.54" x2="-142.24" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="A"/>
<pinref part="D7" gate="G$1" pin="K"/>
<wire x1="-142.24" y1="12.7" x2="-142.24" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-142.24" y1="2.54" x2="-142.24" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-142.24" y1="2.54" x2="-157.48" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="2.54" x2="-157.48" y2="0" width="0.1524" layer="91"/>
<pinref part="J9" gate="G$1" pin="4"/>
<wire x1="-157.48" y1="0" x2="-167.64" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="J8" gate="G$1" pin="1"/>
<wire x1="-116.84" y1="-7.62" x2="-132.08" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="D6" gate="G$1" pin="K"/>
<wire x1="-132.08" y1="12.7" x2="-132.08" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="-7.62" x2="-132.08" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="-7.62" x2="-157.48" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="-7.62" x2="-157.48" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="J9" gate="G$1" pin="3"/>
<wire x1="-157.48" y1="-2.54" x2="-167.64" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="J8" gate="G$1" pin="2"/>
<pinref part="D5" gate="G$1" pin="K"/>
<wire x1="-116.84" y1="-10.16" x2="-121.92" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="-121.92" y1="12.7" x2="-121.92" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="-10.16" x2="-167.64" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="J9" gate="G$1" pin="1"/>
<wire x1="-167.64" y1="-10.16" x2="-167.64" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="27.94" y1="40.64" x2="27.9654" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="5"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="27.9654" y1="40.64" x2="58.42" y2="40.64" width="0.1524" layer="91"/>
<junction x="27.9654" y="40.64"/>
<wire x1="58.42" y1="40.64" x2="58.42" y2="30.48" width="0.1524" layer="91"/>
<junction x="58.42" y="40.64"/>
<pinref part="IC1" gate="G$1" pin="2A"/>
<wire x1="58.42" y1="30.48" x2="93.98" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="27.94" y1="15.24" x2="27.9654" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U3" gate="A" pin="5"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="27.9654" y1="15.24" x2="58.42" y2="15.24" width="0.1524" layer="91"/>
<junction x="27.9654" y="15.24"/>
<wire x1="58.42" y1="15.24" x2="58.42" y2="10.16" width="0.1524" layer="91"/>
<junction x="58.42" y="15.24"/>
<wire x1="58.42" y1="10.16" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="10.16" x2="83.82" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="3A"/>
<wire x1="83.82" y1="25.4" x2="93.98" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="U1" gate="A" pin="1"/>
<wire x1="-2.54" y1="71.12" x2="7.6454" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-48.26" y1="45.72" x2="-20.32" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="U2" gate="A" pin="1"/>
<wire x1="-2.54" y1="45.72" x2="7.6454" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="U3" gate="A" pin="1"/>
<wire x1="0" y1="20.32" x2="7.6454" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="U4" gate="A" pin="1"/>
<wire x1="-2.54" y1="-5.08" x2="7.6454" y2="-5.08" width="0.1524" layer="91"/>
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
<note version="9.0" severity="warning">
Since Version 9.0, EAGLE supports the align property for labels. 
Labels in schematic will not be understood with this version. Update EAGLE to the latest version 
for full support of labels. 
</note>
</compatibility>
</eagle>
