<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
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
<library name="logicalgates-sen">
<packages>
<package name="NULL">
<pad name="P$1" x="-5.08" y="5.08" drill="0.8" shape="square"/>
<pad name="P$2" x="-3.81" y="5.08" drill="0.8" shape="square"/>
<pad name="P$3" x="-2.54" y="5.08" drill="0.8" shape="square"/>
<pad name="P$4" x="-1.27" y="5.08" drill="0.8" shape="square"/>
<pad name="P$5" x="0" y="5.08" drill="0.8" shape="square"/>
<pad name="P$6" x="1.27" y="5.08" drill="0.8" shape="square"/>
<pad name="P$7" x="2.54" y="5.08" drill="0.8" shape="square"/>
<pad name="P$8" x="3.81" y="5.08" drill="0.8" shape="square"/>
<pad name="P$9" x="-5.08" y="3.81" drill="0.8" shape="square"/>
<pad name="P$10" x="-3.81" y="3.81" drill="0.8" shape="square"/>
<pad name="P$11" x="-2.54" y="3.81" drill="0.8" shape="square"/>
<pad name="P$12" x="-1.27" y="3.81" drill="0.8" shape="square"/>
<pad name="P$13" x="0" y="3.81" drill="0.8" shape="square"/>
<pad name="P$14" x="1.27" y="3.81" drill="0.8" shape="square"/>
<pad name="P$15" x="2.54" y="3.81" drill="0.8" shape="square"/>
<pad name="P$16" x="3.81" y="3.81" drill="0.8" shape="square"/>
<pad name="P$17" x="-5.08" y="2.54" drill="0.8" shape="square"/>
<pad name="P$18" x="-3.81" y="2.54" drill="0.8" shape="square"/>
<pad name="P$19" x="-2.54" y="2.54" drill="0.8" shape="square"/>
<pad name="P$20" x="-1.27" y="2.54" drill="0.8" shape="square"/>
<pad name="P$21" x="0" y="2.54" drill="0.8" shape="square"/>
<pad name="P$22" x="1.27" y="2.54" drill="0.8" shape="square"/>
<pad name="P$23" x="2.54" y="2.54" drill="0.8" shape="square"/>
<pad name="P$24" x="3.81" y="2.54" drill="0.8" shape="square"/>
<pad name="P$25" x="-5.08" y="1.27" drill="0.8" shape="square"/>
<pad name="P$26" x="-3.81" y="1.27" drill="0.8" shape="square"/>
<pad name="P$27" x="-2.54" y="1.27" drill="0.8" shape="square"/>
<pad name="P$28" x="-1.27" y="1.27" drill="0.8" shape="square"/>
<pad name="P$29" x="0" y="1.27" drill="0.8" shape="square"/>
<pad name="P$30" x="1.27" y="1.27" drill="0.8" shape="square"/>
<pad name="P$31" x="2.54" y="1.27" drill="0.8" shape="square"/>
<pad name="P$32" x="3.81" y="1.27" drill="0.8" shape="square"/>
<pad name="P$33" x="-5.08" y="0" drill="0.8" shape="square"/>
<pad name="P$34" x="-3.81" y="0" drill="0.8" shape="square"/>
<pad name="P$35" x="-2.54" y="0" drill="0.8" shape="square"/>
<pad name="P$36" x="-1.27" y="0" drill="0.8" shape="square"/>
<pad name="P$37" x="0" y="0" drill="0.8" shape="square"/>
<pad name="P$38" x="1.27" y="0" drill="0.8" shape="square"/>
<pad name="P$39" x="2.54" y="0" drill="0.8" shape="square"/>
<pad name="P$40" x="3.81" y="0" drill="0.8" shape="square"/>
<pad name="P$41" x="-5.08" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$42" x="-3.81" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$43" x="-2.54" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$44" x="-1.27" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$45" x="0" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$46" x="1.27" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$47" x="2.54" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$48" x="3.81" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$49" x="-5.08" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$50" x="-3.81" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$51" x="-2.54" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$52" x="-1.27" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$53" x="0" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$54" x="1.27" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$55" x="2.54" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$56" x="3.81" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$57" x="-5.08" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$58" x="-3.81" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$59" x="-2.54" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$60" x="-1.27" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$61" x="0" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$62" x="1.27" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$63" x="2.54" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$64" x="3.81" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$65" x="-5.08" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$66" x="-3.81" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$67" x="-2.54" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$68" x="-1.27" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$69" x="0" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$70" x="1.27" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$71" x="2.54" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$72" x="3.81" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$73" x="5.08" y="-3.81" drill="0.8" shape="square" rot="R90"/>
<pad name="P$74" x="5.08" y="-2.54" drill="0.8" shape="square" rot="R90"/>
<pad name="P$75" x="5.08" y="-1.27" drill="0.8" shape="square" rot="R90"/>
<pad name="P$76" x="5.08" y="0" drill="0.8" shape="square" rot="R90"/>
<pad name="P$77" x="5.08" y="1.27" drill="0.8" shape="square" rot="R90"/>
<pad name="P$78" x="5.08" y="2.54" drill="0.8" shape="square" rot="R90"/>
<pad name="P$79" x="5.08" y="3.81" drill="0.8" shape="square" rot="R90"/>
<pad name="P$80" x="5.08" y="5.08" drill="0.8" shape="square" rot="R90"/>
<pad name="P$81" x="5.08" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$82" x="6.35" y="5.08" drill="0.8" shape="square"/>
<pad name="P$83" x="7.62" y="5.08" drill="0.8" shape="square"/>
<pad name="P$84" x="8.89" y="5.08" drill="0.8" shape="square"/>
<pad name="P$85" x="10.16" y="5.08" drill="0.8" shape="square"/>
<pad name="P$86" x="11.43" y="5.08" drill="0.8" shape="square"/>
<pad name="P$87" x="12.7" y="5.08" drill="0.8" shape="square"/>
<pad name="P$88" x="13.97" y="5.08" drill="0.8" shape="square"/>
<pad name="P$89" x="15.24" y="5.08" drill="0.8" shape="square"/>
<pad name="P$90" x="6.35" y="3.81" drill="0.8" shape="square"/>
<pad name="P$91" x="7.62" y="3.81" drill="0.8" shape="square"/>
<pad name="P$92" x="8.89" y="3.81" drill="0.8" shape="square"/>
<pad name="P$93" x="10.16" y="3.81" drill="0.8" shape="square"/>
<pad name="P$94" x="11.43" y="3.81" drill="0.8" shape="square"/>
<pad name="P$95" x="12.7" y="3.81" drill="0.8" shape="square"/>
<pad name="P$96" x="13.97" y="3.81" drill="0.8" shape="square"/>
<pad name="P$97" x="15.24" y="3.81" drill="0.8" shape="square"/>
<pad name="P$98" x="6.35" y="2.54" drill="0.8" shape="square"/>
<pad name="P$99" x="7.62" y="2.54" drill="0.8" shape="square"/>
<pad name="P$100" x="8.89" y="2.54" drill="0.8" shape="square"/>
<pad name="P$101" x="10.16" y="2.54" drill="0.8" shape="square"/>
<pad name="P$102" x="11.43" y="2.54" drill="0.8" shape="square"/>
<pad name="P$103" x="12.7" y="2.54" drill="0.8" shape="square"/>
<pad name="P$104" x="13.97" y="2.54" drill="0.8" shape="square"/>
<pad name="P$105" x="15.24" y="2.54" drill="0.8" shape="square"/>
<pad name="P$106" x="6.35" y="1.27" drill="0.8" shape="square"/>
<pad name="P$107" x="7.62" y="1.27" drill="0.8" shape="square"/>
<pad name="P$108" x="8.89" y="1.27" drill="0.8" shape="square"/>
<pad name="P$109" x="10.16" y="1.27" drill="0.8" shape="square"/>
<pad name="P$110" x="11.43" y="1.27" drill="0.8" shape="square"/>
<pad name="P$111" x="12.7" y="1.27" drill="0.8" shape="square"/>
<pad name="P$112" x="13.97" y="1.27" drill="0.8" shape="square"/>
<pad name="P$113" x="15.24" y="1.27" drill="0.8" shape="square"/>
<pad name="P$114" x="6.35" y="0" drill="0.8" shape="square"/>
<pad name="P$115" x="7.62" y="0" drill="0.8" shape="square"/>
<pad name="P$116" x="8.89" y="0" drill="0.8" shape="square"/>
<pad name="P$117" x="10.16" y="0" drill="0.8" shape="square"/>
<pad name="P$118" x="11.43" y="0" drill="0.8" shape="square"/>
<pad name="P$119" x="12.7" y="0" drill="0.8" shape="square"/>
<pad name="P$120" x="13.97" y="0" drill="0.8" shape="square"/>
<pad name="P$121" x="15.24" y="0" drill="0.8" shape="square"/>
<pad name="P$122" x="6.35" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$123" x="7.62" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$124" x="8.89" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$125" x="10.16" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$126" x="11.43" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$127" x="12.7" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$128" x="13.97" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$129" x="15.24" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$130" x="6.35" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$131" x="7.62" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$132" x="8.89" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$133" x="10.16" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$134" x="11.43" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$135" x="12.7" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$136" x="13.97" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$137" x="15.24" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$138" x="6.35" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$139" x="7.62" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$140" x="8.89" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$141" x="10.16" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$142" x="11.43" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$143" x="12.7" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$144" x="13.97" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$145" x="15.24" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$146" x="6.35" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$147" x="7.62" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$148" x="8.89" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$149" x="10.16" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$150" x="11.43" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$151" x="12.7" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$152" x="13.97" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$153" x="15.24" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$154" x="16.51" y="-3.81" drill="0.8" shape="square" rot="R90"/>
<pad name="P$155" x="16.51" y="-2.54" drill="0.8" shape="square" rot="R90"/>
<pad name="P$156" x="16.51" y="-1.27" drill="0.8" shape="square" rot="R90"/>
<pad name="P$157" x="16.51" y="0" drill="0.8" shape="square" rot="R90"/>
<pad name="P$158" x="16.51" y="1.27" drill="0.8" shape="square" rot="R90"/>
<pad name="P$159" x="16.51" y="2.54" drill="0.8" shape="square" rot="R90"/>
<pad name="P$160" x="16.51" y="3.81" drill="0.8" shape="square" rot="R90"/>
<pad name="P$161" x="16.51" y="5.08" drill="0.8" shape="square" rot="R90"/>
<pad name="P$162" x="16.51" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$163" x="-5.08" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$164" x="-3.81" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$165" x="-2.54" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$166" x="-1.27" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$167" x="0" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$168" x="1.27" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$169" x="2.54" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$170" x="3.81" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$171" x="-5.08" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$172" x="-3.81" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$173" x="-2.54" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$174" x="-1.27" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$175" x="0" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$176" x="1.27" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$177" x="2.54" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$178" x="3.81" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$179" x="-5.08" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$180" x="-3.81" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$181" x="-2.54" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$182" x="-1.27" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$183" x="0" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$184" x="1.27" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$185" x="2.54" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$186" x="3.81" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$187" x="-5.08" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$188" x="-3.81" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$189" x="-2.54" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$190" x="-1.27" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$191" x="0" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$192" x="1.27" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$193" x="2.54" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$194" x="3.81" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$195" x="-5.08" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$196" x="-3.81" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$197" x="-2.54" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$198" x="-1.27" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$199" x="0" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$200" x="1.27" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$201" x="2.54" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$202" x="3.81" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$203" x="-5.08" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$204" x="-3.81" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$205" x="-2.54" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$206" x="-1.27" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$207" x="0" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$208" x="1.27" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$209" x="2.54" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$210" x="3.81" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$211" x="-5.08" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$212" x="-3.81" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$213" x="-2.54" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$214" x="-1.27" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$215" x="0" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$216" x="1.27" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$217" x="2.54" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$218" x="3.81" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$219" x="-5.08" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$220" x="-3.81" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$221" x="-2.54" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$222" x="-1.27" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$223" x="0" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$224" x="1.27" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$225" x="2.54" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$226" x="3.81" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$227" x="-5.08" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$228" x="-3.81" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$229" x="-2.54" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$230" x="-1.27" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$231" x="0" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$232" x="1.27" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$233" x="2.54" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$234" x="3.81" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$235" x="5.08" y="-15.24" drill="0.8" shape="square" rot="R90"/>
<pad name="P$236" x="5.08" y="-13.97" drill="0.8" shape="square" rot="R90"/>
<pad name="P$237" x="5.08" y="-12.7" drill="0.8" shape="square" rot="R90"/>
<pad name="P$238" x="5.08" y="-11.43" drill="0.8" shape="square" rot="R90"/>
<pad name="P$239" x="5.08" y="-10.16" drill="0.8" shape="square" rot="R90"/>
<pad name="P$240" x="5.08" y="-8.89" drill="0.8" shape="square" rot="R90"/>
<pad name="P$241" x="5.08" y="-7.62" drill="0.8" shape="square" rot="R90"/>
<pad name="P$242" x="5.08" y="-6.35" drill="0.8" shape="square" rot="R90"/>
<pad name="P$243" x="5.08" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$244" x="6.35" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$245" x="7.62" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$246" x="8.89" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$247" x="10.16" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$248" x="11.43" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$249" x="12.7" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$250" x="13.97" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$251" x="15.24" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$252" x="6.35" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$253" x="7.62" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$254" x="8.89" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$255" x="10.16" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$256" x="11.43" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$257" x="12.7" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$258" x="13.97" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$259" x="15.24" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$260" x="6.35" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$261" x="7.62" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$262" x="8.89" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$263" x="10.16" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$264" x="11.43" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$265" x="12.7" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$266" x="13.97" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$267" x="15.24" y="-8.89" drill="0.8" shape="square"/>
<pad name="P$268" x="6.35" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$269" x="7.62" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$270" x="8.89" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$271" x="10.16" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$272" x="11.43" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$273" x="12.7" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$274" x="13.97" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$275" x="15.24" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$276" x="6.35" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$277" x="7.62" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$278" x="8.89" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$279" x="10.16" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$280" x="11.43" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$281" x="12.7" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$282" x="13.97" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$283" x="15.24" y="-11.43" drill="0.8" shape="square"/>
<pad name="P$284" x="6.35" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$285" x="7.62" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$286" x="8.89" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$287" x="10.16" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$288" x="11.43" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$289" x="12.7" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$290" x="13.97" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$291" x="15.24" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$292" x="6.35" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$293" x="7.62" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$294" x="8.89" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$295" x="10.16" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$296" x="11.43" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$297" x="12.7" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$298" x="13.97" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$299" x="15.24" y="-13.97" drill="0.8" shape="square"/>
<pad name="P$300" x="6.35" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$301" x="7.62" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$302" x="8.89" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$303" x="10.16" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$304" x="11.43" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$305" x="12.7" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$306" x="13.97" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$307" x="15.24" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$308" x="6.35" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$309" x="7.62" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$310" x="8.89" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$311" x="10.16" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$312" x="11.43" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$313" x="12.7" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$314" x="13.97" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$315" x="15.24" y="-16.51" drill="0.8" shape="square"/>
<pad name="P$316" x="16.51" y="-15.24" drill="0.8" shape="square" rot="R90"/>
<pad name="P$317" x="16.51" y="-13.97" drill="0.8" shape="square" rot="R90"/>
<pad name="P$318" x="16.51" y="-12.7" drill="0.8" shape="square" rot="R90"/>
<pad name="P$319" x="16.51" y="-11.43" drill="0.8" shape="square" rot="R90"/>
<pad name="P$320" x="16.51" y="-10.16" drill="0.8" shape="square" rot="R90"/>
<pad name="P$321" x="16.51" y="-8.89" drill="0.8" shape="square" rot="R90"/>
<pad name="P$322" x="16.51" y="-7.62" drill="0.8" shape="square" rot="R90"/>
<pad name="P$323" x="16.51" y="-6.35" drill="0.8" shape="square" rot="R90"/>
<pad name="P$324" x="16.51" y="-16.51" drill="0.8" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="MUX-2X8">
<pin name="SEL" x="-12.7" y="15.24" visible="pin" length="middle" direction="in"/>
<pin name="A0" x="-12.7" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="A1" x="-12.7" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="A2" x="-12.7" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="A3" x="-12.7" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="A4" x="-12.7" y="0" visible="pin" length="middle" direction="in"/>
<pin name="A5" x="-12.7" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="A6" x="-12.7" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="A7" x="-12.7" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="Y0" x="12.7" y="0" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y1" x="12.7" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y2" x="12.7" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y3" x="12.7" y="-7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y4" x="12.7" y="-10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y5" x="12.7" y="-12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y6" x="12.7" y="-15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y7" x="12.7" y="-17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-33.02" x2="7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="7.62" y1="-33.02" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="17.78" x2="-7.62" y2="17.78" width="0.254" layer="94"/>
<pin name="B0" x="-12.7" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="B1" x="-12.7" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="B2" x="-12.7" y="-17.78" visible="pin" length="middle" direction="in"/>
<pin name="B3" x="-12.7" y="-20.32" visible="pin" length="middle" direction="in"/>
<pin name="B4" x="-12.7" y="-22.86" visible="pin" length="middle" direction="in"/>
<pin name="B5" x="-12.7" y="-25.4" visible="pin" length="middle" direction="in"/>
<pin name="B6" x="-12.7" y="-27.94" visible="pin" length="middle" direction="in"/>
<pin name="B7" x="-12.7" y="-30.48" visible="pin" length="middle" direction="in"/>
<text x="-7.366" y="18.288" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.366" y="-35.306" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.286" y="14.478" size="1.524" layer="94">0=A</text>
<text x="2.286" y="11.684" size="1.524" layer="94">1=B</text>
</symbol>
<symbol name="COUNTER-8-LR">
<pin name="CLK" x="-12.7" y="12.7" visible="pin" length="middle" direction="in" function="clk"/>
<pin name="LOAD" x="-12.7" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="RESET" x="-12.7" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="A0" x="-12.7" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="A1" x="-12.7" y="0" visible="pin" length="middle" direction="in"/>
<pin name="A2" x="-12.7" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="A3" x="-12.7" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="A4" x="-12.7" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="A5" x="-12.7" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="A6" x="-12.7" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="A7" x="-12.7" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="Y0" x="12.7" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y1" x="12.7" y="0" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y2" x="12.7" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y3" x="12.7" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y4" x="12.7" y="-7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y5" x="12.7" y="-10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y6" x="12.7" y="-12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y7" x="12.7" y="-15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<text x="-7.366" y="15.748" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.366" y="-20.066" size="1.778" layer="96">&gt;VALUE</text>
<pin name="CE" x="12.7" y="12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="TC" x="12.7" y="10.16" visible="pin" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="LATCH-8">
<pin name="CLK" x="-12.7" y="10.16" visible="pin" length="middle" direction="in" function="clk"/>
<pin name="A0" x="-12.7" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="A1" x="-12.7" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="A2" x="-12.7" y="0" visible="pin" length="middle" direction="in"/>
<pin name="A3" x="-12.7" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="A4" x="-12.7" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="A5" x="-12.7" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="A6" x="-12.7" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="A7" x="-12.7" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="Y0" x="12.7" y="5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y1" x="12.7" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y2" x="12.7" y="0" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y3" x="12.7" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y4" x="12.7" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y5" x="12.7" y="-7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y6" x="12.7" y="-10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y7" x="12.7" y="-12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<text x="-7.366" y="-17.526" size="1.778" layer="96">&gt;VALUE</text>
<text x="-7.366" y="13.208" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="DEMUX-3X8">
<pin name="A0" x="-12.7" y="2.54" visible="pin" length="middle"/>
<pin name="A1" x="-12.7" y="0" visible="pin" length="middle"/>
<pin name="A2" x="-12.7" y="-2.54" visible="pin" length="middle"/>
<pin name="Y0" x="12.7" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="Y1" x="12.7" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="Y2" x="12.7" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="Y3" x="12.7" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="Y4" x="12.7" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="Y5" x="12.7" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="Y6" x="12.7" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="Y7" x="12.7" y="-10.16" visible="pin" length="middle" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-7.112" y="10.668" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.366" y="-14.986" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="ROM-A8D64">
<pin name="A0" x="5.08" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A1" x="2.54" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A2" x="0" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A3" x="-2.54" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A4" x="-5.08" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A5" x="-7.62" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A6" x="-10.16" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A7" x="-12.7" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="OE" x="10.16" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="Y0" x="22.86" y="76.2" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y1" x="22.86" y="73.66" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y2" x="22.86" y="71.12" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y3" x="22.86" y="68.58" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y4" x="22.86" y="66.04" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y5" x="22.86" y="63.5" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y6" x="22.86" y="60.96" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y7" x="22.86" y="58.42" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y8" x="22.86" y="55.88" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y9" x="22.86" y="53.34" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y10" x="22.86" y="50.8" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y11" x="22.86" y="48.26" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y12" x="22.86" y="45.72" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y13" x="22.86" y="43.18" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y14" x="22.86" y="40.64" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y15" x="22.86" y="38.1" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y16" x="22.86" y="35.56" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y17" x="22.86" y="33.02" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y18" x="22.86" y="30.48" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y19" x="22.86" y="27.94" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y20" x="22.86" y="25.4" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y21" x="22.86" y="22.86" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y22" x="22.86" y="20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y23" x="22.86" y="17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y24" x="22.86" y="15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y25" x="22.86" y="12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y26" x="22.86" y="10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y27" x="22.86" y="7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y28" x="22.86" y="5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y29" x="22.86" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y30" x="22.86" y="0" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y31" x="22.86" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y32" x="22.86" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y33" x="22.86" y="-7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y34" x="22.86" y="-10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y35" x="22.86" y="-12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y36" x="22.86" y="-15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y37" x="22.86" y="-17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y38" x="22.86" y="-20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y39" x="22.86" y="-22.86" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y40" x="22.86" y="-25.4" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y41" x="22.86" y="-27.94" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y42" x="22.86" y="-30.48" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y43" x="22.86" y="-33.02" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y44" x="22.86" y="-35.56" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y45" x="22.86" y="-38.1" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y46" x="22.86" y="-40.64" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y47" x="22.86" y="-43.18" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y48" x="22.86" y="-45.72" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y49" x="22.86" y="-48.26" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y50" x="22.86" y="-50.8" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y51" x="22.86" y="-53.34" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y52" x="22.86" y="-55.88" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y53" x="22.86" y="-58.42" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y54" x="22.86" y="-60.96" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y55" x="22.86" y="-63.5" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y56" x="22.86" y="-66.04" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y57" x="22.86" y="-68.58" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y58" x="22.86" y="-71.12" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y59" x="22.86" y="-73.66" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y60" x="22.86" y="-76.2" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y61" x="22.86" y="-78.74" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y62" x="22.86" y="-81.28" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y63" x="22.86" y="-83.82" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-17.78" y1="83.82" x2="17.78" y2="83.82" width="0.254" layer="94"/>
<wire x1="17.78" y1="83.82" x2="17.78" y2="-86.36" width="0.254" layer="94"/>
<wire x1="17.78" y1="-86.36" x2="-17.78" y2="-86.36" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-86.36" x2="-17.78" y2="83.82" width="0.254" layer="94"/>
<text x="13.462" y="84.328" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.526" y="-88.646" size="1.778" layer="96">&gt;VALUE</text>
<text x="-14.732" y="-83.566" size="6.35" layer="94">ROM</text>
</symbol>
<symbol name="RAM-A8D64">
<pin name="A0" x="5.08" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A1" x="2.54" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A2" x="0" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A3" x="-2.54" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A4" x="-5.08" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A5" x="-7.62" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A6" x="-10.16" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="A7" x="-12.7" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="W" x="12.7" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="OE" x="10.16" y="88.9" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="Q0" x="-22.86" y="76.2" visible="pin" length="middle" direction="in"/>
<pin name="Q1" x="-22.86" y="73.66" visible="pin" length="middle" direction="in"/>
<pin name="Q2" x="-22.86" y="71.12" visible="pin" length="middle" direction="in"/>
<pin name="Q3" x="-22.86" y="68.58" visible="pin" length="middle" direction="in"/>
<pin name="Q4" x="-22.86" y="66.04" visible="pin" length="middle" direction="in"/>
<pin name="Q5" x="-22.86" y="63.5" visible="pin" length="middle" direction="in"/>
<pin name="Q6" x="-22.86" y="60.96" visible="pin" length="middle" direction="in"/>
<pin name="Q7" x="-22.86" y="58.42" visible="pin" length="middle" direction="in"/>
<pin name="Q8" x="-22.86" y="55.88" visible="pin" length="middle" direction="in"/>
<pin name="Q9" x="-22.86" y="53.34" visible="pin" length="middle" direction="in"/>
<pin name="Q10" x="-22.86" y="50.8" visible="pin" length="middle" direction="in"/>
<pin name="Q11" x="-22.86" y="48.26" visible="pin" length="middle" direction="in"/>
<pin name="Q12" x="-22.86" y="45.72" visible="pin" length="middle" direction="in"/>
<pin name="Q13" x="-22.86" y="43.18" visible="pin" length="middle" direction="in"/>
<pin name="Q14" x="-22.86" y="40.64" visible="pin" length="middle" direction="in"/>
<pin name="Q15" x="-22.86" y="38.1" visible="pin" length="middle" direction="in"/>
<pin name="Q16" x="-22.86" y="35.56" visible="pin" length="middle" direction="in"/>
<pin name="Q17" x="-22.86" y="33.02" visible="pin" length="middle" direction="in"/>
<pin name="Q18" x="-22.86" y="30.48" visible="pin" length="middle" direction="in"/>
<pin name="Q19" x="-22.86" y="27.94" visible="pin" length="middle" direction="in"/>
<pin name="Q20" x="-22.86" y="25.4" visible="pin" length="middle" direction="in"/>
<pin name="Q21" x="-22.86" y="22.86" visible="pin" length="middle" direction="in"/>
<pin name="Q22" x="-22.86" y="20.32" visible="pin" length="middle" direction="in"/>
<pin name="Q23" x="-22.86" y="17.78" visible="pin" length="middle" direction="in"/>
<pin name="Q24" x="-22.86" y="15.24" visible="pin" length="middle" direction="in"/>
<pin name="Q25" x="-22.86" y="12.7" visible="pin" length="middle" direction="in"/>
<pin name="Q26" x="-22.86" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="Q27" x="-22.86" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="Q28" x="-22.86" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="Q29" x="-22.86" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="Q30" x="-22.86" y="0" visible="pin" length="middle" direction="in"/>
<pin name="Q31" x="-22.86" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="Q32" x="-22.86" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="Q33" x="-22.86" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="Q34" x="-22.86" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="Q35" x="-22.86" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="Q36" x="-22.86" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="Q37" x="-22.86" y="-17.78" visible="pin" length="middle" direction="in"/>
<pin name="Q38" x="-22.86" y="-20.32" visible="pin" length="middle" direction="in"/>
<pin name="Q39" x="-22.86" y="-22.86" visible="pin" length="middle" direction="in"/>
<pin name="Q40" x="-22.86" y="-25.4" visible="pin" length="middle" direction="in"/>
<pin name="Q41" x="-22.86" y="-27.94" visible="pin" length="middle" direction="in"/>
<pin name="Q42" x="-22.86" y="-30.48" visible="pin" length="middle" direction="in"/>
<pin name="Q43" x="-22.86" y="-33.02" visible="pin" length="middle" direction="in"/>
<pin name="Q44" x="-22.86" y="-35.56" visible="pin" length="middle" direction="in"/>
<pin name="Q45" x="-22.86" y="-38.1" visible="pin" length="middle" direction="in"/>
<pin name="Q46" x="-22.86" y="-40.64" visible="pin" length="middle" direction="in"/>
<pin name="Q47" x="-22.86" y="-43.18" visible="pin" length="middle" direction="in"/>
<pin name="Q48" x="-22.86" y="-45.72" visible="pin" length="middle" direction="in"/>
<pin name="Q49" x="-22.86" y="-48.26" visible="pin" length="middle" direction="in"/>
<pin name="Q50" x="-22.86" y="-50.8" visible="pin" length="middle" direction="in"/>
<pin name="Q51" x="-22.86" y="-53.34" visible="pin" length="middle" direction="in"/>
<pin name="Q52" x="-22.86" y="-55.88" visible="pin" length="middle" direction="in"/>
<pin name="Q53" x="-22.86" y="-58.42" visible="pin" length="middle" direction="in"/>
<pin name="Q54" x="-22.86" y="-60.96" visible="pin" length="middle" direction="in"/>
<pin name="Q55" x="-22.86" y="-63.5" visible="pin" length="middle" direction="in"/>
<pin name="Q56" x="-22.86" y="-66.04" visible="pin" length="middle" direction="in"/>
<pin name="Q57" x="-22.86" y="-68.58" visible="pin" length="middle" direction="in"/>
<pin name="Q58" x="-22.86" y="-71.12" visible="pin" length="middle" direction="in"/>
<pin name="Q59" x="-22.86" y="-73.66" visible="pin" length="middle" direction="in"/>
<pin name="Q60" x="-22.86" y="-76.2" visible="pin" length="middle" direction="in"/>
<pin name="Q61" x="-22.86" y="-78.74" visible="pin" length="middle" direction="in"/>
<pin name="Q62" x="-22.86" y="-81.28" visible="pin" length="middle" direction="in"/>
<pin name="Q63" x="-22.86" y="-83.82" visible="pin" length="middle" direction="in"/>
<pin name="Y0" x="22.86" y="76.2" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y1" x="22.86" y="73.66" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y2" x="22.86" y="71.12" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y3" x="22.86" y="68.58" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y4" x="22.86" y="66.04" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y5" x="22.86" y="63.5" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y6" x="22.86" y="60.96" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y7" x="22.86" y="58.42" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y8" x="22.86" y="55.88" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y9" x="22.86" y="53.34" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y10" x="22.86" y="50.8" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y11" x="22.86" y="48.26" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y12" x="22.86" y="45.72" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y13" x="22.86" y="43.18" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y14" x="22.86" y="40.64" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y15" x="22.86" y="38.1" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y16" x="22.86" y="35.56" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y17" x="22.86" y="33.02" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y18" x="22.86" y="30.48" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y19" x="22.86" y="27.94" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y20" x="22.86" y="25.4" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y21" x="22.86" y="22.86" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y22" x="22.86" y="20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y23" x="22.86" y="17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y24" x="22.86" y="15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y25" x="22.86" y="12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y26" x="22.86" y="10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y27" x="22.86" y="7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y28" x="22.86" y="5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y29" x="22.86" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y30" x="22.86" y="0" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y31" x="22.86" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y32" x="22.86" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y33" x="22.86" y="-7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y34" x="22.86" y="-10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y35" x="22.86" y="-12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y36" x="22.86" y="-15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y37" x="22.86" y="-17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y38" x="22.86" y="-20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y39" x="22.86" y="-22.86" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y40" x="22.86" y="-25.4" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y41" x="22.86" y="-27.94" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y42" x="22.86" y="-30.48" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y43" x="22.86" y="-33.02" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y44" x="22.86" y="-35.56" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y45" x="22.86" y="-38.1" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y46" x="22.86" y="-40.64" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y47" x="22.86" y="-43.18" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y48" x="22.86" y="-45.72" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y49" x="22.86" y="-48.26" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y50" x="22.86" y="-50.8" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y51" x="22.86" y="-53.34" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y52" x="22.86" y="-55.88" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y53" x="22.86" y="-58.42" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y54" x="22.86" y="-60.96" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y55" x="22.86" y="-63.5" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y56" x="22.86" y="-66.04" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y57" x="22.86" y="-68.58" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y58" x="22.86" y="-71.12" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y59" x="22.86" y="-73.66" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y60" x="22.86" y="-76.2" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y61" x="22.86" y="-78.74" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y62" x="22.86" y="-81.28" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y63" x="22.86" y="-83.82" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-17.78" y1="83.82" x2="17.78" y2="83.82" width="0.254" layer="94"/>
<wire x1="17.78" y1="83.82" x2="17.78" y2="-86.36" width="0.254" layer="94"/>
<wire x1="17.78" y1="-86.36" x2="-17.78" y2="-86.36" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-86.36" x2="-17.78" y2="83.82" width="0.254" layer="94"/>
<text x="13.462" y="84.328" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.526" y="-88.646" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="FLIPFLOP-JK">
<pin name="J" x="-10.16" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="CLK" x="-10.16" y="0" visible="pin" length="middle" direction="in" function="clk"/>
<pin name="K" x="-10.16" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="Q" x="10.16" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="!Q" x="10.16" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<text x="-4.826" y="5.588" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.826" y="-7.366" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="MUX-2X1">
<pin name="SEL_A" x="-12.7" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="A0" x="-12.7" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="Y0" x="12.7" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<pin name="B0" x="-12.7" y="-5.08" visible="pin" length="middle" direction="in"/>
<text x="-7.366" y="5.588" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.366" y="-9.906" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="NOR-2">
<pin name="A" x="-10.16" y="2.54" visible="off" length="middle" direction="in"/>
<pin name="B" x="-10.16" y="-2.54" visible="off" length="middle" direction="in"/>
<pin name="Y" x="12.7" y="0" visible="off" length="middle" direction="out" function="dot" rot="R180"/>
<wire x1="1.27" y1="-5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.2954" y1="-5.0678" x2="7.5439" y2="0.0507" width="0.4064" layer="94" curve="60.147106" cap="flat"/>
<wire x1="1.2954" y1="5.0678" x2="7.5442" y2="-0.0505" width="0.4064" layer="94" curve="-60.148802" cap="flat"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.1524" layer="94" curve="-77.319617"/>
<wire x1="1.27" y1="5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94" curve="-77.319617"/>
</symbol>
<symbol name="NOT">
<pin name="Q" x="-7.62" y="0" visible="off" length="middle" direction="in"/>
<pin name="Y" x="7.62" y="0" visible="off" length="middle" direction="out" function="dot" rot="R180"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
</symbol>
<symbol name="RAM-A20D8">
<pin name="A0" x="-22.86" y="33.02" visible="pin" length="middle" direction="in"/>
<pin name="A1" x="-22.86" y="30.48" visible="pin" length="middle" direction="in"/>
<pin name="A2" x="-22.86" y="27.94" visible="pin" length="middle" direction="in"/>
<pin name="A3" x="-22.86" y="25.4" visible="pin" length="middle" direction="in"/>
<pin name="A4" x="-22.86" y="22.86" visible="pin" length="middle" direction="in"/>
<pin name="A5" x="-22.86" y="20.32" visible="pin" length="middle" direction="in"/>
<pin name="A6" x="-22.86" y="17.78" visible="pin" length="middle" direction="in"/>
<pin name="A7" x="-22.86" y="15.24" visible="pin" length="middle" direction="in"/>
<pin name="OE" x="10.16" y="40.64" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="Q0" x="-22.86" y="-20.32" visible="pin" length="middle" direction="in"/>
<pin name="Q1" x="-22.86" y="-22.86" visible="pin" length="middle" direction="in"/>
<pin name="Q2" x="-22.86" y="-25.4" visible="pin" length="middle" direction="in"/>
<pin name="Q3" x="-22.86" y="-27.94" visible="pin" length="middle" direction="in"/>
<pin name="Q4" x="-22.86" y="-30.48" visible="pin" length="middle" direction="in"/>
<pin name="Q5" x="-22.86" y="-33.02" visible="pin" length="middle" direction="in"/>
<pin name="Q6" x="-22.86" y="-35.56" visible="pin" length="middle" direction="in"/>
<pin name="Q7" x="-22.86" y="-38.1" visible="pin" length="middle" direction="in"/>
<pin name="Y0" x="22.86" y="-20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y1" x="22.86" y="-22.86" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y2" x="22.86" y="-25.4" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y3" x="22.86" y="-27.94" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y4" x="22.86" y="-30.48" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y5" x="22.86" y="-33.02" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y6" x="22.86" y="-35.56" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y7" x="22.86" y="-38.1" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-17.78" y1="35.56" x2="17.78" y2="35.56" width="0.254" layer="94"/>
<wire x1="17.78" y1="35.56" x2="17.78" y2="-40.64" width="0.254" layer="94"/>
<wire x1="17.78" y1="-40.64" x2="-17.78" y2="-40.64" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-40.64" x2="-17.78" y2="35.56" width="0.254" layer="94"/>
<text x="-17.272" y="36.068" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.526" y="-42.926" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A8" x="-22.86" y="12.7" visible="pin" length="middle" direction="in"/>
<pin name="A9" x="-22.86" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="A10" x="-22.86" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="A11" x="-22.86" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="A12" x="-22.86" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="A13" x="-22.86" y="0" visible="pin" length="middle" direction="in"/>
<pin name="A14" x="-22.86" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="A15" x="-22.86" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="A16" x="-22.86" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="A17" x="-22.86" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="A18" x="-22.86" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="A19" x="-22.86" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="W" x="12.7" y="40.64" visible="pin" length="middle" direction="in" rot="R270"/>
</symbol>
<symbol name="ROM-A20D8">
<pin name="A0" x="-22.86" y="33.02" visible="pin" length="middle" direction="in"/>
<pin name="A1" x="-22.86" y="30.48" visible="pin" length="middle" direction="in"/>
<pin name="A2" x="-22.86" y="27.94" visible="pin" length="middle" direction="in"/>
<pin name="A3" x="-22.86" y="25.4" visible="pin" length="middle" direction="in"/>
<pin name="A4" x="-22.86" y="22.86" visible="pin" length="middle" direction="in"/>
<pin name="A5" x="-22.86" y="20.32" visible="pin" length="middle" direction="in"/>
<pin name="A6" x="-22.86" y="17.78" visible="pin" length="middle" direction="in"/>
<pin name="A7" x="-22.86" y="15.24" visible="pin" length="middle" direction="in"/>
<pin name="OE" x="10.16" y="40.64" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="Y0" x="22.86" y="33.02" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y1" x="22.86" y="30.48" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y2" x="22.86" y="27.94" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y3" x="22.86" y="25.4" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y4" x="22.86" y="22.86" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y5" x="22.86" y="20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y6" x="22.86" y="17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="Y7" x="22.86" y="15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-17.78" y1="35.56" x2="17.78" y2="35.56" width="0.254" layer="94"/>
<wire x1="17.78" y1="35.56" x2="17.78" y2="-17.78" width="0.254" layer="94"/>
<wire x1="17.78" y1="-17.78" x2="-17.78" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-17.78" x2="-17.78" y2="35.56" width="0.254" layer="94"/>
<text x="-17.272" y="36.068" size="1.778" layer="95">&gt;NAME</text>
<pin name="A8" x="-22.86" y="12.7" visible="pin" length="middle" direction="in"/>
<pin name="A9" x="-22.86" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="A10" x="-22.86" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="A11" x="-22.86" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="A12" x="-22.86" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="A13" x="-22.86" y="0" visible="pin" length="middle" direction="in"/>
<pin name="A14" x="-22.86" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="A15" x="-22.86" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="A16" x="-22.86" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="A17" x="-22.86" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="A18" x="-22.86" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="A19" x="-22.86" y="-15.24" visible="pin" length="middle" direction="in"/>
<text x="-17.526" y="-20.066" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-13.716" size="6.35" layer="94">ROM</text>
</symbol>
<symbol name="AND-4">
<pin name="B" x="-10.16" y="2.54" visible="off" length="middle" direction="in"/>
<pin name="C" x="-10.16" y="-2.54" visible="off" length="middle" direction="in"/>
<pin name="Y" x="12.7" y="0" visible="off" length="middle" direction="out" rot="R180"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="0" y2="-7.62" width="0.254" layer="94" curve="-180"/>
<pin name="A" x="-10.16" y="5.08" visible="off" length="middle" direction="in"/>
<pin name="D" x="-10.16" y="-5.08" visible="off" length="middle" direction="in"/>
</symbol>
<symbol name="AND-2">
<pin name="A" x="-10.16" y="2.54" visible="off" length="middle" direction="in"/>
<pin name="B" x="-10.16" y="-2.54" visible="off" length="middle" direction="in"/>
<pin name="Y" x="12.7" y="0" visible="off" length="middle" direction="out" rot="R180"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-5.08" width="0.254" layer="94" curve="-180"/>
</symbol>
<symbol name="NOR-4">
<pin name="B" x="-10.16" y="2.54" visible="off" length="middle" direction="in"/>
<pin name="C" x="-10.16" y="-2.54" visible="off" length="middle" direction="in"/>
<pin name="Y" x="12.7" y="0" visible="off" length="middle" direction="out" function="dot" rot="R180"/>
<wire x1="-1.27" y1="-7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.2446" y1="-7.6078" x2="7.5439" y2="0.0507" width="0.4064" layer="94" curve="60.147106" cap="flat"/>
<wire x1="-1.2446" y1="7.6078" x2="7.5442" y2="-0.0505" width="0.4064" layer="94" curve="-60.148802" cap="flat"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.1524" layer="94" curve="-77.319617"/>
<wire x1="-1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94" curve="-77.319617"/>
<pin name="A" x="-10.16" y="5.08" visible="off" length="middle" direction="in"/>
<pin name="D" x="-10.16" y="-5.08" visible="off" length="middle" direction="in"/>
</symbol>
<symbol name="ALU-4">
<pin name="A0" x="-12.7" y="0" visible="pin" length="middle" direction="in"/>
<pin name="A1" x="-12.7" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="A2" x="-12.7" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="A3" x="-12.7" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="B0" x="-12.7" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="B1" x="-12.7" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="B2" x="-12.7" y="-17.78" visible="pin" length="middle" direction="in"/>
<pin name="B3" x="-12.7" y="-20.32" visible="pin" length="middle" direction="in"/>
<pin name="M" x="-12.7" y="15.24" visible="pin" length="middle" direction="in"/>
<pin name="CN" x="-12.7" y="20.32" visible="pin" length="middle" direction="in"/>
<pin name="F0" x="12.7" y="0" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="F1" x="12.7" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="F2" x="12.7" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="F3" x="12.7" y="-7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PG" x="12.7" y="-15.24" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="CN+4" x="12.7" y="-20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="GG" x="12.7" y="-17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="S0" x="-12.7" y="12.7" visible="pin" length="middle" direction="in"/>
<pin name="S1" x="-12.7" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="S2" x="-12.7" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="S3" x="-12.7" y="5.08" visible="pin" length="middle" direction="in"/>
<wire x1="-7.62" y1="22.86" x2="-7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-22.86" x2="7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="7.62" y2="22.86" width="0.254" layer="94"/>
<wire x1="7.62" y1="22.86" x2="-7.62" y2="22.86" width="0.254" layer="94"/>
<text x="-7.366" y="23.114" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.366" y="-25.146" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="CLAG-4">
<pin name="P0" x="-12.7" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="G0" x="-12.7" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="P1" x="-12.7" y="0" visible="pin" length="middle" direction="in"/>
<pin name="G1" x="-12.7" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="P2" x="-12.7" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="G2" x="-12.7" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="P3" x="-12.7" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="G3" x="-12.7" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="G" x="12.7" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="P" x="12.7" y="0" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="CN" x="-12.7" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="CN+2" x="12.7" y="-2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="CN+4" x="12.7" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<wire x1="-7.62" y1="12.7" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<text x="-7.366" y="13.208" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.366" y="-17.526" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="DEMUX-8X8">
<pin name="SEL0" x="-2.54" y="50.8" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="SEL1" x="0" y="50.8" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="SEL2" x="2.54" y="50.8" visible="pin" length="middle" direction="in" rot="R270"/>
<pin name="Y0" x="-10.16" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="Y1" x="-7.62" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="Y2" x="-5.08" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="Y3" x="-2.54" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="Y4" x="0" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="Y5" x="2.54" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="Y6" x="5.08" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="Y7" x="7.62" y="-50.8" visible="pin" length="middle" direction="out" rot="R90"/>
<wire x1="-17.78" y1="45.72" x2="15.24" y2="45.72" width="0.254" layer="94"/>
<wire x1="15.24" y1="45.72" x2="15.24" y2="-45.72" width="0.254" layer="94"/>
<wire x1="15.24" y1="-45.72" x2="-17.78" y2="-45.72" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-45.72" x2="-17.78" y2="45.72" width="0.254" layer="94"/>
<text x="-17.272" y="46.228" size="1.778" layer="95">&gt;NAME</text>
<text x="8.128" y="-48.006" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A0" x="-22.86" y="43.18" visible="pin" length="middle" direction="in"/>
<pin name="A1" x="-22.86" y="40.64" visible="pin" length="middle" direction="in"/>
<pin name="A2" x="-22.86" y="38.1" visible="pin" length="middle" direction="in"/>
<pin name="A3" x="-22.86" y="35.56" visible="pin" length="middle" direction="in"/>
<pin name="A4" x="-22.86" y="33.02" visible="pin" length="middle" direction="in"/>
<pin name="A5" x="-22.86" y="30.48" visible="pin" length="middle" direction="in"/>
<pin name="A6" x="-22.86" y="27.94" visible="pin" length="middle" direction="in"/>
<pin name="A7" x="-22.86" y="25.4" visible="pin" length="middle" direction="in"/>
<pin name="B0" x="-22.86" y="20.32" visible="pin" length="middle" direction="in"/>
<pin name="B1" x="-22.86" y="17.78" visible="pin" length="middle" direction="in"/>
<pin name="B2" x="-22.86" y="15.24" visible="pin" length="middle" direction="in"/>
<pin name="B3" x="-22.86" y="12.7" visible="pin" length="middle" direction="in"/>
<pin name="B4" x="-22.86" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="B5" x="-22.86" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="B6" x="-22.86" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="B7" x="-22.86" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="C0" x="-22.86" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="C1" x="-22.86" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="C2" x="-22.86" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="C3" x="-22.86" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="C4" x="-22.86" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="C5" x="-22.86" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="C6" x="-22.86" y="-17.78" visible="pin" length="middle" direction="in"/>
<pin name="C7" x="-22.86" y="-20.32" visible="pin" length="middle" direction="in"/>
<pin name="D0" x="-22.86" y="-25.4" visible="pin" length="middle" direction="in"/>
<pin name="D1" x="-22.86" y="-27.94" visible="pin" length="middle" direction="in"/>
<pin name="D2" x="-22.86" y="-30.48" visible="pin" length="middle" direction="in"/>
<pin name="D3" x="-22.86" y="-33.02" visible="pin" length="middle" direction="in"/>
<pin name="D4" x="-22.86" y="-35.56" visible="pin" length="middle" direction="in"/>
<pin name="D5" x="-22.86" y="-38.1" visible="pin" length="middle" direction="in"/>
<pin name="D6" x="-22.86" y="-40.64" visible="pin" length="middle" direction="in"/>
<pin name="D7" x="-22.86" y="-43.18" visible="pin" length="middle" direction="in"/>
<pin name="E0" x="20.32" y="43.18" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="E1" x="20.32" y="40.64" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="E2" x="20.32" y="38.1" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="E3" x="20.32" y="35.56" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="E4" x="20.32" y="33.02" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="E5" x="20.32" y="30.48" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="E6" x="20.32" y="27.94" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="E7" x="20.32" y="25.4" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F0" x="20.32" y="20.32" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F1" x="20.32" y="17.78" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F2" x="20.32" y="15.24" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F3" x="20.32" y="12.7" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F4" x="20.32" y="10.16" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F5" x="20.32" y="7.62" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F6" x="20.32" y="5.08" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="F7" x="20.32" y="2.54" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G0" x="20.32" y="-2.54" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G1" x="20.32" y="-5.08" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G2" x="20.32" y="-7.62" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G3" x="20.32" y="-10.16" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G4" x="20.32" y="-12.7" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G5" x="20.32" y="-15.24" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G6" x="20.32" y="-17.78" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="G7" x="20.32" y="-20.32" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H0" x="20.32" y="-25.4" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H1" x="20.32" y="-27.94" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H2" x="20.32" y="-30.48" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H3" x="20.32" y="-33.02" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H4" x="20.32" y="-35.56" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H5" x="20.32" y="-38.1" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H6" x="20.32" y="-40.64" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="H7" x="20.32" y="-43.18" visible="pin" length="middle" direction="in" rot="R180"/>
</symbol>
<symbol name="OR-2">
<pin name="A" x="-10.16" y="2.54" visible="off" length="middle" direction="in"/>
<pin name="B" x="-10.16" y="-2.54" visible="off" length="middle" direction="in"/>
<pin name="Y" x="12.7" y="0" visible="off" length="middle" direction="out" rot="R180"/>
<wire x1="1.27" y1="-5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.2954" y1="-5.0678" x2="7.5439" y2="0.0507" width="0.4064" layer="94" curve="60.147106" cap="flat"/>
<wire x1="1.2954" y1="5.0678" x2="7.5442" y2="-0.0505" width="0.4064" layer="94" curve="-60.148802" cap="flat"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.1524" layer="94" curve="-77.319617"/>
<wire x1="1.27" y1="5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94" curve="-77.319617"/>
</symbol>
<symbol name="LINKS-8">
<pin name="A1" x="-5.08" y="10.16" visible="off" length="middle" direction="pas"/>
<pin name="A2" x="-5.08" y="7.62" visible="off" length="middle" direction="pas"/>
<pin name="A3" x="-5.08" y="5.08" visible="off" length="middle" direction="pas"/>
<pin name="A4" x="-5.08" y="2.54" visible="off" length="middle" direction="pas"/>
<pin name="A5" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
<pin name="A6" x="-5.08" y="-2.54" visible="off" length="middle" direction="pas"/>
<pin name="A7" x="-5.08" y="-5.08" visible="off" length="middle" direction="pas"/>
<pin name="A8" x="-5.08" y="-7.62" visible="off" length="middle" direction="pas"/>
<pin name="B1" x="7.62" y="10.16" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="B2" x="7.62" y="7.62" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="B3" x="7.62" y="5.08" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="B4" x="7.62" y="2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="B5" x="7.62" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="B6" x="7.62" y="-2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="B7" x="7.62" y="-5.08" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="B8" x="7.62" y="-7.62" visible="off" length="middle" direction="pas" rot="R180"/>
<wire x1="0" y1="12.7" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="0" y2="-10.16" width="0.254" layer="94"/>
<wire x1="0" y1="-10.16" x2="0" y2="12.7" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MUX-2X8" prefix="MUX" uservalue="yes">
<description>2-input 8-bit mux</description>
<gates>
<gate name="G$1" symbol="MUX-2X8" x="0" y="7.62"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="B0" pad="P$9"/>
<connect gate="G$1" pin="B1" pad="P$10"/>
<connect gate="G$1" pin="B2" pad="P$11"/>
<connect gate="G$1" pin="B3" pad="P$12"/>
<connect gate="G$1" pin="B4" pad="P$13"/>
<connect gate="G$1" pin="B5" pad="P$14"/>
<connect gate="G$1" pin="B6" pad="P$15"/>
<connect gate="G$1" pin="B7" pad="P$16"/>
<connect gate="G$1" pin="SEL" pad="P$17"/>
<connect gate="G$1" pin="Y0" pad="P$18"/>
<connect gate="G$1" pin="Y1" pad="P$19"/>
<connect gate="G$1" pin="Y2" pad="P$20"/>
<connect gate="G$1" pin="Y3" pad="P$21"/>
<connect gate="G$1" pin="Y4" pad="P$22"/>
<connect gate="G$1" pin="Y5" pad="P$23"/>
<connect gate="G$1" pin="Y6" pad="P$24"/>
<connect gate="G$1" pin="Y7" pad="P$25"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="COUNTER-8-LR" prefix="CTR" uservalue="yes">
<description>8-bit counter w/ set and reset</description>
<gates>
<gate name="G$1" symbol="COUNTER-8-LR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="CE" pad="P$20"/>
<connect gate="G$1" pin="CLK" pad="P$9"/>
<connect gate="G$1" pin="LOAD" pad="P$10"/>
<connect gate="G$1" pin="RESET" pad="P$11"/>
<connect gate="G$1" pin="TC" pad="P$21"/>
<connect gate="G$1" pin="Y0" pad="P$12"/>
<connect gate="G$1" pin="Y1" pad="P$13"/>
<connect gate="G$1" pin="Y2" pad="P$14"/>
<connect gate="G$1" pin="Y3" pad="P$15"/>
<connect gate="G$1" pin="Y4" pad="P$16"/>
<connect gate="G$1" pin="Y5" pad="P$17"/>
<connect gate="G$1" pin="Y6" pad="P$18"/>
<connect gate="G$1" pin="Y7" pad="P$19"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LATCH-8" prefix="LAT" uservalue="yes">
<description>8-bit latch</description>
<gates>
<gate name="G$1" symbol="LATCH-8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="CLK" pad="P$9"/>
<connect gate="G$1" pin="Y0" pad="P$10"/>
<connect gate="G$1" pin="Y1" pad="P$11"/>
<connect gate="G$1" pin="Y2" pad="P$12"/>
<connect gate="G$1" pin="Y3" pad="P$13"/>
<connect gate="G$1" pin="Y4" pad="P$14"/>
<connect gate="G$1" pin="Y5" pad="P$15"/>
<connect gate="G$1" pin="Y6" pad="P$16"/>
<connect gate="G$1" pin="Y7" pad="P$17"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DEMUX-3X8" prefix="DEMUX" uservalue="yes">
<description>3-in 8-out demultiplexer</description>
<gates>
<gate name="G$1" symbol="DEMUX-3X8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="Y0" pad="P$4"/>
<connect gate="G$1" pin="Y1" pad="P$5"/>
<connect gate="G$1" pin="Y2" pad="P$6"/>
<connect gate="G$1" pin="Y3" pad="P$7"/>
<connect gate="G$1" pin="Y4" pad="P$8"/>
<connect gate="G$1" pin="Y5" pad="P$9"/>
<connect gate="G$1" pin="Y6" pad="P$10"/>
<connect gate="G$1" pin="Y7" pad="P$11"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ROM-A8D64" prefix="ROM" uservalue="yes">
<description>64-bit wide 256-word deep ROM</description>
<gates>
<gate name="G$1" symbol="ROM-A8D64" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="OE" pad="P$9"/>
<connect gate="G$1" pin="Y0" pad="P$11"/>
<connect gate="G$1" pin="Y1" pad="P$12"/>
<connect gate="G$1" pin="Y10" pad="P$21"/>
<connect gate="G$1" pin="Y11" pad="P$22"/>
<connect gate="G$1" pin="Y12" pad="P$23"/>
<connect gate="G$1" pin="Y13" pad="P$24"/>
<connect gate="G$1" pin="Y14" pad="P$25"/>
<connect gate="G$1" pin="Y15" pad="P$26"/>
<connect gate="G$1" pin="Y16" pad="P$27"/>
<connect gate="G$1" pin="Y17" pad="P$28"/>
<connect gate="G$1" pin="Y18" pad="P$29"/>
<connect gate="G$1" pin="Y19" pad="P$30"/>
<connect gate="G$1" pin="Y2" pad="P$13"/>
<connect gate="G$1" pin="Y20" pad="P$31"/>
<connect gate="G$1" pin="Y21" pad="P$32"/>
<connect gate="G$1" pin="Y22" pad="P$33"/>
<connect gate="G$1" pin="Y23" pad="P$34"/>
<connect gate="G$1" pin="Y24" pad="P$35"/>
<connect gate="G$1" pin="Y25" pad="P$36"/>
<connect gate="G$1" pin="Y26" pad="P$37"/>
<connect gate="G$1" pin="Y27" pad="P$38"/>
<connect gate="G$1" pin="Y28" pad="P$39"/>
<connect gate="G$1" pin="Y29" pad="P$40"/>
<connect gate="G$1" pin="Y3" pad="P$14"/>
<connect gate="G$1" pin="Y30" pad="P$41"/>
<connect gate="G$1" pin="Y31" pad="P$42"/>
<connect gate="G$1" pin="Y32" pad="P$43"/>
<connect gate="G$1" pin="Y33" pad="P$44"/>
<connect gate="G$1" pin="Y34" pad="P$45"/>
<connect gate="G$1" pin="Y35" pad="P$46"/>
<connect gate="G$1" pin="Y36" pad="P$47"/>
<connect gate="G$1" pin="Y37" pad="P$48"/>
<connect gate="G$1" pin="Y38" pad="P$49"/>
<connect gate="G$1" pin="Y39" pad="P$50"/>
<connect gate="G$1" pin="Y4" pad="P$15"/>
<connect gate="G$1" pin="Y40" pad="P$51"/>
<connect gate="G$1" pin="Y41" pad="P$52"/>
<connect gate="G$1" pin="Y42" pad="P$53"/>
<connect gate="G$1" pin="Y43" pad="P$54"/>
<connect gate="G$1" pin="Y44" pad="P$55"/>
<connect gate="G$1" pin="Y45" pad="P$56"/>
<connect gate="G$1" pin="Y46" pad="P$57"/>
<connect gate="G$1" pin="Y47" pad="P$58"/>
<connect gate="G$1" pin="Y48" pad="P$59"/>
<connect gate="G$1" pin="Y49" pad="P$60"/>
<connect gate="G$1" pin="Y5" pad="P$16"/>
<connect gate="G$1" pin="Y50" pad="P$61"/>
<connect gate="G$1" pin="Y51" pad="P$62"/>
<connect gate="G$1" pin="Y52" pad="P$63"/>
<connect gate="G$1" pin="Y53" pad="P$64"/>
<connect gate="G$1" pin="Y54" pad="P$65"/>
<connect gate="G$1" pin="Y55" pad="P$66"/>
<connect gate="G$1" pin="Y56" pad="P$67"/>
<connect gate="G$1" pin="Y57" pad="P$68"/>
<connect gate="G$1" pin="Y58" pad="P$69"/>
<connect gate="G$1" pin="Y59" pad="P$70"/>
<connect gate="G$1" pin="Y6" pad="P$17"/>
<connect gate="G$1" pin="Y60" pad="P$71"/>
<connect gate="G$1" pin="Y61" pad="P$72"/>
<connect gate="G$1" pin="Y62" pad="P$73"/>
<connect gate="G$1" pin="Y63" pad="P$74"/>
<connect gate="G$1" pin="Y7" pad="P$18"/>
<connect gate="G$1" pin="Y8" pad="P$19"/>
<connect gate="G$1" pin="Y9" pad="P$20"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RAM-A8D64" prefix="RAM" uservalue="yes">
<description>64-bit wide 256-word deep RAM</description>
<gates>
<gate name="G$1" symbol="RAM-A8D64" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="OE" pad="P$9"/>
<connect gate="G$1" pin="Q0" pad="P$10"/>
<connect gate="G$1" pin="Q1" pad="P$11"/>
<connect gate="G$1" pin="Q10" pad="P$20"/>
<connect gate="G$1" pin="Q11" pad="P$21"/>
<connect gate="G$1" pin="Q12" pad="P$22"/>
<connect gate="G$1" pin="Q13" pad="P$23"/>
<connect gate="G$1" pin="Q14" pad="P$24"/>
<connect gate="G$1" pin="Q15" pad="P$25"/>
<connect gate="G$1" pin="Q16" pad="P$26"/>
<connect gate="G$1" pin="Q17" pad="P$27"/>
<connect gate="G$1" pin="Q18" pad="P$28"/>
<connect gate="G$1" pin="Q19" pad="P$29"/>
<connect gate="G$1" pin="Q2" pad="P$12"/>
<connect gate="G$1" pin="Q20" pad="P$30"/>
<connect gate="G$1" pin="Q21" pad="P$31"/>
<connect gate="G$1" pin="Q22" pad="P$32"/>
<connect gate="G$1" pin="Q23" pad="P$33"/>
<connect gate="G$1" pin="Q24" pad="P$34"/>
<connect gate="G$1" pin="Q25" pad="P$35"/>
<connect gate="G$1" pin="Q26" pad="P$36"/>
<connect gate="G$1" pin="Q27" pad="P$37"/>
<connect gate="G$1" pin="Q28" pad="P$38"/>
<connect gate="G$1" pin="Q29" pad="P$39"/>
<connect gate="G$1" pin="Q3" pad="P$13"/>
<connect gate="G$1" pin="Q30" pad="P$40"/>
<connect gate="G$1" pin="Q31" pad="P$41"/>
<connect gate="G$1" pin="Q32" pad="P$42"/>
<connect gate="G$1" pin="Q33" pad="P$43"/>
<connect gate="G$1" pin="Q34" pad="P$44"/>
<connect gate="G$1" pin="Q35" pad="P$45"/>
<connect gate="G$1" pin="Q36" pad="P$46"/>
<connect gate="G$1" pin="Q37" pad="P$47"/>
<connect gate="G$1" pin="Q38" pad="P$48"/>
<connect gate="G$1" pin="Q39" pad="P$49"/>
<connect gate="G$1" pin="Q4" pad="P$14"/>
<connect gate="G$1" pin="Q40" pad="P$50"/>
<connect gate="G$1" pin="Q41" pad="P$51"/>
<connect gate="G$1" pin="Q42" pad="P$52"/>
<connect gate="G$1" pin="Q43" pad="P$53"/>
<connect gate="G$1" pin="Q44" pad="P$54"/>
<connect gate="G$1" pin="Q45" pad="P$55"/>
<connect gate="G$1" pin="Q46" pad="P$56"/>
<connect gate="G$1" pin="Q47" pad="P$57"/>
<connect gate="G$1" pin="Q48" pad="P$58"/>
<connect gate="G$1" pin="Q49" pad="P$59"/>
<connect gate="G$1" pin="Q5" pad="P$15"/>
<connect gate="G$1" pin="Q50" pad="P$60"/>
<connect gate="G$1" pin="Q51" pad="P$61"/>
<connect gate="G$1" pin="Q52" pad="P$62"/>
<connect gate="G$1" pin="Q53" pad="P$63"/>
<connect gate="G$1" pin="Q54" pad="P$64"/>
<connect gate="G$1" pin="Q55" pad="P$65"/>
<connect gate="G$1" pin="Q56" pad="P$66"/>
<connect gate="G$1" pin="Q57" pad="P$67"/>
<connect gate="G$1" pin="Q58" pad="P$68"/>
<connect gate="G$1" pin="Q59" pad="P$69"/>
<connect gate="G$1" pin="Q6" pad="P$16"/>
<connect gate="G$1" pin="Q60" pad="P$70"/>
<connect gate="G$1" pin="Q61" pad="P$71"/>
<connect gate="G$1" pin="Q62" pad="P$72"/>
<connect gate="G$1" pin="Q63" pad="P$73"/>
<connect gate="G$1" pin="Q7" pad="P$17"/>
<connect gate="G$1" pin="Q8" pad="P$18"/>
<connect gate="G$1" pin="Q9" pad="P$19"/>
<connect gate="G$1" pin="W" pad="P$74"/>
<connect gate="G$1" pin="Y0" pad="P$75"/>
<connect gate="G$1" pin="Y1" pad="P$76"/>
<connect gate="G$1" pin="Y10" pad="P$85"/>
<connect gate="G$1" pin="Y11" pad="P$86"/>
<connect gate="G$1" pin="Y12" pad="P$87"/>
<connect gate="G$1" pin="Y13" pad="P$88"/>
<connect gate="G$1" pin="Y14" pad="P$89"/>
<connect gate="G$1" pin="Y15" pad="P$90"/>
<connect gate="G$1" pin="Y16" pad="P$91"/>
<connect gate="G$1" pin="Y17" pad="P$92"/>
<connect gate="G$1" pin="Y18" pad="P$93"/>
<connect gate="G$1" pin="Y19" pad="P$94"/>
<connect gate="G$1" pin="Y2" pad="P$77"/>
<connect gate="G$1" pin="Y20" pad="P$95"/>
<connect gate="G$1" pin="Y21" pad="P$96"/>
<connect gate="G$1" pin="Y22" pad="P$97"/>
<connect gate="G$1" pin="Y23" pad="P$98"/>
<connect gate="G$1" pin="Y24" pad="P$99"/>
<connect gate="G$1" pin="Y25" pad="P$100"/>
<connect gate="G$1" pin="Y26" pad="P$101"/>
<connect gate="G$1" pin="Y27" pad="P$102"/>
<connect gate="G$1" pin="Y28" pad="P$103"/>
<connect gate="G$1" pin="Y29" pad="P$104"/>
<connect gate="G$1" pin="Y3" pad="P$78"/>
<connect gate="G$1" pin="Y30" pad="P$105"/>
<connect gate="G$1" pin="Y31" pad="P$106"/>
<connect gate="G$1" pin="Y32" pad="P$107"/>
<connect gate="G$1" pin="Y33" pad="P$108"/>
<connect gate="G$1" pin="Y34" pad="P$109"/>
<connect gate="G$1" pin="Y35" pad="P$110"/>
<connect gate="G$1" pin="Y36" pad="P$111"/>
<connect gate="G$1" pin="Y37" pad="P$112"/>
<connect gate="G$1" pin="Y38" pad="P$113"/>
<connect gate="G$1" pin="Y39" pad="P$114"/>
<connect gate="G$1" pin="Y4" pad="P$79"/>
<connect gate="G$1" pin="Y40" pad="P$115"/>
<connect gate="G$1" pin="Y41" pad="P$116"/>
<connect gate="G$1" pin="Y42" pad="P$117"/>
<connect gate="G$1" pin="Y43" pad="P$118"/>
<connect gate="G$1" pin="Y44" pad="P$119"/>
<connect gate="G$1" pin="Y45" pad="P$120"/>
<connect gate="G$1" pin="Y46" pad="P$121"/>
<connect gate="G$1" pin="Y47" pad="P$122"/>
<connect gate="G$1" pin="Y48" pad="P$123"/>
<connect gate="G$1" pin="Y49" pad="P$124"/>
<connect gate="G$1" pin="Y5" pad="P$80"/>
<connect gate="G$1" pin="Y50" pad="P$125"/>
<connect gate="G$1" pin="Y51" pad="P$126"/>
<connect gate="G$1" pin="Y52" pad="P$127"/>
<connect gate="G$1" pin="Y53" pad="P$128"/>
<connect gate="G$1" pin="Y54" pad="P$129"/>
<connect gate="G$1" pin="Y55" pad="P$130"/>
<connect gate="G$1" pin="Y56" pad="P$131"/>
<connect gate="G$1" pin="Y57" pad="P$132"/>
<connect gate="G$1" pin="Y58" pad="P$133"/>
<connect gate="G$1" pin="Y59" pad="P$134"/>
<connect gate="G$1" pin="Y6" pad="P$81"/>
<connect gate="G$1" pin="Y60" pad="P$135"/>
<connect gate="G$1" pin="Y61" pad="P$136"/>
<connect gate="G$1" pin="Y62" pad="P$137"/>
<connect gate="G$1" pin="Y63" pad="P$138"/>
<connect gate="G$1" pin="Y7" pad="P$82"/>
<connect gate="G$1" pin="Y8" pad="P$83"/>
<connect gate="G$1" pin="Y9" pad="P$84"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FLIPFLOP-JK" prefix="FLP" uservalue="yes">
<description>Standard JK flip-flop</description>
<gates>
<gate name="G$1" symbol="FLIPFLOP-JK" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="!Q" pad="P$1"/>
<connect gate="G$1" pin="CLK" pad="P$2"/>
<connect gate="G$1" pin="J" pad="P$3"/>
<connect gate="G$1" pin="K" pad="P$4"/>
<connect gate="G$1" pin="Q" pad="P$5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MUX-2X1" prefix="MUX" uservalue="yes">
<description>2-way 1-bit mux</description>
<gates>
<gate name="G$1" symbol="MUX-2X1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="B0" pad="P$2"/>
<connect gate="G$1" pin="SEL_A" pad="P$3"/>
<connect gate="G$1" pin="Y0" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NOR-2" prefix="NOR" uservalue="yes">
<gates>
<gate name="G$1" symbol="NOR-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="B" pad="P$2"/>
<connect gate="G$1" pin="Y" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NOT" prefix="NOT" uservalue="yes">
<description>Inverter</description>
<gates>
<gate name="G$1" symbol="NOT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="Q" pad="P$1"/>
<connect gate="G$1" pin="Y" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RAM-A20D8" prefix="RAM" uservalue="yes">
<gates>
<gate name="G$1" symbol="RAM-A20D8" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A10" pad="P$11"/>
<connect gate="G$1" pin="A11" pad="P$12"/>
<connect gate="G$1" pin="A12" pad="P$13"/>
<connect gate="G$1" pin="A13" pad="P$14"/>
<connect gate="G$1" pin="A14" pad="P$15"/>
<connect gate="G$1" pin="A15" pad="P$16"/>
<connect gate="G$1" pin="A16" pad="P$17"/>
<connect gate="G$1" pin="A17" pad="P$18"/>
<connect gate="G$1" pin="A18" pad="P$19"/>
<connect gate="G$1" pin="A19" pad="P$20"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="A8" pad="P$9"/>
<connect gate="G$1" pin="A9" pad="P$10"/>
<connect gate="G$1" pin="OE" pad="P$21"/>
<connect gate="G$1" pin="Q0" pad="P$22"/>
<connect gate="G$1" pin="Q1" pad="P$23"/>
<connect gate="G$1" pin="Q2" pad="P$24"/>
<connect gate="G$1" pin="Q3" pad="P$25"/>
<connect gate="G$1" pin="Q4" pad="P$26"/>
<connect gate="G$1" pin="Q5" pad="P$27"/>
<connect gate="G$1" pin="Q6" pad="P$28"/>
<connect gate="G$1" pin="Q7" pad="P$29"/>
<connect gate="G$1" pin="W" pad="P$30"/>
<connect gate="G$1" pin="Y0" pad="P$31"/>
<connect gate="G$1" pin="Y1" pad="P$32"/>
<connect gate="G$1" pin="Y2" pad="P$33"/>
<connect gate="G$1" pin="Y3" pad="P$34"/>
<connect gate="G$1" pin="Y4" pad="P$35"/>
<connect gate="G$1" pin="Y5" pad="P$36"/>
<connect gate="G$1" pin="Y6" pad="P$37"/>
<connect gate="G$1" pin="Y7" pad="P$38"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ROM-A20D8" prefix="ROM" uservalue="yes">
<gates>
<gate name="G$1" symbol="ROM-A20D8" x="0" y="-10.16"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A10" pad="P$11"/>
<connect gate="G$1" pin="A11" pad="P$12"/>
<connect gate="G$1" pin="A12" pad="P$13"/>
<connect gate="G$1" pin="A13" pad="P$14"/>
<connect gate="G$1" pin="A14" pad="P$15"/>
<connect gate="G$1" pin="A15" pad="P$16"/>
<connect gate="G$1" pin="A16" pad="P$17"/>
<connect gate="G$1" pin="A17" pad="P$18"/>
<connect gate="G$1" pin="A18" pad="P$19"/>
<connect gate="G$1" pin="A19" pad="P$20"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="A8" pad="P$9"/>
<connect gate="G$1" pin="A9" pad="P$10"/>
<connect gate="G$1" pin="OE" pad="P$21"/>
<connect gate="G$1" pin="Y0" pad="P$22"/>
<connect gate="G$1" pin="Y1" pad="P$23"/>
<connect gate="G$1" pin="Y2" pad="P$24"/>
<connect gate="G$1" pin="Y3" pad="P$25"/>
<connect gate="G$1" pin="Y4" pad="P$26"/>
<connect gate="G$1" pin="Y5" pad="P$27"/>
<connect gate="G$1" pin="Y6" pad="P$28"/>
<connect gate="G$1" pin="Y7" pad="P$29"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AND-4" prefix="AND" uservalue="yes">
<gates>
<gate name="G$1" symbol="AND-4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="B" pad="P$2"/>
<connect gate="G$1" pin="C" pad="P$3"/>
<connect gate="G$1" pin="D" pad="P$4"/>
<connect gate="G$1" pin="Y" pad="P$5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AND-2" prefix="AND" uservalue="yes">
<description>2-input AND gate</description>
<gates>
<gate name="G$1" symbol="AND-2" x="-7.62" y="2.54"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="B" pad="P$2"/>
<connect gate="G$1" pin="Y" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NOR-4" prefix="NOR" uservalue="yes">
<gates>
<gate name="G$1" symbol="NOR-4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="B" pad="P$2"/>
<connect gate="G$1" pin="C" pad="P$3"/>
<connect gate="G$1" pin="D" pad="P$4"/>
<connect gate="G$1" pin="Y" pad="P$5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ALU-4" prefix="ALU" uservalue="yes">
<gates>
<gate name="G$1" symbol="ALU-4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="B0" pad="P$5"/>
<connect gate="G$1" pin="B1" pad="P$6"/>
<connect gate="G$1" pin="B2" pad="P$7"/>
<connect gate="G$1" pin="B3" pad="P$8"/>
<connect gate="G$1" pin="CN" pad="P$9"/>
<connect gate="G$1" pin="CN+4" pad="P$10"/>
<connect gate="G$1" pin="F0" pad="P$11"/>
<connect gate="G$1" pin="F1" pad="P$12"/>
<connect gate="G$1" pin="F2" pad="P$13"/>
<connect gate="G$1" pin="F3" pad="P$14"/>
<connect gate="G$1" pin="GG" pad="P$15"/>
<connect gate="G$1" pin="M" pad="P$16"/>
<connect gate="G$1" pin="PG" pad="P$17"/>
<connect gate="G$1" pin="S0" pad="P$18"/>
<connect gate="G$1" pin="S1" pad="P$19"/>
<connect gate="G$1" pin="S2" pad="P$20"/>
<connect gate="G$1" pin="S3" pad="P$21"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CLAG-4" prefix="CLAG" uservalue="yes">
<gates>
<gate name="G$1" symbol="CLAG-4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="CN" pad="P$1"/>
<connect gate="G$1" pin="CN+2" pad="P$2"/>
<connect gate="G$1" pin="CN+4" pad="P$3"/>
<connect gate="G$1" pin="G" pad="P$4"/>
<connect gate="G$1" pin="G0" pad="P$5"/>
<connect gate="G$1" pin="G1" pad="P$6"/>
<connect gate="G$1" pin="G2" pad="P$7"/>
<connect gate="G$1" pin="G3" pad="P$8"/>
<connect gate="G$1" pin="P" pad="P$9"/>
<connect gate="G$1" pin="P0" pad="P$10"/>
<connect gate="G$1" pin="P1" pad="P$11"/>
<connect gate="G$1" pin="P2" pad="P$12"/>
<connect gate="G$1" pin="P3" pad="P$13"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DEMUX-8X8" prefix="DEMUX">
<gates>
<gate name="G$1" symbol="DEMUX-8X8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A0" pad="P$1"/>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="B0" pad="P$9"/>
<connect gate="G$1" pin="B1" pad="P$10"/>
<connect gate="G$1" pin="B2" pad="P$11"/>
<connect gate="G$1" pin="B3" pad="P$12"/>
<connect gate="G$1" pin="B4" pad="P$13"/>
<connect gate="G$1" pin="B5" pad="P$14"/>
<connect gate="G$1" pin="B6" pad="P$15"/>
<connect gate="G$1" pin="B7" pad="P$16"/>
<connect gate="G$1" pin="C0" pad="P$17"/>
<connect gate="G$1" pin="C1" pad="P$18"/>
<connect gate="G$1" pin="C2" pad="P$19"/>
<connect gate="G$1" pin="C3" pad="P$20"/>
<connect gate="G$1" pin="C4" pad="P$21"/>
<connect gate="G$1" pin="C5" pad="P$22"/>
<connect gate="G$1" pin="C6" pad="P$23"/>
<connect gate="G$1" pin="C7" pad="P$24"/>
<connect gate="G$1" pin="D0" pad="P$25"/>
<connect gate="G$1" pin="D1" pad="P$26"/>
<connect gate="G$1" pin="D2" pad="P$27"/>
<connect gate="G$1" pin="D3" pad="P$28"/>
<connect gate="G$1" pin="D4" pad="P$29"/>
<connect gate="G$1" pin="D5" pad="P$30"/>
<connect gate="G$1" pin="D6" pad="P$31"/>
<connect gate="G$1" pin="D7" pad="P$32"/>
<connect gate="G$1" pin="E0" pad="P$33"/>
<connect gate="G$1" pin="E1" pad="P$34"/>
<connect gate="G$1" pin="E2" pad="P$35"/>
<connect gate="G$1" pin="E3" pad="P$36"/>
<connect gate="G$1" pin="E4" pad="P$37"/>
<connect gate="G$1" pin="E5" pad="P$38"/>
<connect gate="G$1" pin="E6" pad="P$39"/>
<connect gate="G$1" pin="E7" pad="P$40"/>
<connect gate="G$1" pin="F0" pad="P$41"/>
<connect gate="G$1" pin="F1" pad="P$42"/>
<connect gate="G$1" pin="F2" pad="P$43"/>
<connect gate="G$1" pin="F3" pad="P$44"/>
<connect gate="G$1" pin="F4" pad="P$45"/>
<connect gate="G$1" pin="F5" pad="P$46"/>
<connect gate="G$1" pin="F6" pad="P$47"/>
<connect gate="G$1" pin="F7" pad="P$48"/>
<connect gate="G$1" pin="G0" pad="P$49"/>
<connect gate="G$1" pin="G1" pad="P$50"/>
<connect gate="G$1" pin="G2" pad="P$51"/>
<connect gate="G$1" pin="G3" pad="P$52"/>
<connect gate="G$1" pin="G4" pad="P$53"/>
<connect gate="G$1" pin="G5" pad="P$54"/>
<connect gate="G$1" pin="G6" pad="P$55"/>
<connect gate="G$1" pin="G7" pad="P$56"/>
<connect gate="G$1" pin="H0" pad="P$57"/>
<connect gate="G$1" pin="H1" pad="P$58"/>
<connect gate="G$1" pin="H2" pad="P$59"/>
<connect gate="G$1" pin="H3" pad="P$60"/>
<connect gate="G$1" pin="H4" pad="P$61"/>
<connect gate="G$1" pin="H5" pad="P$62"/>
<connect gate="G$1" pin="H6" pad="P$63"/>
<connect gate="G$1" pin="H7" pad="P$64"/>
<connect gate="G$1" pin="SEL0" pad="P$65"/>
<connect gate="G$1" pin="SEL1" pad="P$66"/>
<connect gate="G$1" pin="SEL2" pad="P$67"/>
<connect gate="G$1" pin="Y0" pad="P$68"/>
<connect gate="G$1" pin="Y1" pad="P$69"/>
<connect gate="G$1" pin="Y2" pad="P$70"/>
<connect gate="G$1" pin="Y3" pad="P$71"/>
<connect gate="G$1" pin="Y4" pad="P$72"/>
<connect gate="G$1" pin="Y5" pad="P$73"/>
<connect gate="G$1" pin="Y6" pad="P$74"/>
<connect gate="G$1" pin="Y7" pad="P$75"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="OR-2" prefix="OR" uservalue="yes">
<gates>
<gate name="G$1" symbol="OR-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="B" pad="P$2"/>
<connect gate="G$1" pin="Y" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LINKS-8" prefix="LINK" uservalue="yes">
<description>8 "0-ohm" links, used to have signals with different names on either side.</description>
<gates>
<gate name="G$1" symbol="LINKS-8" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="NULL">
<connects>
<connect gate="G$1" pin="A1" pad="P$1"/>
<connect gate="G$1" pin="A2" pad="P$2"/>
<connect gate="G$1" pin="A3" pad="P$3"/>
<connect gate="G$1" pin="A4" pad="P$4"/>
<connect gate="G$1" pin="A5" pad="P$5"/>
<connect gate="G$1" pin="A6" pad="P$6"/>
<connect gate="G$1" pin="A7" pad="P$7"/>
<connect gate="G$1" pin="A8" pad="P$8"/>
<connect gate="G$1" pin="B1" pad="P$9"/>
<connect gate="G$1" pin="B2" pad="P$10"/>
<connect gate="G$1" pin="B3" pad="P$11"/>
<connect gate="G$1" pin="B4" pad="P$12"/>
<connect gate="G$1" pin="B5" pad="P$13"/>
<connect gate="G$1" pin="B6" pad="P$14"/>
<connect gate="G$1" pin="B7" pad="P$15"/>
<connect gate="G$1" pin="B8" pad="P$16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
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
<symbol name="V+">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-1.27" y="1.27" size="1.778" layer="96">&gt;VALUE</text>
<pin name="V+" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="V-">
<wire x1="-1.27" y1="1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<text x="-1.27" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="V-" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="V+" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="V+" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V-" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="V-" x="0" y="0"/>
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
<part name="MUX1" library="logicalgates-sen" deviceset="MUX-2X8" device="" value="MC JMP Mux"/>
<part name="CTR1" library="logicalgates-sen" deviceset="COUNTER-8-LR" device="" value="MC Seq. Ctr"/>
<part name="MUX2" library="logicalgates-sen" deviceset="MUX-2X8" device="" value="MDR Mux"/>
<part name="LAT2" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Int. Reg. MDR"/>
<part name="LAT3" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Int. Reg. IR"/>
<part name="LAT4" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Int. Reg. MAR"/>
<part name="CTR2" library="logicalgates-sen" deviceset="COUNTER-8-LR" device="" value="PC Sequencer"/>
<part name="LAT5" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register A"/>
<part name="LAT6" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register B"/>
<part name="LAT7" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register C"/>
<part name="LAT8" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register D"/>
<part name="DEMUX1" library="logicalgates-sen" deviceset="DEMUX-3X8" device="" value="Reg. Latch MC Demux"/>
<part name="ROM1" library="logicalgates-sen" deviceset="ROM-A8D64" device="" value="Control Store ROM"/>
<part name="RAM1" library="logicalgates-sen" deviceset="RAM-A8D64" device="" value="Control Store RAM"/>
<part name="MUX3" library="logicalgates-sen" deviceset="MUX-2X1" device="" value="MC Clk Sel"/>
<part name="NOR1" library="logicalgates-sen" deviceset="NOR-2" device=""/>
<part name="FLP2" library="logicalgates-sen" deviceset="FLIPFLOP-JK" device="" value="CS Ready"/>
<part name="NOT1" library="logicalgates-sen" deviceset="NOT" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="V+" device=""/>
<part name="SUPPLY2" library="supply2" deviceset="V-" device=""/>
<part name="RAM2" library="logicalgates-sen" deviceset="RAM-A20D8" device="" value="Main Memory"/>
<part name="ROM2" library="logicalgates-sen" deviceset="ROM-A20D8" device="" value="Boot ROM"/>
<part name="AND1" library="logicalgates-sen" deviceset="AND-4" device=""/>
<part name="AND3" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="LAT9" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Int. Reg. MAR"/>
<part name="LAT10" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register A"/>
<part name="LAT11" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register B"/>
<part name="LAT12" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register C"/>
<part name="LAT13" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register D"/>
<part name="CTR3" library="logicalgates-sen" deviceset="COUNTER-8-LR" device="" value="PC Sequencer"/>
<part name="MUX4" library="logicalgates-sen" deviceset="MUX-2X8" device="" value="MAR Mux"/>
<part name="MUX5" library="logicalgates-sen" deviceset="MUX-2X8" device="" value="MAR Mux"/>
<part name="SUPPLY3" library="supply2" deviceset="V+" device=""/>
<part name="NOR2" library="logicalgates-sen" deviceset="NOR-2" device=""/>
<part name="NOR3" library="logicalgates-sen" deviceset="NOR-4" device=""/>
<part name="ALU1" library="logicalgates-sen" deviceset="ALU-4" device=""/>
<part name="ALU2" library="logicalgates-sen" deviceset="ALU-4" device=""/>
<part name="ALU3" library="logicalgates-sen" deviceset="ALU-4" device=""/>
<part name="ALU4" library="logicalgates-sen" deviceset="ALU-4" device=""/>
<part name="LAT14" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register X"/>
<part name="LAT15" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register X"/>
<part name="LAT16" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register Y"/>
<part name="LAT17" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Register Y"/>
<part name="CLAG1" library="logicalgates-sen" deviceset="CLAG-4" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="V-" device=""/>
<part name="SUPPLY7" library="supply2" deviceset="V-" device=""/>
<part name="DEMUX2" library="logicalgates-sen" deviceset="DEMUX-8X8" device="" value="X/Y Source"/>
<part name="SUPPLY4" library="supply2" deviceset="V-" device=""/>
<part name="DEMUX3" library="logicalgates-sen" deviceset="DEMUX-8X8" device="" value="X/Y Source"/>
<part name="SUPPLY5" library="supply2" deviceset="V-" device=""/>
<part name="MUX6" library="logicalgates-sen" deviceset="MUX-2X8" device="" value="MDR Mux"/>
<part name="LAT1" library="logicalgates-sen" deviceset="LATCH-8" device="" value="Int. Reg. MDR"/>
<part name="DEMUX4" library="logicalgates-sen" deviceset="DEMUX-3X8" device="" value="Reg. Latch IR Demux"/>
<part name="AND2" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="AND4" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="OR1" library="logicalgates-sen" deviceset="OR-2" device=""/>
<part name="OR2" library="logicalgates-sen" deviceset="OR-2" device=""/>
<part name="OR3" library="logicalgates-sen" deviceset="OR-2" device=""/>
<part name="OR4" library="logicalgates-sen" deviceset="OR-2" device=""/>
<part name="AND5" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="AND6" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="AND7" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="AND8" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="AND9" library="logicalgates-sen" deviceset="AND-2" device=""/>
<part name="CTR4" library="logicalgates-sen" deviceset="COUNTER-8-LR" device="" value="Clk Divider"/>
<part name="LINK1" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
<part name="LINK2" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
<part name="LINK3" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
<part name="LINK4" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
<part name="LINK5" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
<part name="LINK6" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
<part name="LINK7" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
<part name="LINK8" library="logicalgates-sen" deviceset="LINKS-8" device=""/>
</parts>
<sheets>
<sheet>
<description>Main</description>
<plain>
<text x="73.66" y="144.78" size="5.08" layer="94">TODO: cs_ready logic</text>
<rectangle x1="309.88" y1="16.51" x2="312.42" y2="78.74" layer="94"/>
<rectangle x1="309.88" y1="-86.36" x2="312.42" y2="16.51" layer="97"/>
</plain>
<instances>
<instance part="MUX1" gate="G$1" x="88.9" y="55.88"/>
<instance part="CTR1" gate="G$1" x="119.38" y="53.34"/>
<instance part="MUX2" gate="G$1" x="88.9" y="-17.78"/>
<instance part="LAT2" gate="G$1" x="116.84" y="-22.86"/>
<instance part="LAT3" gate="G$1" x="60.96" y="60.96"/>
<instance part="LAT4" gate="G$1" x="86.36" y="-185.42"/>
<instance part="CTR2" gate="G$1" x="12.7" y="-195.58"/>
<instance part="LAT5" gate="G$1" x="5.08" y="121.92"/>
<instance part="LAT6" gate="G$1" x="5.08" y="50.8"/>
<instance part="LAT7" gate="G$1" x="5.08" y="-20.32"/>
<instance part="LAT8" gate="G$1" x="5.08" y="-91.44"/>
<instance part="DEMUX1" gate="G$1" x="-109.22" y="10.16" smashed="yes">
<attribute name="NAME" x="-116.332" y="20.828" size="1.778" layer="95"/>
<attribute name="VALUE" x="-121.666" y="-4.826" size="1.778" layer="96"/>
</instance>
<instance part="ROM1" gate="G$1" x="223.52" y="0"/>
<instance part="RAM1" gate="G$1" x="274.32" y="0"/>
<instance part="MUX3" gate="G$1" x="121.92" y="88.9" smashed="yes" rot="R270">
<attribute name="NAME" x="112.268" y="96.52" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="127.508" y="96.774" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="NOR1" gate="G$1" x="287.02" y="104.14" rot="R270"/>
<instance part="FLP2" gate="G$1" x="137.16" y="114.3" rot="R270"/>
<instance part="NOT1" gate="G$1" x="137.16" y="137.16" rot="R270"/>
<instance part="SUPPLY1" gate="1" x="139.7" y="129.54" smashed="yes">
<attribute name="VALUE" x="138.684" y="130.302" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="1" x="134.62" y="129.54" rot="R180"/>
<instance part="RAM2" gate="G$1" x="223.52" y="-152.4"/>
<instance part="ROM2" gate="G$1" x="223.52" y="-251.46"/>
<instance part="AND1" gate="G$1" x="208.28" y="-289.56"/>
<instance part="AND3" gate="G$1" x="218.44" y="-208.28"/>
<instance part="LAT9" gate="G$1" x="86.36" y="-243.84"/>
<instance part="LAT10" gate="G$1" x="5.08" y="86.36"/>
<instance part="LAT11" gate="G$1" x="5.08" y="15.24"/>
<instance part="LAT12" gate="G$1" x="5.08" y="-55.88"/>
<instance part="LAT13" gate="G$1" x="5.08" y="-127"/>
<instance part="CTR3" gate="G$1" x="12.7" y="-254"/>
<instance part="MUX4" gate="G$1" x="58.42" y="-180.34"/>
<instance part="MUX5" gate="G$1" x="58.42" y="-238.76"/>
<instance part="SUPPLY3" gate="1" x="27.94" y="-177.8" smashed="yes">
<attribute name="VALUE" x="26.924" y="-177.038" size="1.778" layer="96"/>
</instance>
<instance part="NOR2" gate="G$1" x="236.22" y="-299.72"/>
<instance part="NOR3" gate="G$1" x="208.28" y="-309.88"/>
<instance part="MUX6" gate="G$1" x="88.9" y="-73.66"/>
<instance part="LAT1" gate="G$1" x="116.84" y="-78.74"/>
<instance part="DEMUX4" gate="G$1" x="-109.22" y="-17.78" smashed="yes">
<attribute name="NAME" x="-116.332" y="-7.112" size="1.778" layer="95"/>
<attribute name="VALUE" x="-121.666" y="-32.766" size="1.778" layer="96"/>
</instance>
<instance part="AND2" gate="G$1" x="-142.24" y="-12.7"/>
<instance part="AND4" gate="G$1" x="-142.24" y="-25.4"/>
<instance part="OR1" gate="G$1" x="-53.34" y="12.7"/>
<instance part="OR2" gate="G$1" x="-53.34" y="0"/>
<instance part="OR3" gate="G$1" x="-53.34" y="-12.7"/>
<instance part="OR4" gate="G$1" x="-53.34" y="-25.4"/>
<instance part="AND5" gate="G$1" x="-25.4" y="96.52"/>
<instance part="AND6" gate="G$1" x="-25.4" y="25.4"/>
<instance part="AND7" gate="G$1" x="-25.4" y="-45.72"/>
<instance part="AND8" gate="G$1" x="-25.4" y="-116.84"/>
<instance part="AND9" gate="G$1" x="101.6" y="91.44" rot="R270"/>
<instance part="CTR4" gate="G$1" x="76.2" y="116.84"/>
<instance part="LINK1" gate="G$1" x="309.88" y="66.04"/>
<instance part="LINK2" gate="G$1" x="309.88" y="45.72"/>
<instance part="LINK3" gate="G$1" x="309.88" y="25.4"/>
<instance part="LINK4" gate="G$1" x="309.88" y="5.08"/>
<instance part="LINK5" gate="G$1" x="309.88" y="-15.24"/>
<instance part="LINK6" gate="G$1" x="309.88" y="-35.56"/>
<instance part="LINK7" gate="G$1" x="309.88" y="-55.88"/>
<instance part="LINK8" gate="G$1" x="309.88" y="-76.2"/>
</instances>
<busses>
<bus name="CS_ADDR[0..7]">
<segment>
<wire x1="134.62" y1="53.34" x2="134.62" y2="33.02" width="0.762" layer="92"/>
<wire x1="134.62" y1="33.02" x2="137.16" y2="30.48" width="0.762" layer="92"/>
<label x="156.718" y="30.48" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="208.28" y1="91.44" x2="276.86" y2="91.44" width="0.762" layer="92"/>
<wire x1="205.74" y1="91.44" x2="208.28" y2="91.44" width="0.762" layer="92"/>
<wire x1="205.74" y1="91.44" x2="203.2" y2="93.98" width="0.762" layer="92"/>
<label x="202.946" y="96.012" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="DATA[0..7]">
<segment>
<wire x1="71.12" y1="-111.76" x2="73.66" y2="-109.22" width="0.762" layer="92"/>
<wire x1="73.66" y1="-109.22" x2="73.66" y2="-33.02" width="0.762" layer="92"/>
<label x="70.612" y="-112.268" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="43.18" y1="40.64" x2="45.72" y2="43.18" width="0.762" layer="92"/>
<wire x1="45.72" y1="43.18" x2="45.72" y2="63.5" width="0.762" layer="92"/>
<label x="42.672" y="39.878" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="195.58" y1="-198.12" x2="198.12" y2="-195.58" width="0.762" layer="92"/>
<wire x1="198.12" y1="-195.58" x2="198.12" y2="-175.26" width="0.762" layer="92"/>
<label x="195.326" y="-198.374" size="1.27" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="251.46" y1="-198.12" x2="248.92" y2="-195.58" width="0.762" layer="92"/>
<wire x1="248.92" y1="-195.58" x2="248.92" y2="-175.26" width="0.762" layer="92"/>
<label x="251.714" y="-198.374" size="1.27" layer="95" rot="MR180"/>
</segment>
<segment>
<wire x1="251.46" y1="-243.84" x2="248.92" y2="-241.3" width="0.762" layer="92"/>
<wire x1="248.92" y1="-241.3" x2="248.92" y2="-220.98" width="0.762" layer="92"/>
<label x="251.714" y="-244.094" size="1.27" layer="95" rot="MR180"/>
</segment>
</bus>
<bus name="MDR[0..15]">
<segment>
<wire x1="134.62" y1="-99.06" x2="132.08" y2="-96.52" width="0.762" layer="92"/>
<wire x1="132.08" y1="-96.52" x2="132.08" y2="-20.32" width="0.762" layer="92"/>
<label x="135.382" y="-101.346" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="MAR[0..15]">
<segment>
<wire x1="104.14" y1="-264.16" x2="101.6" y2="-261.62" width="0.762" layer="92"/>
<wire x1="101.6" y1="-261.62" x2="101.6" y2="-182.88" width="0.762" layer="92"/>
<label x="105.156" y="-266.446" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="A[0..15]">
<segment>
<wire x1="22.86" y1="66.04" x2="20.32" y2="68.58" width="0.762" layer="92"/>
<wire x1="20.32" y1="68.58" x2="20.32" y2="124.46" width="0.762" layer="92"/>
<label x="23.622" y="65.532" size="1.778" layer="95" rot="MR180"/>
</segment>
</bus>
<bus name="B[0..15]">
<segment>
<wire x1="22.86" y1="-5.08" x2="20.32" y2="-2.54" width="0.762" layer="92"/>
<wire x1="20.32" y1="-2.54" x2="20.32" y2="53.34" width="0.762" layer="92"/>
<label x="23.622" y="-5.588" size="1.778" layer="95" rot="MR180"/>
</segment>
</bus>
<bus name="C[0..15]">
<segment>
<wire x1="22.86" y1="-76.2" x2="20.32" y2="-73.66" width="0.762" layer="92"/>
<wire x1="20.32" y1="-73.66" x2="20.32" y2="-17.78" width="0.762" layer="92"/>
<label x="23.622" y="-76.708" size="1.778" layer="95" rot="MR180"/>
</segment>
</bus>
<bus name="D[0..15]">
<segment>
<wire x1="22.86" y1="-147.32" x2="20.32" y2="-144.78" width="0.762" layer="92"/>
<wire x1="20.32" y1="-144.78" x2="20.32" y2="-88.9" width="0.762" layer="92"/>
<label x="23.622" y="-147.828" size="1.778" layer="95" rot="MR180"/>
</segment>
</bus>
<bus name="LOAD_REG[0..2]">
<segment>
<wire x1="-129.54" y1="-2.54" x2="-127" y2="0" width="0.762" layer="92"/>
<wire x1="-127" y1="0" x2="-127" y2="7.62" width="0.762" layer="92"/>
<label x="-130.048" y="-3.048" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="320.04" y1="53.34" x2="320.04" y2="58.42" width="0.762" layer="92"/>
<label x="320.802" y="55.372" size="1.27" layer="95"/>
</segment>
</bus>
<bus name="ADDR[0..23]">
<segment>
<wire x1="198.12" y1="-121.92" x2="198.12" y2="-172.72" width="0.762" layer="92"/>
<label x="195.326" y="-175.768" size="1.27" layer="95" rot="R180"/>
<wire x1="198.12" y1="-172.72" x2="195.58" y2="-175.26" width="0.762" layer="92"/>
</segment>
<segment>
<wire x1="198.12" y1="-220.98" x2="198.12" y2="-269.24" width="0.762" layer="92"/>
<label x="195.326" y="-272.288" size="1.27" layer="95" rot="R180"/>
<wire x1="198.12" y1="-269.24" x2="195.58" y2="-271.78" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="ADDR[20..23]">
<segment>
<wire x1="190.5" y1="-322.58" x2="193.04" y2="-320.04" width="0.762" layer="92"/>
<wire x1="193.04" y1="-320.04" x2="193.04" y2="-287.02" width="0.762" layer="92"/>
<label x="190.246" y="-323.088" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="Z[0..15]">
<segment>
<wire x1="-12.7" y1="66.04" x2="-10.16" y2="68.58" width="0.762" layer="92"/>
<wire x1="-10.16" y1="68.58" x2="-10.16" y2="124.46" width="0.762" layer="92"/>
<label x="-13.462" y="65.532" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="-12.7" y1="-5.08" x2="-10.16" y2="-2.54" width="0.762" layer="92"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="53.34" width="0.762" layer="92"/>
<label x="-11.684" y="-5.842" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="-12.7" y1="-76.2" x2="-10.16" y2="-73.66" width="0.762" layer="92"/>
<wire x1="-10.16" y1="-73.66" x2="-10.16" y2="-17.78" width="0.762" layer="92"/>
<label x="-13.462" y="-76.708" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="-12.7" y1="-147.32" x2="-10.16" y2="-144.78" width="0.762" layer="92"/>
<wire x1="-10.16" y1="-144.78" x2="-10.16" y2="-88.9" width="0.762" layer="92"/>
<label x="-13.462" y="-147.828" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="-5.08" y1="-276.86" x2="-2.54" y2="-274.32" width="0.762" layer="92"/>
<wire x1="-2.54" y1="-274.32" x2="-2.54" y2="-195.58" width="0.762" layer="92"/>
<label x="-5.842" y="-277.368" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="43.18" y1="-248.92" x2="43.18" y2="-172.72" width="0.762" layer="92"/>
<label x="39.878" y="-157.988" size="1.778" layer="95" rot="R180"/>
<wire x1="43.18" y1="-172.72" x2="43.18" y2="-162.56" width="0.762" layer="92"/>
<wire x1="43.18" y1="-162.56" x2="40.64" y2="-160.02" width="0.762" layer="92"/>
</segment>
<segment>
<wire x1="68.58" y1="-93.98" x2="71.12" y2="-91.44" width="0.762" layer="92"/>
<wire x1="71.12" y1="-91.44" x2="71.12" y2="-12.7" width="0.762" layer="92"/>
<label x="68.326" y="-94.742" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="CS_JUMP_ADDR_MC[0..7]">
<segment>
<wire x1="71.12" y1="17.78" x2="73.66" y2="20.32" width="0.762" layer="92"/>
<wire x1="73.66" y1="20.32" x2="73.66" y2="40.64" width="0.762" layer="92"/>
<label x="50.546" y="16.002" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="320.04" y1="12.7" x2="320.04" y2="-5.08" width="0.762" layer="92"/>
<label x="320.802" y="3.302" size="1.27" layer="95"/>
</segment>
</bus>
<bus name="XY_SRC[0..2]">
<segment>
<wire x1="320.04" y1="-30.48" x2="320.04" y2="-25.4" width="0.762" layer="92"/>
<label x="320.802" y="-28.448" size="1.27" layer="95"/>
</segment>
</bus>
<bus name="ALU_OP[0..3]">
<segment>
<wire x1="320.04" y1="-15.24" x2="320.04" y2="-22.86" width="0.762" layer="92"/>
<label x="320.802" y="-19.558" size="1.27" layer="95"/>
</segment>
</bus>
</busses>
<nets>
<net name="CS_ADDR0" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y0"/>
<wire x1="134.62" y1="53.34" x2="132.08" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A0"/>
<wire x1="279.4" y1="88.9" x2="276.86" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A0"/>
<wire x1="228.6" y1="88.9" x2="226.06" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_ADDR1" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y1"/>
<wire x1="134.62" y1="50.8" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A1"/>
<wire x1="276.86" y1="88.9" x2="274.32" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A1"/>
<wire x1="226.06" y1="88.9" x2="223.52" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_ADDR2" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y2"/>
<wire x1="134.62" y1="48.26" x2="132.08" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A2"/>
<wire x1="274.32" y1="88.9" x2="271.78" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A2"/>
<wire x1="223.52" y1="88.9" x2="220.98" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_ADDR3" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y3"/>
<wire x1="134.62" y1="45.72" x2="132.08" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A3"/>
<wire x1="271.78" y1="88.9" x2="269.24" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A3"/>
<wire x1="220.98" y1="88.9" x2="218.44" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_ADDR4" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y4"/>
<wire x1="134.62" y1="43.18" x2="132.08" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A4"/>
<wire x1="269.24" y1="88.9" x2="266.7" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A4"/>
<wire x1="218.44" y1="88.9" x2="215.9" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_ADDR5" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y5"/>
<wire x1="134.62" y1="40.64" x2="132.08" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A5"/>
<wire x1="266.7" y1="88.9" x2="264.16" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A5"/>
<wire x1="215.9" y1="88.9" x2="213.36" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_ADDR6" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y6"/>
<wire x1="134.62" y1="38.1" x2="132.08" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A6"/>
<wire x1="264.16" y1="88.9" x2="261.62" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A6"/>
<wire x1="213.36" y1="88.9" x2="210.82" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_ADDR7" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="Y7"/>
<wire x1="134.62" y1="35.56" x2="132.08" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM1" gate="G$1" pin="A7"/>
<wire x1="261.62" y1="88.9" x2="259.08" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ROM1" gate="G$1" pin="A7"/>
<wire x1="210.82" y1="88.9" x2="208.28" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NOT1" gate="G$1" pin="Q"/>
<wire x1="137.16" y1="147.32" x2="137.16" y2="144.78" width="0.1524" layer="91"/>
<label x="137.16" y="147.32" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A0"/>
<pinref part="MUX1" gate="G$1" pin="Y0"/>
<wire x1="101.6" y1="55.88" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A1"/>
<pinref part="MUX1" gate="G$1" pin="Y1"/>
<wire x1="101.6" y1="53.34" x2="106.68" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A2"/>
<pinref part="MUX1" gate="G$1" pin="Y2"/>
<wire x1="101.6" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A3"/>
<pinref part="MUX1" gate="G$1" pin="Y3"/>
<wire x1="101.6" y1="48.26" x2="106.68" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A4"/>
<pinref part="MUX1" gate="G$1" pin="Y4"/>
<wire x1="101.6" y1="45.72" x2="106.68" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A5"/>
<pinref part="MUX1" gate="G$1" pin="Y5"/>
<wire x1="101.6" y1="43.18" x2="106.68" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A6"/>
<pinref part="MUX1" gate="G$1" pin="Y6"/>
<wire x1="101.6" y1="40.64" x2="106.68" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="A7"/>
<pinref part="MUX1" gate="G$1" pin="Y7"/>
<wire x1="101.6" y1="38.1" x2="106.68" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLK_MAIN" class="0">
<segment>
<pinref part="MUX3" gate="G$1" pin="A0"/>
<wire x1="119.38" y1="101.6" x2="119.38" y2="104.14" width="0.1524" layer="91"/>
<wire x1="119.38" y1="104.14" x2="121.92" y2="104.14" width="0.1524" layer="91"/>
<wire x1="121.92" y1="104.14" x2="121.92" y2="106.68" width="0.1524" layer="91"/>
<label x="121.92" y="106.68" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="CTR4" gate="G$1" pin="CLK"/>
<wire x1="63.5" y1="129.54" x2="60.96" y2="129.54" width="0.1524" layer="91"/>
<label x="60.96" y="129.54" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="RESET_MAIN" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="RESET"/>
<wire x1="106.68" y1="60.96" x2="99.06" y2="60.96" width="0.1524" layer="91"/>
<wire x1="99.06" y1="60.96" x2="99.06" y2="68.58" width="0.1524" layer="91"/>
<label x="99.06" y="68.58" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="CTR2" gate="G$1" pin="RESET"/>
<wire x1="0" y1="-187.96" x2="-10.16" y2="-187.96" width="0.1524" layer="91"/>
<label x="-12.7" y="-187.96" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="CTR3" gate="G$1" pin="RESET"/>
<wire x1="-10.16" y1="-187.96" x2="-12.7" y2="-187.96" width="0.1524" layer="91"/>
<wire x1="0" y1="-246.38" x2="-10.16" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-246.38" x2="-10.16" y2="-187.96" width="0.1524" layer="91"/>
<junction x="-10.16" y="-187.96"/>
</segment>
</net>
<net name="DATA0" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B0"/>
<wire x1="76.2" y1="-30.48" x2="73.66" y2="-33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="66.04" x2="45.72" y2="63.5" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A0"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q0"/>
<wire x1="200.66" y1="-172.72" x2="198.12" y2="-175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B0"/>
<wire x1="76.2" y1="-86.36" x2="73.66" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA1" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B1"/>
<wire x1="76.2" y1="-33.02" x2="73.66" y2="-35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="63.5" x2="45.72" y2="60.96" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A1"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q1"/>
<wire x1="200.66" y1="-175.26" x2="198.12" y2="-177.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B1"/>
<wire x1="76.2" y1="-88.9" x2="73.66" y2="-91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA2" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B2"/>
<wire x1="76.2" y1="-35.56" x2="73.66" y2="-38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="60.96" x2="45.72" y2="58.42" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A2"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q2"/>
<wire x1="200.66" y1="-177.8" x2="198.12" y2="-180.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B2"/>
<wire x1="76.2" y1="-91.44" x2="73.66" y2="-93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA3" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B3"/>
<wire x1="76.2" y1="-38.1" x2="73.66" y2="-40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="58.42" x2="45.72" y2="55.88" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A3"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q3"/>
<wire x1="200.66" y1="-180.34" x2="198.12" y2="-182.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B3"/>
<wire x1="76.2" y1="-93.98" x2="73.66" y2="-96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA4" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B4"/>
<wire x1="76.2" y1="-40.64" x2="73.66" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="55.88" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A4"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q4"/>
<wire x1="200.66" y1="-182.88" x2="198.12" y2="-185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B4"/>
<wire x1="76.2" y1="-96.52" x2="73.66" y2="-99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA5" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B5"/>
<wire x1="76.2" y1="-43.18" x2="73.66" y2="-45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="53.34" x2="45.72" y2="50.8" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A5"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q5"/>
<wire x1="200.66" y1="-185.42" x2="198.12" y2="-187.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B5"/>
<wire x1="76.2" y1="-99.06" x2="73.66" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA6" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B6"/>
<wire x1="76.2" y1="-45.72" x2="73.66" y2="-48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="50.8" x2="45.72" y2="48.26" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A6"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q6"/>
<wire x1="200.66" y1="-187.96" x2="198.12" y2="-190.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B6"/>
<wire x1="76.2" y1="-101.6" x2="73.66" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA7" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="B7"/>
<wire x1="76.2" y1="-48.26" x2="73.66" y2="-50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="48.26" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
<pinref part="LAT3" gate="G$1" pin="A7"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="Q7"/>
<wire x1="200.66" y1="-190.5" x2="198.12" y2="-193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="B7"/>
<wire x1="76.2" y1="-104.14" x2="73.66" y2="-106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z0" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A0"/>
<wire x1="71.12" y1="-12.7" x2="76.2" y2="-7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-10.16" y1="124.46" x2="-7.62" y2="127" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A0"/>
</segment>
<segment>
<wire x1="-2.54" y1="-195.58" x2="0" y2="-193.04" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A0"/>
</segment>
<segment>
<wire x1="-10.16" y1="53.34" x2="-7.62" y2="55.88" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A0"/>
</segment>
<segment>
<wire x1="-10.16" y1="-17.78" x2="-7.62" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A0"/>
</segment>
<segment>
<wire x1="-10.16" y1="-88.9" x2="-7.62" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A0"/>
</segment>
</net>
<net name="Z1" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A1"/>
<wire x1="71.12" y1="-15.24" x2="76.2" y2="-10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="124.46" x2="-10.16" y2="121.92" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A1"/>
</segment>
<segment>
<wire x1="0" y1="-195.58" x2="-2.54" y2="-198.12" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A1"/>
</segment>
<segment>
<wire x1="-7.62" y1="53.34" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A1"/>
</segment>
<segment>
<wire x1="-7.62" y1="-17.78" x2="-10.16" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A1"/>
</segment>
<segment>
<wire x1="-7.62" y1="-88.9" x2="-10.16" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A1"/>
</segment>
</net>
<net name="Z2" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A2"/>
<wire x1="71.12" y1="-17.78" x2="76.2" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-10.16" y1="119.38" x2="-7.62" y2="121.92" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A2"/>
</segment>
<segment>
<wire x1="-2.54" y1="-200.66" x2="0" y2="-198.12" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A2"/>
</segment>
<segment>
<wire x1="-10.16" y1="48.26" x2="-7.62" y2="50.8" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A2"/>
</segment>
<segment>
<wire x1="-10.16" y1="-22.86" x2="-7.62" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A2"/>
</segment>
<segment>
<wire x1="-10.16" y1="-93.98" x2="-7.62" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A2"/>
</segment>
</net>
<net name="Z3" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A3"/>
<wire x1="71.12" y1="-20.32" x2="76.2" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="119.38" x2="-10.16" y2="116.84" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A3"/>
</segment>
<segment>
<wire x1="0" y1="-200.66" x2="-2.54" y2="-203.2" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A3"/>
</segment>
<segment>
<wire x1="-7.62" y1="48.26" x2="-10.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A3"/>
</segment>
<segment>
<wire x1="-7.62" y1="-22.86" x2="-10.16" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A3"/>
</segment>
<segment>
<wire x1="-7.62" y1="-93.98" x2="-10.16" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A3"/>
</segment>
</net>
<net name="Z4" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A4"/>
<wire x1="71.12" y1="-22.86" x2="76.2" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="116.84" x2="-10.16" y2="114.3" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A4"/>
</segment>
<segment>
<wire x1="0" y1="-203.2" x2="-2.54" y2="-205.74" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A4"/>
</segment>
<segment>
<wire x1="-7.62" y1="45.72" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A4"/>
</segment>
<segment>
<wire x1="-7.62" y1="-25.4" x2="-10.16" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A4"/>
</segment>
<segment>
<wire x1="-7.62" y1="-96.52" x2="-10.16" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A4"/>
</segment>
</net>
<net name="Z5" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A5"/>
<wire x1="71.12" y1="-25.4" x2="76.2" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="114.3" x2="-10.16" y2="111.76" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A5"/>
</segment>
<segment>
<wire x1="0" y1="-205.74" x2="-2.54" y2="-208.28" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A5"/>
</segment>
<segment>
<wire x1="-7.62" y1="43.18" x2="-10.16" y2="40.64" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A5"/>
</segment>
<segment>
<wire x1="-7.62" y1="-27.94" x2="-10.16" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A5"/>
</segment>
<segment>
<wire x1="-7.62" y1="-99.06" x2="-10.16" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A5"/>
</segment>
</net>
<net name="Z6" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A6"/>
<wire x1="71.12" y1="-27.94" x2="76.2" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="111.76" x2="-10.16" y2="109.22" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A6"/>
</segment>
<segment>
<wire x1="0" y1="-208.28" x2="-2.54" y2="-210.82" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A6"/>
</segment>
<segment>
<wire x1="-7.62" y1="40.64" x2="-10.16" y2="38.1" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A6"/>
</segment>
<segment>
<wire x1="-7.62" y1="-30.48" x2="-10.16" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A6"/>
</segment>
<segment>
<wire x1="-7.62" y1="-101.6" x2="-10.16" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A6"/>
</segment>
</net>
<net name="Z7" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="A7"/>
<wire x1="71.12" y1="-30.48" x2="76.2" y2="-25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="109.22" x2="-10.16" y2="106.68" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="A7"/>
</segment>
<segment>
<wire x1="0" y1="-210.82" x2="-2.54" y2="-213.36" width="0.1524" layer="91"/>
<pinref part="CTR2" gate="G$1" pin="A7"/>
</segment>
<segment>
<wire x1="-7.62" y1="38.1" x2="-10.16" y2="35.56" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="A7"/>
</segment>
<segment>
<wire x1="-7.62" y1="-104.14" x2="-10.16" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="A7"/>
</segment>
<segment>
<wire x1="-7.62" y1="-33.02" x2="-10.16" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="A7"/>
</segment>
</net>
<net name="MDR0" class="0">
<segment>
<wire x1="132.08" y1="-20.32" x2="129.54" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="MDR1" class="0">
<segment>
<wire x1="132.08" y1="-22.86" x2="129.54" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="MDR2" class="0">
<segment>
<wire x1="132.08" y1="-25.4" x2="129.54" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="MDR3" class="0">
<segment>
<wire x1="132.08" y1="-27.94" x2="129.54" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="MDR4" class="0">
<segment>
<wire x1="132.08" y1="-30.48" x2="129.54" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="MDR5" class="0">
<segment>
<wire x1="132.08" y1="-33.02" x2="129.54" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="MDR6" class="0">
<segment>
<wire x1="132.08" y1="-35.56" x2="129.54" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="MDR7" class="0">
<segment>
<wire x1="132.08" y1="-38.1" x2="129.54" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="LAT2" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y0"/>
<pinref part="LAT2" gate="G$1" pin="A0"/>
<wire x1="104.14" y1="-17.78" x2="101.6" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y1"/>
<pinref part="LAT2" gate="G$1" pin="A1"/>
<wire x1="104.14" y1="-20.32" x2="101.6" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y2"/>
<pinref part="LAT2" gate="G$1" pin="A2"/>
<wire x1="104.14" y1="-22.86" x2="101.6" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y3"/>
<pinref part="LAT2" gate="G$1" pin="A3"/>
<wire x1="104.14" y1="-25.4" x2="101.6" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y4"/>
<pinref part="LAT2" gate="G$1" pin="A4"/>
<wire x1="104.14" y1="-27.94" x2="101.6" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y5"/>
<pinref part="LAT2" gate="G$1" pin="A5"/>
<wire x1="104.14" y1="-30.48" x2="101.6" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y6"/>
<pinref part="LAT2" gate="G$1" pin="A6"/>
<wire x1="104.14" y1="-33.02" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="Y7"/>
<pinref part="LAT2" gate="G$1" pin="A7"/>
<wire x1="104.14" y1="-35.56" x2="101.6" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IR0" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A0"/>
<pinref part="LAT3" gate="G$1" pin="Y0"/>
<wire x1="73.66" y1="66.04" x2="76.2" y2="66.04" width="0.1524" layer="91"/>
<label x="73.406" y="66.548" size="1.27" layer="95"/>
</segment>
</net>
<net name="IR1" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A1"/>
<pinref part="LAT3" gate="G$1" pin="Y1"/>
<wire x1="73.66" y1="63.5" x2="76.2" y2="63.5" width="0.1524" layer="91"/>
<label x="73.406" y="63.754" size="1.27" layer="95"/>
</segment>
</net>
<net name="IR2" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A2"/>
<pinref part="LAT3" gate="G$1" pin="Y2"/>
<wire x1="73.66" y1="60.96" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
<label x="73.406" y="61.214" size="1.27" layer="95"/>
</segment>
</net>
<net name="IR3" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A3"/>
<pinref part="LAT3" gate="G$1" pin="Y3"/>
<wire x1="73.66" y1="58.42" x2="76.2" y2="58.42" width="0.1524" layer="91"/>
<label x="73.406" y="58.674" size="1.27" layer="95"/>
</segment>
</net>
<net name="IR4" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A4"/>
<pinref part="LAT3" gate="G$1" pin="Y4"/>
<wire x1="73.66" y1="55.88" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<label x="73.406" y="56.134" size="1.27" layer="95"/>
</segment>
</net>
<net name="IR5" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A5"/>
<pinref part="LAT3" gate="G$1" pin="Y5"/>
<wire x1="73.66" y1="53.34" x2="76.2" y2="53.34" width="0.1524" layer="91"/>
<label x="73.406" y="53.594" size="1.27" layer="95"/>
</segment>
</net>
<net name="IR6" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A6"/>
<pinref part="LAT3" gate="G$1" pin="Y6"/>
<wire x1="73.66" y1="50.8" x2="76.2" y2="50.8" width="0.1524" layer="91"/>
<label x="73.406" y="51.054" size="1.27" layer="95"/>
</segment>
</net>
<net name="IR7" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="A7"/>
<pinref part="LAT3" gate="G$1" pin="Y7"/>
<wire x1="73.66" y1="48.26" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<label x="73.406" y="48.514" size="1.27" layer="95"/>
</segment>
<segment>
<wire x1="-157.48" y1="-15.24" x2="-152.4" y2="-15.24" width="0.1524" layer="91"/>
<label x="-157.48" y="-15.24" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="AND2" gate="G$1" pin="B"/>
</segment>
</net>
<net name="MAR0" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y0"/>
<wire x1="101.6" y1="-182.88" x2="99.06" y2="-180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR1" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y1"/>
<wire x1="99.06" y1="-182.88" x2="101.6" y2="-185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR2" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y2"/>
<wire x1="99.06" y1="-185.42" x2="101.6" y2="-187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR3" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y3"/>
<wire x1="99.06" y1="-187.96" x2="101.6" y2="-190.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR4" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y4"/>
<wire x1="99.06" y1="-190.5" x2="101.6" y2="-193.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR5" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y5"/>
<wire x1="99.06" y1="-193.04" x2="101.6" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR6" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y6"/>
<wire x1="99.06" y1="-195.58" x2="101.6" y2="-198.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR7" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="Y7"/>
<wire x1="99.06" y1="-198.12" x2="101.6" y2="-200.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<wire x1="20.32" y1="124.46" x2="17.78" y2="127" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<wire x1="17.78" y1="124.46" x2="20.32" y2="121.92" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<wire x1="20.32" y1="119.38" x2="17.78" y2="121.92" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<wire x1="17.78" y1="119.38" x2="20.32" y2="116.84" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<wire x1="17.78" y1="116.84" x2="20.32" y2="114.3" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="A5" class="0">
<segment>
<wire x1="17.78" y1="114.3" x2="20.32" y2="111.76" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="A6" class="0">
<segment>
<wire x1="17.78" y1="111.76" x2="20.32" y2="109.22" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="A7" class="0">
<segment>
<wire x1="17.78" y1="109.22" x2="20.32" y2="106.68" width="0.1524" layer="91"/>
<pinref part="LAT5" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="B0" class="0">
<segment>
<wire x1="20.32" y1="53.34" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<wire x1="17.78" y1="53.34" x2="20.32" y2="50.8" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<wire x1="20.32" y1="48.26" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="B3" class="0">
<segment>
<wire x1="17.78" y1="48.26" x2="20.32" y2="45.72" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="B4" class="0">
<segment>
<wire x1="17.78" y1="45.72" x2="20.32" y2="43.18" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="B5" class="0">
<segment>
<wire x1="17.78" y1="43.18" x2="20.32" y2="40.64" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="B6" class="0">
<segment>
<wire x1="17.78" y1="40.64" x2="20.32" y2="38.1" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="B7" class="0">
<segment>
<wire x1="17.78" y1="38.1" x2="20.32" y2="35.56" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="C0" class="0">
<segment>
<wire x1="20.32" y1="-17.78" x2="17.78" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="C1" class="0">
<segment>
<wire x1="17.78" y1="-17.78" x2="20.32" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="C2" class="0">
<segment>
<wire x1="20.32" y1="-22.86" x2="17.78" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="C3" class="0">
<segment>
<wire x1="17.78" y1="-22.86" x2="20.32" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="C4" class="0">
<segment>
<wire x1="17.78" y1="-25.4" x2="20.32" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="C5" class="0">
<segment>
<wire x1="17.78" y1="-27.94" x2="20.32" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="C6" class="0">
<segment>
<wire x1="17.78" y1="-30.48" x2="20.32" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="C7" class="0">
<segment>
<wire x1="17.78" y1="-33.02" x2="20.32" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="LAT7" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="D0" class="0">
<segment>
<wire x1="20.32" y1="-88.9" x2="17.78" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="D1" class="0">
<segment>
<wire x1="17.78" y1="-88.9" x2="20.32" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="D2" class="0">
<segment>
<wire x1="20.32" y1="-93.98" x2="17.78" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="D3" class="0">
<segment>
<wire x1="17.78" y1="-93.98" x2="20.32" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="D4" class="0">
<segment>
<wire x1="17.78" y1="-96.52" x2="20.32" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="D5" class="0">
<segment>
<wire x1="17.78" y1="-99.06" x2="20.32" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<wire x1="17.78" y1="-101.6" x2="20.32" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<wire x1="17.78" y1="-104.14" x2="20.32" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="LAT8" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="-38.1" y1="2.54" x2="-38.1" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="25.4" x2="-38.1" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="27.94" x2="-38.1" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="60.96" x2="-10.16" y2="60.96" width="0.1524" layer="91"/>
<pinref part="LAT6" gate="G$1" pin="CLK"/>
<wire x1="-10.16" y1="60.96" x2="-7.62" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="2.54" x2="-38.1" y2="0" width="0.1524" layer="91"/>
<pinref part="OR2" gate="G$1" pin="Y"/>
<wire x1="-38.1" y1="0" x2="-40.64" y2="0" width="0.1524" layer="91"/>
<pinref part="AND6" gate="G$1" pin="A"/>
<wire x1="-38.1" y1="27.94" x2="-35.56" y2="27.94" width="0.1524" layer="91"/>
<junction x="-38.1" y="27.94"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="LAT7" gate="G$1" pin="CLK"/>
<wire x1="-7.62" y1="-10.16" x2="-38.1" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-10.16" x2="-38.1" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="OR3" gate="G$1" pin="Y"/>
<wire x1="-38.1" y1="-12.7" x2="-38.1" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-12.7" x2="-38.1" y2="-12.7" width="0.1524" layer="91"/>
<junction x="-38.1" y="-12.7"/>
<pinref part="AND7" gate="G$1" pin="A"/>
<wire x1="-38.1" y1="-43.18" x2="-35.56" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="LAT8" gate="G$1" pin="CLK"/>
<wire x1="-40.64" y1="-81.28" x2="-7.62" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-81.28" x2="-40.64" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="OR4" gate="G$1" pin="Y"/>
<wire x1="-40.64" y1="-81.28" x2="-40.64" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-40.64" y="-81.28"/>
<wire x1="-40.64" y1="-114.3" x2="-38.1" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="AND8" gate="G$1" pin="A"/>
<wire x1="-38.1" y1="-114.3" x2="-35.56" y2="-114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y0"/>
<pinref part="RAM1" gate="G$1" pin="Q0"/>
<wire x1="251.46" y1="76.2" x2="246.38" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y1"/>
<pinref part="RAM1" gate="G$1" pin="Q1"/>
<wire x1="251.46" y1="73.66" x2="246.38" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y2"/>
<pinref part="RAM1" gate="G$1" pin="Q2"/>
<wire x1="251.46" y1="71.12" x2="246.38" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y3"/>
<pinref part="RAM1" gate="G$1" pin="Q3"/>
<wire x1="251.46" y1="68.58" x2="246.38" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y4"/>
<pinref part="RAM1" gate="G$1" pin="Q4"/>
<wire x1="251.46" y1="66.04" x2="246.38" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y5"/>
<pinref part="RAM1" gate="G$1" pin="Q5"/>
<wire x1="251.46" y1="63.5" x2="246.38" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y6"/>
<pinref part="RAM1" gate="G$1" pin="Q6"/>
<wire x1="251.46" y1="60.96" x2="246.38" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y7"/>
<pinref part="RAM1" gate="G$1" pin="Q7"/>
<wire x1="251.46" y1="58.42" x2="246.38" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y8"/>
<pinref part="RAM1" gate="G$1" pin="Q8"/>
<wire x1="251.46" y1="55.88" x2="246.38" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y9"/>
<pinref part="RAM1" gate="G$1" pin="Q9"/>
<wire x1="251.46" y1="53.34" x2="246.38" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y10"/>
<pinref part="RAM1" gate="G$1" pin="Q10"/>
<wire x1="251.46" y1="50.8" x2="246.38" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y11"/>
<pinref part="RAM1" gate="G$1" pin="Q11"/>
<wire x1="251.46" y1="48.26" x2="246.38" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y12"/>
<pinref part="RAM1" gate="G$1" pin="Q12"/>
<wire x1="251.46" y1="45.72" x2="246.38" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y13"/>
<pinref part="RAM1" gate="G$1" pin="Q13"/>
<wire x1="251.46" y1="43.18" x2="246.38" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y14"/>
<pinref part="RAM1" gate="G$1" pin="Q14"/>
<wire x1="251.46" y1="40.64" x2="246.38" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y15"/>
<pinref part="RAM1" gate="G$1" pin="Q15"/>
<wire x1="251.46" y1="38.1" x2="246.38" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y16"/>
<pinref part="RAM1" gate="G$1" pin="Q16"/>
<wire x1="251.46" y1="35.56" x2="246.38" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y17"/>
<pinref part="RAM1" gate="G$1" pin="Q17"/>
<wire x1="251.46" y1="33.02" x2="246.38" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y18"/>
<pinref part="RAM1" gate="G$1" pin="Q18"/>
<wire x1="251.46" y1="30.48" x2="246.38" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y19"/>
<pinref part="RAM1" gate="G$1" pin="Q19"/>
<wire x1="251.46" y1="27.94" x2="246.38" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y20"/>
<pinref part="RAM1" gate="G$1" pin="Q20"/>
<wire x1="251.46" y1="25.4" x2="246.38" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y21"/>
<pinref part="RAM1" gate="G$1" pin="Q21"/>
<wire x1="251.46" y1="22.86" x2="246.38" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y22"/>
<pinref part="RAM1" gate="G$1" pin="Q22"/>
<wire x1="251.46" y1="20.32" x2="246.38" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y23"/>
<pinref part="RAM1" gate="G$1" pin="Q23"/>
<wire x1="251.46" y1="17.78" x2="246.38" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y24"/>
<pinref part="RAM1" gate="G$1" pin="Q24"/>
<wire x1="251.46" y1="15.24" x2="246.38" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y25"/>
<pinref part="RAM1" gate="G$1" pin="Q25"/>
<wire x1="251.46" y1="12.7" x2="246.38" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y26"/>
<pinref part="RAM1" gate="G$1" pin="Q26"/>
<wire x1="251.46" y1="10.16" x2="246.38" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y27"/>
<pinref part="RAM1" gate="G$1" pin="Q27"/>
<wire x1="251.46" y1="7.62" x2="246.38" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y28"/>
<pinref part="RAM1" gate="G$1" pin="Q28"/>
<wire x1="251.46" y1="5.08" x2="246.38" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y29"/>
<pinref part="RAM1" gate="G$1" pin="Q29"/>
<wire x1="251.46" y1="2.54" x2="246.38" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y30"/>
<pinref part="RAM1" gate="G$1" pin="Q30"/>
<wire x1="251.46" y1="0" x2="246.38" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y31"/>
<pinref part="RAM1" gate="G$1" pin="Q31"/>
<wire x1="251.46" y1="-2.54" x2="246.38" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y32"/>
<pinref part="RAM1" gate="G$1" pin="Q32"/>
<wire x1="251.46" y1="-5.08" x2="246.38" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y33"/>
<pinref part="RAM1" gate="G$1" pin="Q33"/>
<wire x1="251.46" y1="-7.62" x2="246.38" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y34"/>
<pinref part="RAM1" gate="G$1" pin="Q34"/>
<wire x1="251.46" y1="-10.16" x2="246.38" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y35"/>
<pinref part="RAM1" gate="G$1" pin="Q35"/>
<wire x1="251.46" y1="-12.7" x2="246.38" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y36"/>
<pinref part="RAM1" gate="G$1" pin="Q36"/>
<wire x1="251.46" y1="-15.24" x2="246.38" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y37"/>
<pinref part="RAM1" gate="G$1" pin="Q37"/>
<wire x1="251.46" y1="-17.78" x2="246.38" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y38"/>
<pinref part="RAM1" gate="G$1" pin="Q38"/>
<wire x1="251.46" y1="-20.32" x2="246.38" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y39"/>
<pinref part="RAM1" gate="G$1" pin="Q39"/>
<wire x1="251.46" y1="-22.86" x2="246.38" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y40"/>
<pinref part="RAM1" gate="G$1" pin="Q40"/>
<wire x1="251.46" y1="-25.4" x2="246.38" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y41"/>
<pinref part="RAM1" gate="G$1" pin="Q41"/>
<wire x1="251.46" y1="-27.94" x2="246.38" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y42"/>
<pinref part="RAM1" gate="G$1" pin="Q42"/>
<wire x1="251.46" y1="-30.48" x2="246.38" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y43"/>
<pinref part="RAM1" gate="G$1" pin="Q43"/>
<wire x1="251.46" y1="-33.02" x2="246.38" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y44"/>
<pinref part="RAM1" gate="G$1" pin="Q44"/>
<wire x1="251.46" y1="-35.56" x2="246.38" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y45"/>
<pinref part="RAM1" gate="G$1" pin="Q45"/>
<wire x1="251.46" y1="-38.1" x2="246.38" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y46"/>
<pinref part="RAM1" gate="G$1" pin="Q46"/>
<wire x1="251.46" y1="-40.64" x2="246.38" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$76" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y47"/>
<pinref part="RAM1" gate="G$1" pin="Q47"/>
<wire x1="251.46" y1="-43.18" x2="246.38" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$77" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y48"/>
<pinref part="RAM1" gate="G$1" pin="Q48"/>
<wire x1="251.46" y1="-45.72" x2="246.38" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y49"/>
<pinref part="RAM1" gate="G$1" pin="Q49"/>
<wire x1="251.46" y1="-48.26" x2="246.38" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$79" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y50"/>
<pinref part="RAM1" gate="G$1" pin="Q50"/>
<wire x1="251.46" y1="-50.8" x2="246.38" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y51"/>
<pinref part="RAM1" gate="G$1" pin="Q51"/>
<wire x1="251.46" y1="-53.34" x2="246.38" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$81" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y52"/>
<pinref part="RAM1" gate="G$1" pin="Q52"/>
<wire x1="251.46" y1="-55.88" x2="246.38" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y53"/>
<pinref part="RAM1" gate="G$1" pin="Q53"/>
<wire x1="251.46" y1="-58.42" x2="246.38" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$83" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y54"/>
<pinref part="RAM1" gate="G$1" pin="Q54"/>
<wire x1="251.46" y1="-60.96" x2="246.38" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y55"/>
<pinref part="RAM1" gate="G$1" pin="Q55"/>
<wire x1="251.46" y1="-63.5" x2="246.38" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$85" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y56"/>
<pinref part="RAM1" gate="G$1" pin="Q56"/>
<wire x1="251.46" y1="-66.04" x2="246.38" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$86" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y57"/>
<pinref part="RAM1" gate="G$1" pin="Q57"/>
<wire x1="251.46" y1="-68.58" x2="246.38" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y58"/>
<pinref part="RAM1" gate="G$1" pin="Q58"/>
<wire x1="251.46" y1="-71.12" x2="246.38" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y59"/>
<pinref part="RAM1" gate="G$1" pin="Q59"/>
<wire x1="251.46" y1="-73.66" x2="246.38" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y60"/>
<pinref part="RAM1" gate="G$1" pin="Q60"/>
<wire x1="251.46" y1="-76.2" x2="246.38" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y61"/>
<pinref part="RAM1" gate="G$1" pin="Q61"/>
<wire x1="251.46" y1="-78.74" x2="246.38" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y62"/>
<pinref part="RAM1" gate="G$1" pin="Q62"/>
<wire x1="251.46" y1="-81.28" x2="246.38" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="ROM1" gate="G$1" pin="Y63"/>
<pinref part="RAM1" gate="G$1" pin="Q63"/>
<wire x1="251.46" y1="-83.82" x2="246.38" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLK_MC" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="CLK"/>
<wire x1="106.68" y1="66.04" x2="104.14" y2="66.04" width="0.1524" layer="91"/>
<wire x1="104.14" y1="66.04" x2="104.14" y2="68.58" width="0.1524" layer="91"/>
<pinref part="MUX3" gate="G$1" pin="Y0"/>
<label x="106.172" y="66.802" size="1.27" layer="95" rot="R90"/>
<wire x1="104.14" y1="68.58" x2="104.14" y2="76.2" width="0.1524" layer="91"/>
<wire x1="104.14" y1="76.2" x2="116.84" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLK_HALF_A" class="0">
<segment>
<label x="284.48" y="116.84" size="1.27" layer="95" rot="R90" xref="yes"/>
<wire x1="284.48" y1="114.3" x2="284.48" y2="116.84" width="0.1524" layer="91"/>
<pinref part="NOR1" gate="G$1" pin="B"/>
</segment>
</net>
<net name="CS_READY" class="0">
<segment>
<pinref part="MUX3" gate="G$1" pin="SEL_A"/>
<wire x1="124.46" y1="101.6" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<label x="124.46" y="106.68" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<label x="289.56" y="116.84" size="1.27" layer="95" rot="R90" xref="yes"/>
<wire x1="289.56" y1="114.3" x2="289.56" y2="116.84" width="0.1524" layer="91"/>
<pinref part="NOR1" gate="G$1" pin="A"/>
</segment>
<segment>
<pinref part="FLP2" gate="G$1" pin="Q"/>
<wire x1="139.7" y1="104.14" x2="139.7" y2="101.6" width="0.1524" layer="91"/>
<label x="139.7" y="101.6" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="AND9" gate="G$1" pin="A"/>
<wire x1="104.14" y1="104.14" x2="104.14" y2="101.6" width="0.1524" layer="91"/>
<label x="104.14" y="104.14" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="RAM1" gate="G$1" pin="W"/>
<wire x1="287.02" y1="91.44" x2="287.02" y2="88.9" width="0.1524" layer="91"/>
<pinref part="NOR1" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="FLP2" gate="G$1" pin="CLK"/>
<pinref part="NOT1" gate="G$1" pin="Y"/>
<wire x1="137.16" y1="124.46" x2="137.16" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V+" class="0">
<segment>
<pinref part="FLP2" gate="G$1" pin="J"/>
<wire x1="139.7" y1="124.46" x2="139.7" y2="127" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="1" pin="V+"/>
</segment>
<segment>
<pinref part="CTR2" gate="G$1" pin="CE"/>
<wire x1="25.4" y1="-182.88" x2="27.94" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-180.34" x2="27.94" y2="-182.88" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="1" pin="V+"/>
</segment>
</net>
<net name="V-" class="0">
<segment>
<pinref part="FLP2" gate="G$1" pin="K"/>
<pinref part="SUPPLY2" gate="1" pin="V-"/>
<wire x1="134.62" y1="127" x2="134.62" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR19" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A19"/>
<wire x1="198.12" y1="-170.18" x2="200.66" y2="-167.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR18" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A18"/>
<wire x1="198.12" y1="-167.64" x2="200.66" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR17" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A17"/>
<wire x1="198.12" y1="-165.1" x2="200.66" y2="-162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR16" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A16"/>
<wire x1="198.12" y1="-162.56" x2="200.66" y2="-160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR15" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A15"/>
<wire x1="198.12" y1="-160.02" x2="200.66" y2="-157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RAM2" gate="G$1" pin="A14"/>
<wire x1="198.12" y1="-157.48" x2="200.66" y2="-154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR13" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A13"/>
<wire x1="198.12" y1="-154.94" x2="200.66" y2="-152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR12" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A12"/>
<wire x1="198.12" y1="-152.4" x2="200.66" y2="-149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR11" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A11"/>
<wire x1="198.12" y1="-149.86" x2="200.66" y2="-147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR10" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A10"/>
<wire x1="198.12" y1="-147.32" x2="200.66" y2="-144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR9" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A9"/>
<wire x1="198.12" y1="-144.78" x2="200.66" y2="-142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR8" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A8"/>
<wire x1="198.12" y1="-142.24" x2="200.66" y2="-139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR7" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A7"/>
<wire x1="198.12" y1="-139.7" x2="200.66" y2="-137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR6" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A6"/>
<wire x1="198.12" y1="-137.16" x2="200.66" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR0" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A0"/>
<wire x1="198.12" y1="-121.92" x2="200.66" y2="-119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR1" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A1"/>
<wire x1="200.66" y1="-121.92" x2="198.12" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR2" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A2"/>
<wire x1="200.66" y1="-124.46" x2="198.12" y2="-127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR3" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A3"/>
<wire x1="200.66" y1="-127" x2="198.12" y2="-129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR4" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A4"/>
<wire x1="200.66" y1="-129.54" x2="198.12" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR5" class="0">
<segment>
<pinref part="RAM2" gate="G$1" pin="A5"/>
<wire x1="200.66" y1="-132.08" x2="198.12" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA8" class="0">
<segment>
<wire x1="246.38" y1="-172.72" x2="248.92" y2="-175.26" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="DATA9" class="0">
<segment>
<wire x1="246.38" y1="-175.26" x2="248.92" y2="-177.8" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="DATA10" class="0">
<segment>
<wire x1="246.38" y1="-177.8" x2="248.92" y2="-180.34" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="DATA11" class="0">
<segment>
<wire x1="246.38" y1="-180.34" x2="248.92" y2="-182.88" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="DATA12" class="0">
<segment>
<wire x1="246.38" y1="-182.88" x2="248.92" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="DATA13" class="0">
<segment>
<wire x1="246.38" y1="-185.42" x2="248.92" y2="-187.96" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="DATA14" class="0">
<segment>
<wire x1="246.38" y1="-187.96" x2="248.92" y2="-190.5" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="DATA15" class="0">
<segment>
<wire x1="246.38" y1="-190.5" x2="248.92" y2="-193.04" width="0.1524" layer="91"/>
<pinref part="RAM2" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="DATA16" class="0">
<segment>
<wire x1="246.38" y1="-218.44" x2="248.92" y2="-220.98" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="DATA17" class="0">
<segment>
<wire x1="246.38" y1="-220.98" x2="248.92" y2="-223.52" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="DATA18" class="0">
<segment>
<wire x1="246.38" y1="-223.52" x2="248.92" y2="-226.06" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="DATA19" class="0">
<segment>
<wire x1="246.38" y1="-226.06" x2="248.92" y2="-228.6" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="DATA20" class="0">
<segment>
<wire x1="246.38" y1="-228.6" x2="248.92" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="DATA21" class="0">
<segment>
<wire x1="246.38" y1="-231.14" x2="248.92" y2="-233.68" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="DATA22" class="0">
<segment>
<wire x1="246.38" y1="-233.68" x2="248.92" y2="-236.22" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="DATA23" class="0">
<segment>
<wire x1="246.38" y1="-236.22" x2="248.92" y2="-238.76" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="ADDR14" class="0">
<segment>
<wire x1="198.12" y1="-269.24" x2="200.66" y2="-266.7" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A19"/>
</segment>
</net>
<net name="ADDR20" class="0">
<segment>
<wire x1="198.12" y1="-266.7" x2="200.66" y2="-264.16" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A18"/>
</segment>
<segment>
<pinref part="AND1" gate="G$1" pin="A"/>
<wire x1="198.12" y1="-284.48" x2="195.58" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-284.48" x2="193.04" y2="-287.02" width="0.1524" layer="91"/>
<label x="195.072" y="-284.226" size="1.016" layer="95"/>
</segment>
<segment>
<wire x1="195.58" y1="-304.8" x2="193.04" y2="-307.34" width="0.1524" layer="91"/>
<label x="195.072" y="-304.546" size="1.016" layer="95"/>
<pinref part="NOR3" gate="G$1" pin="A"/>
<wire x1="198.12" y1="-304.8" x2="195.58" y2="-304.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR21" class="0">
<segment>
<wire x1="198.12" y1="-264.16" x2="200.66" y2="-261.62" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A17"/>
</segment>
<segment>
<pinref part="AND1" gate="G$1" pin="B"/>
<wire x1="198.12" y1="-287.02" x2="195.58" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-287.02" x2="193.04" y2="-289.56" width="0.1524" layer="91"/>
<label x="195.072" y="-286.766" size="1.016" layer="95"/>
</segment>
<segment>
<wire x1="195.58" y1="-307.34" x2="193.04" y2="-309.88" width="0.1524" layer="91"/>
<label x="195.072" y="-307.086" size="1.016" layer="95"/>
<pinref part="NOR3" gate="G$1" pin="B"/>
<wire x1="195.58" y1="-307.34" x2="198.12" y2="-307.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR22" class="0">
<segment>
<wire x1="198.12" y1="-261.62" x2="200.66" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A16"/>
</segment>
<segment>
<pinref part="AND1" gate="G$1" pin="C"/>
<wire x1="198.12" y1="-292.1" x2="195.58" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-292.1" x2="193.04" y2="-294.64" width="0.1524" layer="91"/>
<label x="195.072" y="-291.846" size="1.016" layer="95"/>
</segment>
<segment>
<wire x1="195.58" y1="-312.42" x2="193.04" y2="-314.96" width="0.1524" layer="91"/>
<label x="195.072" y="-312.166" size="1.016" layer="95"/>
<pinref part="NOR3" gate="G$1" pin="C"/>
<wire x1="195.58" y1="-312.42" x2="198.12" y2="-312.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR23" class="0">
<segment>
<wire x1="198.12" y1="-259.08" x2="200.66" y2="-256.54" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A15"/>
</segment>
<segment>
<wire x1="198.12" y1="-256.54" x2="200.66" y2="-254" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A14"/>
</segment>
<segment>
<pinref part="AND1" gate="G$1" pin="D"/>
<wire x1="198.12" y1="-294.64" x2="195.58" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-294.64" x2="193.04" y2="-297.18" width="0.1524" layer="91"/>
<label x="195.072" y="-294.386" size="1.016" layer="95"/>
</segment>
<segment>
<wire x1="195.58" y1="-314.96" x2="193.04" y2="-317.5" width="0.1524" layer="91"/>
<label x="195.072" y="-314.706" size="1.016" layer="95"/>
<pinref part="NOR3" gate="G$1" pin="D"/>
<wire x1="198.12" y1="-314.96" x2="195.58" y2="-314.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR24" class="0">
<segment>
<wire x1="198.12" y1="-254" x2="200.66" y2="-251.46" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A13"/>
</segment>
</net>
<net name="ADDR25" class="0">
<segment>
<wire x1="198.12" y1="-251.46" x2="200.66" y2="-248.92" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A12"/>
</segment>
</net>
<net name="ADDR26" class="0">
<segment>
<wire x1="198.12" y1="-248.92" x2="200.66" y2="-246.38" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A11"/>
</segment>
</net>
<net name="ADDR27" class="0">
<segment>
<wire x1="198.12" y1="-246.38" x2="200.66" y2="-243.84" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A10"/>
</segment>
</net>
<net name="ADDR28" class="0">
<segment>
<wire x1="198.12" y1="-243.84" x2="200.66" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A9"/>
</segment>
</net>
<net name="ADDR29" class="0">
<segment>
<wire x1="198.12" y1="-241.3" x2="200.66" y2="-238.76" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A8"/>
</segment>
</net>
<net name="ADDR30" class="0">
<segment>
<wire x1="198.12" y1="-238.76" x2="200.66" y2="-236.22" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A7"/>
</segment>
</net>
<net name="ADDR31" class="0">
<segment>
<wire x1="198.12" y1="-236.22" x2="200.66" y2="-233.68" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A6"/>
</segment>
</net>
<net name="ADDR32" class="0">
<segment>
<wire x1="198.12" y1="-220.98" x2="200.66" y2="-218.44" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A0"/>
</segment>
</net>
<net name="ADDR33" class="0">
<segment>
<wire x1="200.66" y1="-220.98" x2="198.12" y2="-223.52" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A1"/>
</segment>
</net>
<net name="ADDR34" class="0">
<segment>
<wire x1="200.66" y1="-223.52" x2="198.12" y2="-226.06" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A2"/>
</segment>
</net>
<net name="ADDR35" class="0">
<segment>
<wire x1="200.66" y1="-226.06" x2="198.12" y2="-228.6" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A3"/>
</segment>
</net>
<net name="ADDR36" class="0">
<segment>
<wire x1="200.66" y1="-228.6" x2="198.12" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A4"/>
</segment>
</net>
<net name="ADDR37" class="0">
<segment>
<wire x1="200.66" y1="-231.14" x2="198.12" y2="-233.68" width="0.1524" layer="91"/>
<pinref part="ROM2" gate="G$1" pin="A5"/>
</segment>
</net>
<net name="ADDR_DEVICE" class="0">
<segment>
<pinref part="AND1" gate="G$1" pin="Y"/>
<wire x1="220.98" y1="-289.56" x2="223.52" y2="-289.56" width="0.1524" layer="91"/>
<label x="226.06" y="-289.56" size="1.27" layer="95" xref="yes"/>
<wire x1="223.52" y1="-289.56" x2="226.06" y2="-289.56" width="0.1524" layer="91"/>
<pinref part="NOR2" gate="G$1" pin="A"/>
<wire x1="223.52" y1="-297.18" x2="226.06" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-289.56" x2="223.52" y2="-297.18" width="0.1524" layer="91"/>
<junction x="223.52" y="-289.56"/>
</segment>
</net>
<net name="ADDR_ROM" class="0">
<segment>
<wire x1="220.98" y1="-309.88" x2="223.52" y2="-309.88" width="0.1524" layer="91"/>
<label x="226.06" y="-309.88" size="1.27" layer="95" xref="yes"/>
<pinref part="NOR2" gate="G$1" pin="B"/>
<wire x1="223.52" y1="-309.88" x2="226.06" y2="-309.88" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-302.26" x2="223.52" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-302.26" x2="223.52" y2="-309.88" width="0.1524" layer="91"/>
<junction x="223.52" y="-309.88"/>
<pinref part="NOR3" gate="G$1" pin="Y"/>
</segment>
<segment>
<pinref part="AND3" gate="G$1" pin="A"/>
<wire x1="208.28" y1="-205.74" x2="205.74" y2="-205.74" width="0.1524" layer="91"/>
<label x="205.74" y="-205.74" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$97" class="0">
<segment>
<pinref part="AND3" gate="G$1" pin="Y"/>
<pinref part="ROM2" gate="G$1" pin="OE"/>
<wire x1="231.14" y1="-208.28" x2="233.68" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-208.28" x2="233.68" y2="-210.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z8" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A0"/>
<wire x1="-7.62" y1="91.44" x2="-10.16" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A0"/>
<wire x1="-7.62" y1="20.32" x2="-10.16" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A0"/>
<wire x1="-7.62" y1="-121.92" x2="-10.16" y2="-124.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A0"/>
<wire x1="0" y1="-251.46" x2="-2.54" y2="-254" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A0"/>
<wire x1="76.2" y1="-63.5" x2="71.12" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z9" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A1"/>
<wire x1="-7.62" y1="88.9" x2="-10.16" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A1"/>
<wire x1="-7.62" y1="17.78" x2="-10.16" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="-53.34" x2="-10.16" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A1"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A1"/>
<wire x1="-7.62" y1="-124.46" x2="-10.16" y2="-127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A1"/>
<wire x1="0" y1="-254" x2="-2.54" y2="-256.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A1"/>
<wire x1="76.2" y1="-66.04" x2="71.12" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z15" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A7"/>
<wire x1="-7.62" y1="73.66" x2="-10.16" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A7"/>
<wire x1="-7.62" y1="2.54" x2="-10.16" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="-68.58" x2="-10.16" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A7"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A7"/>
<wire x1="-7.62" y1="-139.7" x2="-10.16" y2="-142.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A7"/>
<wire x1="0" y1="-269.24" x2="-2.54" y2="-271.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A7"/>
<wire x1="76.2" y1="-81.28" x2="71.12" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z14" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A6"/>
<wire x1="-7.62" y1="76.2" x2="-10.16" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A6"/>
<wire x1="-7.62" y1="5.08" x2="-10.16" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="-66.04" x2="-10.16" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A6"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A6"/>
<wire x1="-7.62" y1="-137.16" x2="-10.16" y2="-139.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A6"/>
<wire x1="0" y1="-266.7" x2="-2.54" y2="-269.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A6"/>
<wire x1="76.2" y1="-78.74" x2="71.12" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z13" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A5"/>
<wire x1="-7.62" y1="78.74" x2="-10.16" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A5"/>
<wire x1="-7.62" y1="7.62" x2="-10.16" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="-63.5" x2="-10.16" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A5"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A5"/>
<wire x1="-7.62" y1="-134.62" x2="-10.16" y2="-137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A5"/>
<wire x1="0" y1="-264.16" x2="-2.54" y2="-266.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A5"/>
<wire x1="76.2" y1="-76.2" x2="71.12" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z12" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A4"/>
<wire x1="-7.62" y1="81.28" x2="-10.16" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A4"/>
<wire x1="-7.62" y1="10.16" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="-60.96" x2="-10.16" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A4"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A4"/>
<wire x1="-7.62" y1="-132.08" x2="-10.16" y2="-134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A4"/>
<wire x1="0" y1="-261.62" x2="-2.54" y2="-264.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A4"/>
<wire x1="76.2" y1="-73.66" x2="71.12" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z11" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A3"/>
<wire x1="-7.62" y1="83.82" x2="-10.16" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A3"/>
<wire x1="-7.62" y1="12.7" x2="-10.16" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-7.62" y1="-58.42" x2="-10.16" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A3"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A3"/>
<wire x1="-7.62" y1="-129.54" x2="-10.16" y2="-132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A3"/>
<wire x1="0" y1="-259.08" x2="-2.54" y2="-261.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A3"/>
<wire x1="76.2" y1="-71.12" x2="71.12" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z10" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="A2"/>
<wire x1="-7.62" y1="86.36" x2="-10.16" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT11" gate="G$1" pin="A2"/>
<wire x1="-7.62" y1="15.24" x2="-10.16" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-10.16" y1="-58.42" x2="-7.62" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A2"/>
</segment>
<segment>
<pinref part="LAT13" gate="G$1" pin="A2"/>
<wire x1="-7.62" y1="-127" x2="-10.16" y2="-129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CTR3" gate="G$1" pin="A2"/>
<wire x1="0" y1="-256.54" x2="-2.54" y2="-259.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MUX6" gate="G$1" pin="A2"/>
<wire x1="76.2" y1="-68.58" x2="71.12" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR15" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y7"/>
<wire x1="99.06" y1="-256.54" x2="101.6" y2="-259.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR14" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y6"/>
<wire x1="99.06" y1="-254" x2="101.6" y2="-256.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR13" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y5"/>
<wire x1="99.06" y1="-251.46" x2="101.6" y2="-254" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR12" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y4"/>
<wire x1="99.06" y1="-248.92" x2="101.6" y2="-251.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR11" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y3"/>
<wire x1="99.06" y1="-246.38" x2="101.6" y2="-248.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR8" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y0"/>
<wire x1="99.06" y1="-238.76" x2="101.6" y2="-241.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR9" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y1"/>
<wire x1="99.06" y1="-241.3" x2="101.6" y2="-243.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR10" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="Y2"/>
<wire x1="99.06" y1="-243.84" x2="101.6" y2="-246.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A8" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y0"/>
<wire x1="17.78" y1="91.44" x2="20.32" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-10.16" y1="-53.34" x2="-7.62" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="A0"/>
</segment>
</net>
<net name="A9" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y1"/>
<wire x1="17.78" y1="88.9" x2="20.32" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A10" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y2"/>
<wire x1="17.78" y1="86.36" x2="20.32" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A11" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y3"/>
<wire x1="17.78" y1="83.82" x2="20.32" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A12" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y4"/>
<wire x1="17.78" y1="81.28" x2="20.32" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A13" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y5"/>
<wire x1="17.78" y1="78.74" x2="20.32" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A14" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y6"/>
<wire x1="17.78" y1="76.2" x2="20.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A15" class="0">
<segment>
<pinref part="LAT10" gate="G$1" pin="Y7"/>
<wire x1="17.78" y1="73.66" x2="20.32" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B8" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y0"/>
<wire x1="17.78" y1="20.32" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B9" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y1"/>
<wire x1="17.78" y1="17.78" x2="20.32" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B10" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y2"/>
<wire x1="17.78" y1="15.24" x2="20.32" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B15" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y7"/>
<wire x1="17.78" y1="2.54" x2="20.32" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B14" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y6"/>
<wire x1="17.78" y1="5.08" x2="20.32" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B13" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y5"/>
<wire x1="17.78" y1="7.62" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B12" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y4"/>
<wire x1="17.78" y1="10.16" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B11" class="0">
<segment>
<pinref part="LAT11" gate="G$1" pin="Y3"/>
<wire x1="17.78" y1="12.7" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C8" class="0">
<segment>
<wire x1="20.32" y1="-53.34" x2="17.78" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y0"/>
</segment>
</net>
<net name="C9" class="0">
<segment>
<wire x1="17.78" y1="-53.34" x2="20.32" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y1"/>
</segment>
</net>
<net name="C10" class="0">
<segment>
<wire x1="20.32" y1="-58.42" x2="17.78" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y2"/>
</segment>
</net>
<net name="C11" class="0">
<segment>
<wire x1="17.78" y1="-58.42" x2="20.32" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y3"/>
</segment>
</net>
<net name="C12" class="0">
<segment>
<wire x1="17.78" y1="-60.96" x2="20.32" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y4"/>
</segment>
</net>
<net name="C13" class="0">
<segment>
<wire x1="17.78" y1="-63.5" x2="20.32" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y5"/>
</segment>
</net>
<net name="C14" class="0">
<segment>
<wire x1="17.78" y1="-66.04" x2="20.32" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y6"/>
</segment>
</net>
<net name="C15" class="0">
<segment>
<wire x1="17.78" y1="-68.58" x2="20.32" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="LAT12" gate="G$1" pin="Y7"/>
</segment>
</net>
<net name="D8" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y0"/>
<wire x1="17.78" y1="-121.92" x2="20.32" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D9" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y1"/>
<wire x1="17.78" y1="-124.46" x2="20.32" y2="-127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D10" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y2"/>
<wire x1="17.78" y1="-127" x2="20.32" y2="-129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D11" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y3"/>
<wire x1="17.78" y1="-129.54" x2="20.32" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D12" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y4"/>
<wire x1="17.78" y1="-132.08" x2="20.32" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D13" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y5"/>
<wire x1="17.78" y1="-134.62" x2="20.32" y2="-137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D14" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y6"/>
<wire x1="17.78" y1="-137.16" x2="20.32" y2="-139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D15" class="0">
<segment>
<pinref part="LAT13" gate="G$1" pin="Y7"/>
<wire x1="17.78" y1="-139.7" x2="20.32" y2="-142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z16" class="0">
<segment>
<wire x1="43.18" y1="-172.72" x2="45.72" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A0"/>
</segment>
</net>
<net name="Z17" class="0">
<segment>
<wire x1="45.72" y1="-172.72" x2="43.18" y2="-175.26" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A1"/>
</segment>
</net>
<net name="Z18" class="0">
<segment>
<wire x1="43.18" y1="-177.8" x2="45.72" y2="-175.26" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A2"/>
</segment>
</net>
<net name="Z19" class="0">
<segment>
<wire x1="45.72" y1="-177.8" x2="43.18" y2="-180.34" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A3"/>
</segment>
</net>
<net name="Z20" class="0">
<segment>
<wire x1="45.72" y1="-180.34" x2="43.18" y2="-182.88" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A4"/>
</segment>
</net>
<net name="Z21" class="0">
<segment>
<wire x1="45.72" y1="-182.88" x2="43.18" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A5"/>
</segment>
</net>
<net name="Z22" class="0">
<segment>
<wire x1="45.72" y1="-185.42" x2="43.18" y2="-187.96" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A6"/>
</segment>
</net>
<net name="Z23" class="0">
<segment>
<wire x1="45.72" y1="-187.96" x2="43.18" y2="-190.5" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="A7"/>
</segment>
</net>
<net name="Z24" class="0">
<segment>
<wire x1="45.72" y1="-228.6" x2="43.18" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A0"/>
</segment>
</net>
<net name="Z25" class="0">
<segment>
<wire x1="45.72" y1="-231.14" x2="43.18" y2="-233.68" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A1"/>
</segment>
</net>
<net name="Z26" class="0">
<segment>
<wire x1="45.72" y1="-246.38" x2="43.18" y2="-248.92" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A7"/>
</segment>
</net>
<net name="Z27" class="0">
<segment>
<wire x1="45.72" y1="-243.84" x2="43.18" y2="-246.38" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A6"/>
</segment>
</net>
<net name="Z28" class="0">
<segment>
<wire x1="45.72" y1="-241.3" x2="43.18" y2="-243.84" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A5"/>
</segment>
</net>
<net name="Z29" class="0">
<segment>
<wire x1="45.72" y1="-238.76" x2="43.18" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A4"/>
</segment>
</net>
<net name="Z30" class="0">
<segment>
<wire x1="45.72" y1="-236.22" x2="43.18" y2="-238.76" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A3"/>
</segment>
</net>
<net name="Z31" class="0">
<segment>
<wire x1="45.72" y1="-233.68" x2="43.18" y2="-236.22" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="A2"/>
</segment>
</net>
<net name="N$106" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="Y0"/>
<pinref part="LAT9" gate="G$1" pin="A0"/>
<wire x1="71.12" y1="-238.76" x2="73.66" y2="-238.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$107" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="A1"/>
<pinref part="MUX5" gate="G$1" pin="Y1"/>
<wire x1="73.66" y1="-241.3" x2="71.12" y2="-241.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$108" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="Y2"/>
<pinref part="LAT9" gate="G$1" pin="A2"/>
<wire x1="71.12" y1="-243.84" x2="73.66" y2="-243.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$109" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="A3"/>
<pinref part="MUX5" gate="G$1" pin="Y3"/>
<wire x1="73.66" y1="-246.38" x2="71.12" y2="-246.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$110" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="Y4"/>
<pinref part="LAT9" gate="G$1" pin="A4"/>
<wire x1="71.12" y1="-248.92" x2="73.66" y2="-248.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$111" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="A5"/>
<pinref part="MUX5" gate="G$1" pin="Y5"/>
<wire x1="73.66" y1="-251.46" x2="71.12" y2="-251.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$112" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="Y7"/>
<pinref part="LAT9" gate="G$1" pin="A7"/>
<wire x1="71.12" y1="-256.54" x2="73.66" y2="-256.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$113" class="0">
<segment>
<pinref part="LAT9" gate="G$1" pin="A6"/>
<pinref part="MUX5" gate="G$1" pin="Y6"/>
<wire x1="73.66" y1="-254" x2="71.12" y2="-254" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$114" class="0">
<segment>
<pinref part="CTR3" gate="G$1" pin="Y0"/>
<pinref part="MUX5" gate="G$1" pin="B0"/>
<wire x1="25.4" y1="-251.46" x2="45.72" y2="-251.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$115" class="0">
<segment>
<pinref part="CTR3" gate="G$1" pin="Y1"/>
<wire x1="45.72" y1="-254" x2="25.4" y2="-254" width="0.1524" layer="91"/>
<pinref part="MUX5" gate="G$1" pin="B1"/>
</segment>
</net>
<net name="N$116" class="0">
<segment>
<pinref part="CTR3" gate="G$1" pin="Y2"/>
<pinref part="MUX5" gate="G$1" pin="B2"/>
<wire x1="25.4" y1="-256.54" x2="45.72" y2="-256.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$117" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="B3"/>
<pinref part="CTR3" gate="G$1" pin="Y3"/>
<wire x1="45.72" y1="-259.08" x2="25.4" y2="-259.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$118" class="0">
<segment>
<pinref part="CTR3" gate="G$1" pin="Y4"/>
<pinref part="MUX5" gate="G$1" pin="B4"/>
<wire x1="25.4" y1="-261.62" x2="45.72" y2="-261.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$119" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="B5"/>
<pinref part="CTR3" gate="G$1" pin="Y5"/>
<wire x1="45.72" y1="-264.16" x2="25.4" y2="-264.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$121" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="TC"/>
<wire x1="25.4" y1="-185.42" x2="27.94" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-185.42" x2="27.94" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="CTR3" gate="G$1" pin="CE"/>
<wire x1="27.94" y1="-241.3" x2="25.4" y2="-241.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$122" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="B6"/>
<pinref part="CTR3" gate="G$1" pin="Y6"/>
<wire x1="45.72" y1="-266.7" x2="25.4" y2="-266.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$123" class="0">
<segment>
<pinref part="CTR3" gate="G$1" pin="Y7"/>
<pinref part="MUX5" gate="G$1" pin="B7"/>
<wire x1="25.4" y1="-269.24" x2="45.72" y2="-269.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$124" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="Y0"/>
<pinref part="MUX4" gate="G$1" pin="B0"/>
<wire x1="25.4" y1="-193.04" x2="45.72" y2="-193.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$120" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="Y1"/>
<pinref part="MUX4" gate="G$1" pin="B1"/>
<wire x1="25.4" y1="-195.58" x2="45.72" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$125" class="0">
<segment>
<pinref part="MUX4" gate="G$1" pin="B2"/>
<pinref part="CTR2" gate="G$1" pin="Y2"/>
<wire x1="45.72" y1="-198.12" x2="25.4" y2="-198.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$126" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="Y3"/>
<pinref part="MUX4" gate="G$1" pin="B3"/>
<wire x1="25.4" y1="-200.66" x2="45.72" y2="-200.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$127" class="0">
<segment>
<pinref part="MUX4" gate="G$1" pin="B4"/>
<pinref part="CTR2" gate="G$1" pin="Y4"/>
<wire x1="45.72" y1="-203.2" x2="25.4" y2="-203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$128" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="Y5"/>
<pinref part="MUX4" gate="G$1" pin="B5"/>
<wire x1="25.4" y1="-205.74" x2="45.72" y2="-205.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$129" class="0">
<segment>
<pinref part="MUX4" gate="G$1" pin="B6"/>
<pinref part="CTR2" gate="G$1" pin="Y6"/>
<wire x1="45.72" y1="-208.28" x2="25.4" y2="-208.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$130" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="Y7"/>
<pinref part="MUX4" gate="G$1" pin="B7"/>
<wire x1="25.4" y1="-210.82" x2="45.72" y2="-210.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$98" class="0">
<segment>
<pinref part="MUX4" gate="G$1" pin="Y7"/>
<pinref part="LAT4" gate="G$1" pin="A7"/>
<wire x1="71.12" y1="-198.12" x2="73.66" y2="-198.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$99" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="A6"/>
<pinref part="MUX4" gate="G$1" pin="Y6"/>
<wire x1="73.66" y1="-195.58" x2="71.12" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$100" class="0">
<segment>
<pinref part="MUX4" gate="G$1" pin="Y5"/>
<pinref part="LAT4" gate="G$1" pin="A5"/>
<wire x1="71.12" y1="-193.04" x2="73.66" y2="-193.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$101" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="A4"/>
<pinref part="MUX4" gate="G$1" pin="Y4"/>
<wire x1="73.66" y1="-190.5" x2="71.12" y2="-190.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$102" class="0">
<segment>
<pinref part="MUX4" gate="G$1" pin="Y3"/>
<pinref part="LAT4" gate="G$1" pin="A3"/>
<wire x1="71.12" y1="-187.96" x2="73.66" y2="-187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$103" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="A2"/>
<pinref part="MUX4" gate="G$1" pin="Y2"/>
<wire x1="73.66" y1="-185.42" x2="71.12" y2="-185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$104" class="0">
<segment>
<pinref part="MUX4" gate="G$1" pin="Y1"/>
<pinref part="LAT4" gate="G$1" pin="A1"/>
<wire x1="71.12" y1="-182.88" x2="73.66" y2="-182.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$105" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="A0"/>
<pinref part="MUX4" gate="G$1" pin="Y0"/>
<wire x1="73.66" y1="-180.34" x2="71.12" y2="-180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR_RAM" class="0">
<segment>
<pinref part="NOR2" gate="G$1" pin="Y"/>
<wire x1="251.46" y1="-299.72" x2="248.92" y2="-299.72" width="0.1524" layer="91"/>
<label x="251.46" y="-299.72" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="MDR15" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y7"/>
<wire x1="132.08" y1="-93.98" x2="129.54" y2="-91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR14" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y6"/>
<wire x1="132.08" y1="-91.44" x2="129.54" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR13" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y5"/>
<wire x1="132.08" y1="-88.9" x2="129.54" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR12" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y4"/>
<wire x1="132.08" y1="-86.36" x2="129.54" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR11" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y3"/>
<wire x1="129.54" y1="-81.28" x2="132.08" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR10" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y2"/>
<wire x1="129.54" y1="-78.74" x2="132.08" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR9" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y1"/>
<wire x1="129.54" y1="-76.2" x2="132.08" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR8" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="Y0"/>
<wire x1="129.54" y1="-73.66" x2="132.08" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$141" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="A0"/>
<pinref part="MUX6" gate="G$1" pin="Y0"/>
<wire x1="104.14" y1="-73.66" x2="101.6" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$142" class="0">
<segment>
<pinref part="MUX6" gate="G$1" pin="Y1"/>
<pinref part="LAT1" gate="G$1" pin="A1"/>
<wire x1="101.6" y1="-76.2" x2="104.14" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$143" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="A2"/>
<pinref part="MUX6" gate="G$1" pin="Y2"/>
<wire x1="104.14" y1="-78.74" x2="101.6" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$144" class="0">
<segment>
<pinref part="MUX6" gate="G$1" pin="Y3"/>
<pinref part="LAT1" gate="G$1" pin="A3"/>
<wire x1="101.6" y1="-81.28" x2="104.14" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$145" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="A4"/>
<pinref part="MUX6" gate="G$1" pin="Y4"/>
<wire x1="104.14" y1="-83.82" x2="101.6" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$146" class="0">
<segment>
<pinref part="MUX6" gate="G$1" pin="Y5"/>
<pinref part="LAT1" gate="G$1" pin="A5"/>
<wire x1="101.6" y1="-86.36" x2="104.14" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$147" class="0">
<segment>
<pinref part="MUX6" gate="G$1" pin="Y6"/>
<pinref part="LAT1" gate="G$1" pin="A6"/>
<wire x1="101.6" y1="-88.9" x2="104.14" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$148" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="A7"/>
<pinref part="MUX6" gate="G$1" pin="Y7"/>
<wire x1="104.14" y1="-91.44" x2="101.6" y2="-91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="REG_LATCH_IR" class="0">
<segment>
<pinref part="DEMUX1" gate="G$1" pin="Y7"/>
<wire x1="-96.52" y1="0" x2="-93.98" y2="0" width="0.1524" layer="91"/>
<label x="-93.98" y="0" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="-152.4" y1="-10.16" x2="-154.94" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="-10.16" x2="-154.94" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="-22.86" x2="-152.4" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="-10.16" x2="-157.48" y2="-10.16" width="0.1524" layer="91"/>
<junction x="-154.94" y="-10.16"/>
<label x="-157.48" y="-10.16" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="AND2" gate="G$1" pin="A"/>
<pinref part="AND4" gate="G$1" pin="A"/>
</segment>
<segment>
<pinref part="DEMUX4" gate="G$1" pin="A0"/>
<wire x1="-121.92" y1="-15.24" x2="-124.46" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-124.46" y1="-15.24" x2="-124.46" y2="-12.7" width="0.1524" layer="91"/>
<label x="-124.46" y="-12.7" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="IR8" class="0">
<segment>
<wire x1="-152.4" y1="-27.94" x2="-157.48" y2="-27.94" width="0.1524" layer="91"/>
<label x="-157.48" y="-27.94" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="AND4" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<wire x1="-129.54" y1="-12.7" x2="-127" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-127" y1="-12.7" x2="-127" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="DEMUX4" gate="G$1" pin="A1"/>
<wire x1="-121.92" y1="-17.78" x2="-127" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="AND2" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="-129.54" y1="-25.4" x2="-127" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-127" y1="-25.4" x2="-127" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="DEMUX4" gate="G$1" pin="A2"/>
<wire x1="-127" y1="-20.32" x2="-121.92" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="AND4" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="LAT5" gate="G$1" pin="CLK"/>
<wire x1="-7.62" y1="132.08" x2="-40.64" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="132.08" x2="-40.64" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="99.06" x2="-40.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="96.52" x2="-40.64" y2="12.7" width="0.1524" layer="91"/>
<pinref part="OR1" gate="G$1" pin="Y"/>
<pinref part="AND5" gate="G$1" pin="A"/>
<wire x1="-35.56" y1="99.06" x2="-40.64" y2="99.06" width="0.1524" layer="91"/>
<junction x="-40.64" y="99.06"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="DEMUX4" gate="G$1" pin="Y5"/>
<wire x1="-96.52" y1="-22.86" x2="-78.74" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="OR3" gate="G$1" pin="B"/>
<wire x1="-63.5" y1="-15.24" x2="-78.74" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-15.24" x2="-78.74" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="DEMUX4" gate="G$1" pin="Y3"/>
<wire x1="-93.98" y1="-17.78" x2="-96.52" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-17.78" x2="-93.98" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-17.78" x2="-68.58" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-17.78" x2="-68.58" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="OR2" gate="G$1" pin="B"/>
<wire x1="-68.58" y1="-2.54" x2="-63.5" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="DEMUX4" gate="G$1" pin="Y1"/>
<wire x1="-96.52" y1="-12.7" x2="-93.98" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-12.7" x2="-91.44" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="OR1" gate="G$1" pin="B"/>
<wire x1="-63.5" y1="10.16" x2="-71.12" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="10.16" x2="-71.12" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="-12.7" x2="-91.44" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="DEMUX1" gate="G$1" pin="Y1"/>
<wire x1="-96.52" y1="15.24" x2="-73.66" y2="15.24" width="0.1524" layer="91"/>
<pinref part="OR1" gate="G$1" pin="A"/>
<wire x1="-73.66" y1="15.24" x2="-63.5" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="OR2" gate="G$1" pin="A"/>
<pinref part="DEMUX1" gate="G$1" pin="Y2"/>
<wire x1="-96.52" y1="12.7" x2="-66.04" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="12.7" x2="-66.04" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="2.54" x2="-63.5" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$149" class="0">
<segment>
<pinref part="DEMUX1" gate="G$1" pin="Y3"/>
<wire x1="-96.52" y1="10.16" x2="-91.44" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="10.16" x2="-73.66" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="10.16" x2="-73.66" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="OR3" gate="G$1" pin="A"/>
<wire x1="-73.66" y1="-10.16" x2="-63.5" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$150" class="0">
<segment>
<pinref part="DEMUX1" gate="G$1" pin="Y4"/>
<wire x1="-96.52" y1="7.62" x2="-76.2" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="7.62" x2="-76.2" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="OR4" gate="G$1" pin="A"/>
<wire x1="-76.2" y1="-22.86" x2="-63.5" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="DEMUX4" gate="G$1" pin="Y7"/>
<pinref part="OR4" gate="G$1" pin="B"/>
<wire x1="-96.52" y1="-27.94" x2="-66.04" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-27.94" x2="-66.04" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$151" class="0">
<segment>
<pinref part="AND5" gate="G$1" pin="Y"/>
<pinref part="LAT10" gate="G$1" pin="CLK"/>
<wire x1="-12.7" y1="96.52" x2="-7.62" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$152" class="0">
<segment>
<pinref part="AND6" gate="G$1" pin="Y"/>
<pinref part="LAT11" gate="G$1" pin="CLK"/>
<wire x1="-12.7" y1="25.4" x2="-7.62" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$153" class="0">
<segment>
<pinref part="AND8" gate="G$1" pin="Y"/>
<pinref part="LAT13" gate="G$1" pin="CLK"/>
<wire x1="-12.7" y1="-116.84" x2="-7.62" y2="-116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$154" class="0">
<segment>
<pinref part="LAT12" gate="G$1" pin="CLK"/>
<pinref part="AND7" gate="G$1" pin="Y"/>
<wire x1="-7.62" y1="-45.72" x2="-12.7" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$155" class="0">
<segment>
<pinref part="CTR1" gate="G$1" pin="LOAD"/>
<wire x1="106.68" y1="63.5" x2="101.6" y2="63.5" width="0.1524" layer="91"/>
<pinref part="AND9" gate="G$1" pin="Y"/>
<wire x1="101.6" y1="63.5" x2="101.6" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLK_HALF" class="0">
<segment>
<pinref part="CTR4" gate="G$1" pin="A1"/>
<wire x1="63.5" y1="116.84" x2="58.42" y2="116.84" width="0.1524" layer="91"/>
<label x="58.42" y="116.84" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MUX3" gate="G$1" pin="B0"/>
<wire x1="116.84" y1="104.14" x2="116.84" y2="101.6" width="0.1524" layer="91"/>
<label x="116.84" y="104.14" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="CLK_QUARTER" class="0">
<segment>
<pinref part="CTR4" gate="G$1" pin="A2"/>
<wire x1="58.42" y1="114.3" x2="63.5" y2="114.3" width="0.1524" layer="91"/>
<label x="58.42" y="114.3" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$156" class="0">
<segment>
<pinref part="CTR4" gate="G$1" pin="A3"/>
<wire x1="63.5" y1="111.76" x2="60.96" y2="111.76" width="0.1524" layer="91"/>
<pinref part="CTR4" gate="G$1" pin="RESET"/>
<wire x1="63.5" y1="124.46" x2="60.96" y2="124.46" width="0.1524" layer="91"/>
<wire x1="60.96" y1="124.46" x2="60.96" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA11" class="0">
<segment>
<wire x1="304.8" y1="48.26" x2="297.18" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA12" class="0">
<segment>
<wire x1="297.18" y1="45.72" x2="304.8" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA13" class="0">
<segment>
<wire x1="304.8" y1="43.18" x2="297.18" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA14" class="0">
<segment>
<wire x1="297.18" y1="40.64" x2="304.8" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA15" class="0">
<segment>
<wire x1="304.8" y1="38.1" x2="297.18" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA16" class="0">
<segment>
<wire x1="297.18" y1="35.56" x2="304.8" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA17" class="0">
<segment>
<wire x1="304.8" y1="33.02" x2="297.18" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA18" class="0">
<segment>
<wire x1="297.18" y1="30.48" x2="304.8" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA19" class="0">
<segment>
<wire x1="297.18" y1="27.94" x2="304.8" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA20" class="0">
<segment>
<wire x1="304.8" y1="25.4" x2="297.18" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA21" class="0">
<segment>
<wire x1="297.18" y1="22.86" x2="304.8" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA22" class="0">
<segment>
<wire x1="304.8" y1="20.32" x2="297.18" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA23" class="0">
<segment>
<wire x1="297.18" y1="17.78" x2="304.8" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA24" class="0">
<segment>
<wire x1="304.8" y1="15.24" x2="297.18" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA25" class="0">
<segment>
<wire x1="297.18" y1="12.7" x2="304.8" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA26" class="0">
<segment>
<wire x1="304.8" y1="10.16" x2="297.18" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA27" class="0">
<segment>
<wire x1="297.18" y1="7.62" x2="304.8" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA28" class="0">
<segment>
<wire x1="297.18" y1="5.08" x2="304.8" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA29" class="0">
<segment>
<wire x1="304.8" y1="2.54" x2="297.18" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA30" class="0">
<segment>
<wire x1="297.18" y1="0" x2="304.8" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA31" class="0">
<segment>
<wire x1="304.8" y1="-2.54" x2="297.18" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA32" class="0">
<segment>
<wire x1="297.18" y1="-5.08" x2="304.8" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA33" class="0">
<segment>
<wire x1="304.8" y1="-7.62" x2="297.18" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA34" class="0">
<segment>
<wire x1="297.18" y1="-10.16" x2="304.8" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA35" class="0">
<segment>
<wire x1="304.8" y1="-12.7" x2="297.18" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA36" class="0">
<segment>
<wire x1="297.18" y1="-15.24" x2="304.8" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA37" class="0">
<segment>
<wire x1="297.18" y1="-17.78" x2="304.8" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA38" class="0">
<segment>
<wire x1="304.8" y1="-20.32" x2="297.18" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA39" class="0">
<segment>
<wire x1="297.18" y1="-22.86" x2="304.8" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA40" class="0">
<segment>
<wire x1="304.8" y1="-25.4" x2="297.18" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA41" class="0">
<segment>
<wire x1="297.18" y1="-27.94" x2="304.8" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA42" class="0">
<segment>
<wire x1="304.8" y1="-30.48" x2="297.18" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA43" class="0">
<segment>
<wire x1="297.18" y1="-33.02" x2="304.8" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA44" class="0">
<segment>
<wire x1="304.8" y1="-35.56" x2="297.18" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA45" class="0">
<segment>
<wire x1="297.18" y1="-38.1" x2="304.8" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA46" class="0">
<segment>
<wire x1="297.18" y1="-40.64" x2="304.8" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA47" class="0">
<segment>
<wire x1="304.8" y1="-43.18" x2="297.18" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA48" class="0">
<segment>
<wire x1="297.18" y1="-45.72" x2="304.8" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA49" class="0">
<segment>
<wire x1="304.8" y1="-48.26" x2="297.18" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA50" class="0">
<segment>
<wire x1="297.18" y1="-50.8" x2="304.8" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA51" class="0">
<segment>
<wire x1="304.8" y1="-53.34" x2="297.18" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA52" class="0">
<segment>
<wire x1="297.18" y1="-55.88" x2="304.8" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA53" class="0">
<segment>
<wire x1="304.8" y1="-58.42" x2="297.18" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA54" class="0">
<segment>
<wire x1="297.18" y1="-60.96" x2="304.8" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA55" class="0">
<segment>
<wire x1="297.18" y1="-63.5" x2="304.8" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA56" class="0">
<segment>
<wire x1="304.8" y1="-66.04" x2="297.18" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA57" class="0">
<segment>
<wire x1="297.18" y1="-68.58" x2="304.8" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA58" class="0">
<segment>
<wire x1="304.8" y1="-71.12" x2="297.18" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA59" class="0">
<segment>
<wire x1="297.18" y1="-73.66" x2="304.8" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA60" class="0">
<segment>
<wire x1="304.8" y1="-76.2" x2="297.18" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA61" class="0">
<segment>
<wire x1="297.18" y1="-78.74" x2="304.8" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA63" class="0">
<segment>
<wire x1="304.8" y1="-81.28" x2="297.18" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-83.82" x2="297.18" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA0" class="0">
<segment>
<pinref part="RAM1" gate="G$1" pin="Y0"/>
<pinref part="LINK1" gate="G$1" pin="A1"/>
<wire x1="297.18" y1="76.2" x2="304.8" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA1" class="0">
<segment>
<pinref part="RAM1" gate="G$1" pin="Y1"/>
<pinref part="LINK1" gate="G$1" pin="A2"/>
<wire x1="297.18" y1="73.66" x2="304.8" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA2" class="0">
<segment>
<pinref part="LINK1" gate="G$1" pin="A3"/>
<pinref part="RAM1" gate="G$1" pin="Y2"/>
<wire x1="304.8" y1="71.12" x2="297.18" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA3" class="0">
<segment>
<pinref part="RAM1" gate="G$1" pin="Y3"/>
<pinref part="LINK1" gate="G$1" pin="A4"/>
<wire x1="297.18" y1="68.58" x2="304.8" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA4" class="0">
<segment>
<pinref part="LINK1" gate="G$1" pin="A5"/>
<pinref part="RAM1" gate="G$1" pin="Y4"/>
<wire x1="304.8" y1="66.04" x2="297.18" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA5" class="0">
<segment>
<pinref part="RAM1" gate="G$1" pin="Y5"/>
<pinref part="LINK1" gate="G$1" pin="A6"/>
<wire x1="297.18" y1="63.5" x2="304.8" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA6" class="0">
<segment>
<pinref part="LINK1" gate="G$1" pin="A7"/>
<pinref part="RAM1" gate="G$1" pin="Y6"/>
<wire x1="304.8" y1="60.96" x2="297.18" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA7" class="0">
<segment>
<pinref part="RAM1" gate="G$1" pin="Y7"/>
<pinref part="LINK1" gate="G$1" pin="A8"/>
<wire x1="297.18" y1="58.42" x2="304.8" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA8" class="0">
<segment>
<pinref part="LINK2" gate="G$1" pin="A1"/>
<pinref part="RAM1" gate="G$1" pin="Y8"/>
<wire x1="304.8" y1="55.88" x2="297.18" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA9" class="0">
<segment>
<wire x1="297.18" y1="53.34" x2="304.8" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_DATA10" class="0">
<segment>
<wire x1="297.18" y1="50.8" x2="304.8" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_JUMP" class="0">
<segment>
<pinref part="AND9" gate="G$1" pin="B"/>
<wire x1="99.06" y1="101.6" x2="99.06" y2="104.14" width="0.1524" layer="91"/>
<label x="99.06" y="104.14" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B1"/>
<wire x1="320.04" y1="76.2" x2="317.5" y2="76.2" width="0.1524" layer="91"/>
<label x="320.04" y="76.2" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC1" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B1"/>
<wire x1="73.66" y1="38.1" x2="76.2" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK4" gate="G$1" pin="B3"/>
<wire x1="317.5" y1="10.16" x2="320.04" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC3" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B3"/>
<wire x1="73.66" y1="33.02" x2="76.2" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK4" gate="G$1" pin="B5"/>
<wire x1="317.5" y1="5.08" x2="320.04" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC5" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B5"/>
<wire x1="73.66" y1="27.94" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK4" gate="G$1" pin="B7"/>
<wire x1="317.5" y1="0" x2="320.04" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LOAD_REG2" class="0">
<segment>
<pinref part="DEMUX1" gate="G$1" pin="A2"/>
<wire x1="-121.92" y1="7.62" x2="-127" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK2" gate="G$1" pin="B2"/>
<wire x1="320.04" y1="53.34" x2="317.5" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OP_16BIT" class="0">
<segment>
<pinref part="AND5" gate="G$1" pin="B"/>
<wire x1="-35.56" y1="93.98" x2="-38.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="93.98" x2="-38.1" y2="91.44" width="0.1524" layer="91"/>
<label x="-38.1" y="91.44" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="AND6" gate="G$1" pin="B"/>
<wire x1="-35.56" y1="22.86" x2="-35.56" y2="20.32" width="0.1524" layer="91"/>
<label x="-35.56" y="20.32" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="AND7" gate="G$1" pin="B"/>
<wire x1="-35.56" y1="-48.26" x2="-38.1" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-48.26" x2="-38.1" y2="-50.8" width="0.1524" layer="91"/>
<label x="-38.1" y="-50.8" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="AND8" gate="G$1" pin="B"/>
<wire x1="-35.56" y1="-119.38" x2="-38.1" y2="-119.38" width="0.1524" layer="91"/>
<label x="-38.1" y="-119.38" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LINK6" gate="G$1" pin="B6"/>
<wire x1="317.5" y1="-38.1" x2="320.04" y2="-38.1" width="0.1524" layer="91"/>
<label x="320.04" y="-38.1" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_Z" class="0">
<segment>
<pinref part="LINK2" gate="G$1" pin="B5"/>
<wire x1="317.5" y1="45.72" x2="320.04" y2="45.72" width="0.1524" layer="91"/>
<label x="320.04" y="45.72" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_Y" class="0">
<segment>
<pinref part="LINK2" gate="G$1" pin="B4"/>
<wire x1="320.04" y1="48.26" x2="317.5" y2="48.26" width="0.1524" layer="91"/>
<label x="320.04" y="48.26" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_X" class="0">
<segment>
<pinref part="LINK2" gate="G$1" pin="B3"/>
<wire x1="317.5" y1="50.8" x2="320.04" y2="50.8" width="0.1524" layer="91"/>
<label x="320.04" y="50.8" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RAM_READ" class="0">
<segment>
<pinref part="AND3" gate="G$1" pin="B"/>
<wire x1="205.74" y1="-210.82" x2="208.28" y2="-210.82" width="0.1524" layer="91"/>
<label x="205.74" y="-210.82" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LINK6" gate="G$1" pin="B4"/>
<wire x1="320.04" y1="-33.02" x2="317.5" y2="-33.02" width="0.1524" layer="91"/>
<label x="320.04" y="-33.02" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_MDR_H" class="0">
<segment>
<pinref part="LAT1" gate="G$1" pin="CLK"/>
<wire x1="104.14" y1="-68.58" x2="101.6" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-68.58" x2="101.6" y2="-66.04" width="0.1524" layer="91"/>
<label x="101.6" y="-66.04" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B3"/>
<wire x1="320.04" y1="71.12" x2="317.5" y2="71.12" width="0.1524" layer="91"/>
<label x="320.04" y="71.12" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="CS_JUMP_SRC" class="0">
<segment>
<pinref part="LINK4" gate="G$1" pin="B1"/>
<wire x1="317.5" y1="15.24" x2="320.04" y2="15.24" width="0.1524" layer="91"/>
<label x="320.04" y="15.24" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MUX1" gate="G$1" pin="SEL"/>
<wire x1="76.2" y1="71.12" x2="73.66" y2="71.12" width="0.1524" layer="91"/>
<wire x1="73.66" y1="71.12" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
<label x="73.66" y="73.66" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC7" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B7"/>
<wire x1="73.66" y1="22.86" x2="76.2" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK5" gate="G$1" pin="B1"/>
<wire x1="320.04" y1="-5.08" x2="317.5" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LOAD_MDR_L" class="0">
<segment>
<pinref part="LAT2" gate="G$1" pin="CLK"/>
<wire x1="104.14" y1="-12.7" x2="101.6" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-12.7" x2="101.6" y2="-10.16" width="0.1524" layer="91"/>
<label x="101.6" y="-10.16" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B2"/>
<wire x1="317.5" y1="73.66" x2="320.04" y2="73.66" width="0.1524" layer="91"/>
<label x="320.04" y="73.66" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_MAR" class="0">
<segment>
<pinref part="LAT4" gate="G$1" pin="CLK"/>
<label x="71.12" y="-172.72" size="1.27" layer="95" rot="R90" xref="yes"/>
<wire x1="73.66" y1="-175.26" x2="71.12" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-175.26" x2="71.12" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="LAT9" gate="G$1" pin="CLK"/>
<wire x1="73.66" y1="-233.68" x2="71.12" y2="-233.68" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-175.26" x2="71.12" y2="-233.68" width="0.1524" layer="91"/>
<junction x="71.12" y="-175.26"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B4"/>
<wire x1="317.5" y1="68.58" x2="320.04" y2="68.58" width="0.1524" layer="91"/>
<label x="320.04" y="68.58" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_IR" class="0">
<segment>
<pinref part="LAT3" gate="G$1" pin="CLK"/>
<wire x1="48.26" y1="71.12" x2="45.72" y2="71.12" width="0.1524" layer="91"/>
<wire x1="45.72" y1="71.12" x2="45.72" y2="73.66" width="0.1524" layer="91"/>
<label x="45.72" y="73.66" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B5"/>
<wire x1="320.04" y1="66.04" x2="317.5" y2="66.04" width="0.1524" layer="91"/>
<label x="320.04" y="66.04" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="INC_PC" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="CLK"/>
<wire x1="0" y1="-182.88" x2="-5.08" y2="-182.88" width="0.1524" layer="91"/>
<label x="-7.62" y="-182.88" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="CTR3" gate="G$1" pin="CLK"/>
<wire x1="-5.08" y1="-182.88" x2="-7.62" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="0" y1="-241.3" x2="-5.08" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-241.3" x2="-5.08" y2="-182.88" width="0.1524" layer="91"/>
<junction x="-5.08" y="-182.88"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B6"/>
<wire x1="317.5" y1="63.5" x2="320.04" y2="63.5" width="0.1524" layer="91"/>
<label x="320.04" y="63.5" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_PC" class="0">
<segment>
<pinref part="CTR2" gate="G$1" pin="LOAD"/>
<wire x1="0" y1="-185.42" x2="-7.62" y2="-185.42" width="0.1524" layer="91"/>
<label x="-10.16" y="-185.42" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="CTR3" gate="G$1" pin="LOAD"/>
<wire x1="-7.62" y1="-185.42" x2="-10.16" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="0" y1="-243.84" x2="-7.62" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-243.84" x2="-7.62" y2="-185.42" width="0.1524" layer="91"/>
<junction x="-7.62" y="-185.42"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B7"/>
<wire x1="320.04" y1="60.96" x2="317.5" y2="60.96" width="0.1524" layer="91"/>
<label x="320.04" y="60.96" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LOAD_REG0" class="0">
<segment>
<pinref part="DEMUX1" gate="G$1" pin="A0"/>
<wire x1="-121.92" y1="12.7" x2="-127" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK1" gate="G$1" pin="B8"/>
<wire x1="317.5" y1="58.42" x2="320.04" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LOAD_REG1" class="0">
<segment>
<pinref part="DEMUX1" gate="G$1" pin="A1"/>
<wire x1="-121.92" y1="10.16" x2="-127" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK2" gate="G$1" pin="B1"/>
<wire x1="320.04" y1="55.88" x2="317.5" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR_SRC" class="0">
<segment>
<pinref part="MUX2" gate="G$1" pin="SEL"/>
<wire x1="76.2" y1="-2.54" x2="73.66" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-2.54" x2="73.66" y2="0" width="0.1524" layer="91"/>
<label x="73.66" y="0" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="LINK5" gate="G$1" pin="B3"/>
<wire x1="317.5" y1="-10.16" x2="320.04" y2="-10.16" width="0.1524" layer="91"/>
<label x="320.04" y="-10.16" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="MAR_SRC" class="0">
<segment>
<pinref part="MUX5" gate="G$1" pin="SEL"/>
<wire x1="45.72" y1="-223.52" x2="40.64" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-223.52" x2="40.64" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="MUX4" gate="G$1" pin="SEL"/>
<wire x1="40.64" y1="-165.1" x2="45.72" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-165.1" x2="38.1" y2="-165.1" width="0.1524" layer="91"/>
<junction x="40.64" y="-165.1"/>
<label x="38.1" y="-165.1" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LINK5" gate="G$1" pin="B2"/>
<wire x1="317.5" y1="-7.62" x2="320.04" y2="-7.62" width="0.1524" layer="91"/>
<label x="320.04" y="-7.62" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC6" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B6"/>
<wire x1="73.66" y1="25.4" x2="76.2" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK4" gate="G$1" pin="B8"/>
<wire x1="317.5" y1="-2.54" x2="320.04" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC4" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B4"/>
<wire x1="73.66" y1="30.48" x2="76.2" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK4" gate="G$1" pin="B6"/>
<wire x1="320.04" y1="2.54" x2="317.5" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC2" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B2"/>
<wire x1="73.66" y1="35.56" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK4" gate="G$1" pin="B4"/>
<wire x1="320.04" y1="7.62" x2="317.5" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_JUMP_ADDR_MC0" class="0">
<segment>
<pinref part="MUX1" gate="G$1" pin="B0"/>
<wire x1="73.66" y1="40.64" x2="76.2" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINK4" gate="G$1" pin="B2"/>
<wire x1="320.04" y1="12.7" x2="317.5" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_MODE" class="0">
<segment>
<pinref part="LINK5" gate="G$1" pin="B4"/>
<wire x1="320.04" y1="-12.7" x2="317.5" y2="-12.7" width="0.1524" layer="91"/>
<label x="320.04" y="-12.7" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RAM_WRITE" class="0">
<segment>
<pinref part="LINK6" gate="G$1" pin="B5"/>
<wire x1="317.5" y1="-35.56" x2="320.04" y2="-35.56" width="0.1524" layer="91"/>
<label x="320.04" y="-35.56" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="XY_SRC2" class="0">
<segment>
<pinref part="LINK6" gate="G$1" pin="B3"/>
<wire x1="317.5" y1="-30.48" x2="320.04" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY_SRC1" class="0">
<segment>
<pinref part="LINK6" gate="G$1" pin="B2"/>
<wire x1="320.04" y1="-27.94" x2="317.5" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY_SRC0" class="0">
<segment>
<pinref part="LINK6" gate="G$1" pin="B1"/>
<wire x1="317.5" y1="-25.4" x2="320.04" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP3" class="0">
<segment>
<pinref part="LINK5" gate="G$1" pin="B8"/>
<wire x1="320.04" y1="-22.86" x2="317.5" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP2" class="0">
<segment>
<pinref part="LINK5" gate="G$1" pin="B7"/>
<wire x1="317.5" y1="-20.32" x2="320.04" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP1" class="0">
<segment>
<pinref part="LINK5" gate="G$1" pin="B6"/>
<wire x1="320.04" y1="-17.78" x2="317.5" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP0" class="0">
<segment>
<pinref part="LINK5" gate="G$1" pin="B5"/>
<wire x1="317.5" y1="-15.24" x2="320.04" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<description>ALU</description>
<plain>
<text x="91.44" y="-60.96" size="2.54" layer="94" rot="R270">TODO: CONNECT REGS</text>
</plain>
<instances>
<instance part="ALU1" gate="G$1" x="25.4" y="63.5" rot="R90"/>
<instance part="ALU2" gate="G$1" x="76.2" y="63.5" rot="R90"/>
<instance part="ALU3" gate="G$1" x="127" y="63.5" rot="R90"/>
<instance part="ALU4" gate="G$1" x="177.8" y="63.5" rot="R90"/>
<instance part="LAT14" gate="G$1" x="25.4" y="10.16" rot="R90"/>
<instance part="LAT15" gate="G$1" x="58.42" y="10.16" rot="R90"/>
<instance part="LAT16" gate="G$1" x="96.52" y="10.16" rot="R90"/>
<instance part="LAT17" gate="G$1" x="129.54" y="10.16" rot="R90"/>
<instance part="CLAG1" gate="G$1" x="96.52" y="106.68" rot="R90"/>
<instance part="SUPPLY6" gate="1" x="0" y="50.8" rot="R270"/>
<instance part="SUPPLY7" gate="1" x="81.28" y="93.98" rot="R270"/>
<instance part="DEMUX2" gate="G$1" x="30.48" y="-81.28"/>
<instance part="SUPPLY4" gate="1" x="5.08" y="-30.48" rot="R180"/>
<instance part="DEMUX3" gate="G$1" x="93.98" y="-81.28"/>
<instance part="SUPPLY5" gate="1" x="68.58" y="-30.48" rot="R180"/>
</instances>
<busses>
<bus name="ALU_MODE,ALU_OP[0..3]">
<segment>
<wire x1="5.08" y1="45.72" x2="7.62" y2="48.26" width="0.762" layer="92"/>
<wire x1="7.62" y1="48.26" x2="170.18" y2="48.26" width="0.762" layer="92"/>
<label x="-15.24" y="43.942" size="1.27" layer="95"/>
</segment>
</bus>
<bus name="X[0..15]">
<segment>
<wire x1="12.7" y1="27.94" x2="15.24" y2="25.4" width="0.762" layer="92"/>
<wire x1="15.24" y1="25.4" x2="68.58" y2="25.4" width="0.762" layer="92"/>
<label x="12.446" y="29.718" size="1.27" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="15.24" y1="43.18" x2="17.78" y2="45.72" width="0.762" layer="92"/>
<wire x1="17.78" y1="45.72" x2="180.34" y2="45.72" width="0.762" layer="92"/>
<label x="14.986" y="42.672" size="1.27" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="XY[0..15]">
<segment>
<wire x1="12.7" y1="-7.62" x2="15.24" y2="-5.08" width="0.762" layer="92"/>
<wire x1="15.24" y1="-5.08" x2="68.58" y2="-5.08" width="0.762" layer="92"/>
<label x="12.446" y="-8.128" size="1.27" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="83.82" y1="-7.62" x2="86.36" y2="-5.08" width="0.762" layer="92"/>
<wire x1="86.36" y1="-5.08" x2="139.7" y2="-5.08" width="0.762" layer="92"/>
<label x="83.566" y="-8.128" size="1.27" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="12.7" y1="-137.16" x2="15.24" y2="-134.62" width="0.762" layer="92"/>
<wire x1="15.24" y1="-134.62" x2="99.06" y2="-134.62" width="0.762" layer="92"/>
<label x="12.446" y="-137.668" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="Y[0..15]">
<segment>
<wire x1="27.94" y1="43.18" x2="190.5" y2="43.18" width="0.762" layer="92"/>
<wire x1="27.94" y1="43.18" x2="25.4" y2="40.64" width="0.762" layer="92"/>
<label x="25.146" y="40.132" size="1.27" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="83.82" y1="27.94" x2="86.36" y2="25.4" width="0.762" layer="92"/>
<wire x1="86.36" y1="25.4" x2="139.7" y2="25.4" width="0.762" layer="92"/>
<label x="83.566" y="29.718" size="1.27" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="ALU_Z[0..15]">
<segment>
<wire x1="182.88" y1="78.74" x2="20.32" y2="78.74" width="0.762" layer="92"/>
<wire x1="20.32" y1="78.74" x2="17.78" y2="81.28" width="0.762" layer="92"/>
<label x="17.526" y="83.058" size="1.27" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="MDR[0..7]">
<segment>
<wire x1="55.88" y1="-99.06" x2="53.34" y2="-101.6" width="0.762" layer="92"/>
<wire x1="53.34" y1="-101.6" x2="53.34" y2="-121.92" width="0.762" layer="92"/>
<label x="55.88" y="-117.348" size="1.778" layer="95" rot="R90"/>
</segment>
</bus>
<bus name="A[0..7]">
<segment>
<wire x1="5.08" y1="-55.88" x2="2.54" y2="-53.34" width="0.762" layer="92"/>
<wire x1="5.08" y1="-55.88" x2="5.08" y2="-76.2" width="0.762" layer="92"/>
<label x="2.286" y="-51.054" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="A[8..15]">
<segment>
<wire x1="68.58" y1="-55.88" x2="66.04" y2="-53.34" width="0.762" layer="92"/>
<wire x1="68.58" y1="-55.88" x2="68.58" y2="-76.2" width="0.762" layer="92"/>
<label x="66.04" y="-60.452" size="1.778" layer="95" rot="R270"/>
</segment>
</bus>
<bus name="B[0..7]">
<segment>
<wire x1="2.54" y1="-76.2" x2="5.08" y2="-78.74" width="0.762" layer="92"/>
<wire x1="5.08" y1="-78.74" x2="5.08" y2="-99.06" width="0.762" layer="92"/>
<label x="2.286" y="-73.914" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="C[0..7]">
<segment>
<wire x1="5.08" y1="-121.92" x2="5.08" y2="-101.6" width="0.762" layer="92"/>
<wire x1="5.08" y1="-101.6" x2="2.54" y2="-99.06" width="0.762" layer="92"/>
<label x="2.54" y="-96.774" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
<bus name="D[0..7]">
<segment>
<wire x1="53.34" y1="-53.34" x2="53.34" y2="-33.02" width="0.762" layer="92"/>
<wire x1="53.34" y1="-33.02" x2="55.88" y2="-30.48" width="0.762" layer="92"/>
<label x="56.388" y="-29.972" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="SP[0..7]">
<segment>
<wire x1="53.34" y1="-76.2" x2="53.34" y2="-55.88" width="0.762" layer="92"/>
<wire x1="53.34" y1="-55.88" x2="55.88" y2="-53.34" width="0.762" layer="92"/>
<label x="55.88" y="-71.12" size="1.778" layer="95" rot="R90"/>
</segment>
</bus>
<bus name="MAR[0..7]">
<segment>
<wire x1="55.88" y1="-76.2" x2="53.34" y2="-78.74" width="0.762" layer="92"/>
<wire x1="53.34" y1="-78.74" x2="53.34" y2="-99.06" width="0.762" layer="92"/>
<label x="55.88" y="-94.488" size="1.778" layer="95" rot="R90"/>
</segment>
</bus>
<bus name="XY_SRC[0..2]">
<segment>
<wire x1="20.32" y1="-25.4" x2="22.86" y2="-27.94" width="0.762" layer="92"/>
<wire x1="22.86" y1="-27.94" x2="30.48" y2="-27.94" width="0.762" layer="92"/>
<label x="20.32" y="-23.114" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="86.36" y1="-27.94" x2="83.82" y2="-25.4" width="0.762" layer="92"/>
<wire x1="86.36" y1="-27.94" x2="93.98" y2="-27.94" width="0.762" layer="92"/>
<label x="83.82" y="-23.114" size="1.778" layer="95" rot="R180"/>
</segment>
</bus>
</busses>
<nets>
<net name="X0" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y0"/>
<wire x1="20.32" y1="22.86" x2="17.78" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU1" gate="G$1" pin="A0"/>
<wire x1="25.4" y1="50.8" x2="20.32" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X1" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y1"/>
<wire x1="22.86" y1="22.86" x2="20.32" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU1" gate="G$1" pin="A1"/>
<wire x1="27.94" y1="50.8" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X2" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y2"/>
<wire x1="25.4" y1="22.86" x2="22.86" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU1" gate="G$1" pin="A2"/>
<wire x1="30.48" y1="50.8" x2="25.4" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X3" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y3"/>
<wire x1="27.94" y1="22.86" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU1" gate="G$1" pin="A3"/>
<wire x1="33.02" y1="50.8" x2="27.94" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X4" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y4"/>
<wire x1="30.48" y1="22.86" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="A0"/>
<wire x1="76.2" y1="50.8" x2="71.12" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X5" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y5"/>
<wire x1="33.02" y1="22.86" x2="30.48" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="A1"/>
<wire x1="78.74" y1="50.8" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X6" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y6"/>
<wire x1="35.56" y1="22.86" x2="33.02" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="A2"/>
<wire x1="81.28" y1="50.8" x2="76.2" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X7" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="Y7"/>
<wire x1="38.1" y1="22.86" x2="35.56" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="A3"/>
<wire x1="83.82" y1="50.8" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X15" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y7"/>
<wire x1="71.12" y1="22.86" x2="68.58" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="A3"/>
<wire x1="185.42" y1="50.8" x2="180.34" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X14" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y6"/>
<wire x1="68.58" y1="22.86" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="A2"/>
<wire x1="182.88" y1="50.8" x2="177.8" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X13" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y5"/>
<wire x1="66.04" y1="22.86" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="A1"/>
<wire x1="180.34" y1="50.8" x2="175.26" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X12" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y4"/>
<wire x1="63.5" y1="22.86" x2="60.96" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="A0"/>
<wire x1="177.8" y1="50.8" x2="172.72" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X11" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y3"/>
<wire x1="60.96" y1="22.86" x2="58.42" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="A3"/>
<wire x1="134.62" y1="50.8" x2="129.54" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X10" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y2"/>
<wire x1="58.42" y1="22.86" x2="55.88" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="A2"/>
<wire x1="132.08" y1="50.8" x2="127" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X9" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y1"/>
<wire x1="55.88" y1="22.86" x2="53.34" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="A1"/>
<wire x1="129.54" y1="50.8" x2="124.46" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X8" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="Y0"/>
<wire x1="53.34" y1="22.86" x2="50.8" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="A0"/>
<wire x1="127" y1="50.8" x2="121.92" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY0" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A0"/>
<wire x1="20.32" y1="-2.54" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A0"/>
<wire x1="91.44" y1="-2.54" x2="88.9" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY1" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A1"/>
<wire x1="22.86" y1="-2.54" x2="20.32" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A1"/>
<wire x1="93.98" y1="-2.54" x2="91.44" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY2" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A2"/>
<wire x1="25.4" y1="-2.54" x2="22.86" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A2"/>
<wire x1="96.52" y1="-2.54" x2="93.98" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY3" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A3"/>
<wire x1="27.94" y1="-2.54" x2="25.4" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A3"/>
<wire x1="99.06" y1="-2.54" x2="96.52" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY7" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A7"/>
<wire x1="38.1" y1="-2.54" x2="35.56" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A7"/>
<wire x1="109.22" y1="-2.54" x2="106.68" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY6" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A6"/>
<wire x1="35.56" y1="-2.54" x2="33.02" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A6"/>
<wire x1="106.68" y1="-2.54" x2="104.14" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY5" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A5"/>
<wire x1="33.02" y1="-2.54" x2="30.48" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A5"/>
<wire x1="104.14" y1="-2.54" x2="101.6" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY4" class="0">
<segment>
<pinref part="LAT14" gate="G$1" pin="A4"/>
<wire x1="30.48" y1="-2.54" x2="27.94" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="A4"/>
<wire x1="101.6" y1="-2.54" x2="99.06" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY8" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A0"/>
<wire x1="53.34" y1="-2.54" x2="50.8" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A0"/>
<wire x1="124.46" y1="-2.54" x2="121.92" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY9" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A1"/>
<wire x1="55.88" y1="-2.54" x2="53.34" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A1"/>
<wire x1="127" y1="-2.54" x2="124.46" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY10" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A2"/>
<wire x1="55.88" y1="-5.08" x2="58.42" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A2"/>
<wire x1="127" y1="-5.08" x2="129.54" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY11" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A3"/>
<wire x1="60.96" y1="-2.54" x2="58.42" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A3"/>
<wire x1="132.08" y1="-2.54" x2="129.54" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY12" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A4"/>
<wire x1="63.5" y1="-2.54" x2="60.96" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A4"/>
<wire x1="134.62" y1="-2.54" x2="132.08" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY13" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A5"/>
<wire x1="66.04" y1="-2.54" x2="63.5" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A5"/>
<wire x1="137.16" y1="-2.54" x2="134.62" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY14" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A6"/>
<wire x1="68.58" y1="-2.54" x2="66.04" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A6"/>
<wire x1="139.7" y1="-2.54" x2="137.16" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY15" class="0">
<segment>
<pinref part="LAT15" gate="G$1" pin="A7"/>
<wire x1="71.12" y1="-2.54" x2="68.58" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="A7"/>
<wire x1="142.24" y1="-2.54" x2="139.7" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y15" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="B3"/>
<wire x1="198.12" y1="50.8" x2="190.5" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y7"/>
<wire x1="142.24" y1="22.86" x2="139.7" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y14" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="B2"/>
<wire x1="195.58" y1="50.8" x2="187.96" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y6"/>
<wire x1="139.7" y1="22.86" x2="137.16" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y13" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="B1"/>
<wire x1="193.04" y1="50.8" x2="185.42" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y5"/>
<wire x1="137.16" y1="22.86" x2="134.62" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y12" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="B0"/>
<wire x1="190.5" y1="50.8" x2="182.88" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y4"/>
<wire x1="134.62" y1="22.86" x2="132.08" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y11" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="B3"/>
<wire x1="147.32" y1="50.8" x2="139.7" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y3"/>
<wire x1="132.08" y1="22.86" x2="129.54" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y10" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="B2"/>
<wire x1="144.78" y1="50.8" x2="137.16" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y2"/>
<wire x1="129.54" y1="22.86" x2="127" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y9" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="B1"/>
<wire x1="142.24" y1="50.8" x2="134.62" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y1"/>
<wire x1="127" y1="22.86" x2="124.46" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y8" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="B0"/>
<wire x1="139.7" y1="50.8" x2="132.08" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT17" gate="G$1" pin="Y0"/>
<wire x1="124.46" y1="22.86" x2="121.92" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y7" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="B3"/>
<wire x1="96.52" y1="50.8" x2="88.9" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y7"/>
<wire x1="109.22" y1="22.86" x2="106.68" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y6" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="B2"/>
<wire x1="93.98" y1="50.8" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y6"/>
<wire x1="106.68" y1="22.86" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y5" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="B1"/>
<wire x1="91.44" y1="50.8" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y5"/>
<wire x1="104.14" y1="22.86" x2="101.6" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y4" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="B0"/>
<wire x1="88.9" y1="50.8" x2="81.28" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y4"/>
<wire x1="101.6" y1="22.86" x2="99.06" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y3" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="B3"/>
<wire x1="45.72" y1="50.8" x2="38.1" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y3"/>
<wire x1="99.06" y1="22.86" x2="96.52" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y2" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="B2"/>
<wire x1="43.18" y1="50.8" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y2"/>
<wire x1="96.52" y1="22.86" x2="93.98" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y1" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="B1"/>
<wire x1="40.64" y1="50.8" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y1"/>
<wire x1="93.98" y1="22.86" x2="91.44" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y0" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="B0"/>
<wire x1="38.1" y1="50.8" x2="30.48" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LAT16" gate="G$1" pin="Y0"/>
<wire x1="91.44" y1="22.86" x2="88.9" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="CN+4"/>
<wire x1="45.72" y1="76.2" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<wire x1="48.26" y1="76.2" x2="50.8" y2="76.2" width="0.1524" layer="91"/>
<wire x1="50.8" y1="76.2" x2="50.8" y2="50.8" width="0.1524" layer="91"/>
<pinref part="ALU2" gate="G$1" pin="CN"/>
<wire x1="50.8" y1="50.8" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$131" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="CN+4"/>
<wire x1="147.32" y1="76.2" x2="152.4" y2="76.2" width="0.1524" layer="91"/>
<wire x1="152.4" y1="76.2" x2="152.4" y2="50.8" width="0.1524" layer="91"/>
<pinref part="ALU4" gate="G$1" pin="CN"/>
<wire x1="152.4" y1="50.8" x2="157.48" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$132" class="0">
<segment>
<pinref part="CLAG1" gate="G$1" pin="P0"/>
<wire x1="91.44" y1="93.98" x2="91.44" y2="88.9" width="0.1524" layer="91"/>
<pinref part="ALU1" gate="G$1" pin="PG"/>
<wire x1="91.44" y1="88.9" x2="40.64" y2="88.9" width="0.1524" layer="91"/>
<wire x1="40.64" y1="88.9" x2="40.64" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$133" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="GG"/>
<wire x1="43.18" y1="76.2" x2="43.18" y2="86.36" width="0.1524" layer="91"/>
<pinref part="CLAG1" gate="G$1" pin="G0"/>
<wire x1="43.18" y1="86.36" x2="93.98" y2="86.36" width="0.1524" layer="91"/>
<wire x1="93.98" y1="86.36" x2="93.98" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$134" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="PG"/>
<wire x1="91.44" y1="76.2" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<wire x1="91.44" y1="83.82" x2="96.52" y2="83.82" width="0.1524" layer="91"/>
<pinref part="CLAG1" gate="G$1" pin="P1"/>
<wire x1="96.52" y1="83.82" x2="96.52" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$135" class="0">
<segment>
<pinref part="CLAG1" gate="G$1" pin="G1"/>
<wire x1="99.06" y1="93.98" x2="99.06" y2="81.28" width="0.1524" layer="91"/>
<wire x1="99.06" y1="81.28" x2="93.98" y2="81.28" width="0.1524" layer="91"/>
<pinref part="ALU2" gate="G$1" pin="GG"/>
<wire x1="93.98" y1="81.28" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$136" class="0">
<segment>
<pinref part="CLAG1" gate="G$1" pin="G3"/>
<wire x1="109.22" y1="93.98" x2="109.22" y2="91.44" width="0.1524" layer="91"/>
<pinref part="ALU4" gate="G$1" pin="GG"/>
<wire x1="109.22" y1="91.44" x2="195.58" y2="91.44" width="0.1524" layer="91"/>
<wire x1="195.58" y1="91.44" x2="195.58" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$137" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="PG"/>
<wire x1="193.04" y1="76.2" x2="193.04" y2="88.9" width="0.1524" layer="91"/>
<pinref part="CLAG1" gate="G$1" pin="P3"/>
<wire x1="193.04" y1="88.9" x2="106.68" y2="88.9" width="0.1524" layer="91"/>
<wire x1="106.68" y1="88.9" x2="106.68" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$138" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="GG"/>
<wire x1="144.78" y1="76.2" x2="144.78" y2="86.36" width="0.1524" layer="91"/>
<pinref part="CLAG1" gate="G$1" pin="G2"/>
<wire x1="144.78" y1="86.36" x2="104.14" y2="86.36" width="0.1524" layer="91"/>
<wire x1="104.14" y1="86.36" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$139" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="PG"/>
<wire x1="142.24" y1="76.2" x2="142.24" y2="83.82" width="0.1524" layer="91"/>
<pinref part="CLAG1" gate="G$1" pin="P2"/>
<wire x1="142.24" y1="83.82" x2="101.6" y2="83.82" width="0.1524" layer="91"/>
<wire x1="101.6" y1="83.82" x2="101.6" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z0" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="F0"/>
<wire x1="25.4" y1="76.2" x2="22.86" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z1" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="F1"/>
<wire x1="27.94" y1="76.2" x2="25.4" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z2" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="F2"/>
<wire x1="30.48" y1="76.2" x2="27.94" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z3" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="F3"/>
<wire x1="33.02" y1="76.2" x2="30.48" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z4" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="F0"/>
<wire x1="76.2" y1="76.2" x2="73.66" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z5" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="F1"/>
<wire x1="78.74" y1="76.2" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z6" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="F2"/>
<wire x1="81.28" y1="76.2" x2="78.74" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z7" class="0">
<segment>
<pinref part="ALU2" gate="G$1" pin="F3"/>
<wire x1="83.82" y1="76.2" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z8" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="F0"/>
<wire x1="127" y1="76.2" x2="124.46" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z9" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="F1"/>
<wire x1="129.54" y1="76.2" x2="127" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z10" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="F2"/>
<wire x1="132.08" y1="76.2" x2="129.54" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z11" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="F3"/>
<wire x1="134.62" y1="76.2" x2="132.08" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z12" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="F0"/>
<wire x1="177.8" y1="76.2" x2="175.26" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z13" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="F1"/>
<wire x1="180.34" y1="76.2" x2="177.8" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z14" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="F2"/>
<wire x1="182.88" y1="76.2" x2="180.34" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_Z15" class="0">
<segment>
<pinref part="ALU4" gate="G$1" pin="F3"/>
<wire x1="185.42" y1="76.2" x2="182.88" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$140" class="0">
<segment>
<pinref part="ALU3" gate="G$1" pin="CN"/>
<wire x1="106.68" y1="50.8" x2="101.6" y2="50.8" width="0.1524" layer="91"/>
<wire x1="101.6" y1="50.8" x2="101.6" y2="73.66" width="0.1524" layer="91"/>
<wire x1="101.6" y1="73.66" x2="114.3" y2="73.66" width="0.1524" layer="91"/>
<wire x1="114.3" y1="73.66" x2="114.3" y2="121.92" width="0.1524" layer="91"/>
<wire x1="114.3" y1="121.92" x2="99.06" y2="121.92" width="0.1524" layer="91"/>
<pinref part="CLAG1" gate="G$1" pin="CN+2"/>
<wire x1="99.06" y1="121.92" x2="99.06" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V-" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="CN"/>
<pinref part="SUPPLY6" gate="1" pin="V-"/>
<wire x1="2.54" y1="50.8" x2="5.08" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CLAG1" gate="G$1" pin="CN"/>
<pinref part="SUPPLY7" gate="1" pin="V-"/>
<wire x1="83.82" y1="93.98" x2="86.36" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="DEMUX2" gate="G$1" pin="A0"/>
<wire x1="7.62" y1="-38.1" x2="5.08" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="1" pin="V-"/>
<wire x1="5.08" y1="-33.02" x2="5.08" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="DEMUX2" gate="G$1" pin="A1"/>
<wire x1="7.62" y1="-40.64" x2="5.08" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-35.56" x2="5.08" y2="-38.1" width="0.1524" layer="91"/>
<junction x="5.08" y="-35.56"/>
<pinref part="DEMUX2" gate="G$1" pin="A2"/>
<wire x1="7.62" y1="-43.18" x2="5.08" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-38.1" x2="5.08" y2="-40.64" width="0.1524" layer="91"/>
<junction x="5.08" y="-38.1"/>
<pinref part="DEMUX2" gate="G$1" pin="A7"/>
<wire x1="5.08" y1="-53.34" x2="7.62" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="DEMUX2" gate="G$1" pin="A6"/>
<wire x1="5.08" y1="-50.8" x2="7.62" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-53.34" x2="5.08" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="DEMUX2" gate="G$1" pin="A5"/>
<wire x1="7.62" y1="-50.8" x2="5.08" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-50.8" x2="5.08" y2="-48.26" width="0.1524" layer="91"/>
<junction x="5.08" y="-50.8"/>
<pinref part="DEMUX2" gate="G$1" pin="A4"/>
<wire x1="7.62" y1="-48.26" x2="5.08" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-48.26" x2="5.08" y2="-45.72" width="0.1524" layer="91"/>
<junction x="5.08" y="-48.26"/>
<pinref part="DEMUX2" gate="G$1" pin="A3"/>
<wire x1="7.62" y1="-45.72" x2="5.08" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-45.72" x2="5.08" y2="-43.18" width="0.1524" layer="91"/>
<junction x="5.08" y="-45.72"/>
<wire x1="5.08" y1="-40.64" x2="5.08" y2="-43.18" width="0.1524" layer="91"/>
<junction x="5.08" y="-40.64"/>
<junction x="5.08" y="-43.18"/>
</segment>
<segment>
<wire x1="71.12" y1="-38.1" x2="68.58" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="1" pin="V-"/>
<wire x1="68.58" y1="-33.02" x2="68.58" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-40.64" x2="68.58" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-35.56" x2="68.58" y2="-38.1" width="0.1524" layer="91"/>
<junction x="68.58" y="-35.56"/>
<wire x1="71.12" y1="-43.18" x2="68.58" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-38.1" x2="68.58" y2="-40.64" width="0.1524" layer="91"/>
<junction x="68.58" y="-38.1"/>
<wire x1="68.58" y1="-53.34" x2="71.12" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-50.8" x2="71.12" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-53.34" x2="68.58" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-50.8" x2="68.58" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-50.8" x2="68.58" y2="-48.26" width="0.1524" layer="91"/>
<junction x="68.58" y="-50.8"/>
<wire x1="71.12" y1="-48.26" x2="68.58" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-48.26" x2="68.58" y2="-45.72" width="0.1524" layer="91"/>
<junction x="68.58" y="-48.26"/>
<wire x1="71.12" y1="-45.72" x2="68.58" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-45.72" x2="68.58" y2="-43.18" width="0.1524" layer="91"/>
<junction x="68.58" y="-45.72"/>
<wire x1="68.58" y1="-40.64" x2="68.58" y2="-43.18" width="0.1524" layer="91"/>
<junction x="68.58" y="-40.64"/>
<junction x="68.58" y="-43.18"/>
</segment>
</net>
<net name="MDR8" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H0"/>
<wire x1="50.8" y1="-106.68" x2="53.34" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR9" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H1"/>
<wire x1="50.8" y1="-109.22" x2="53.34" y2="-106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR10" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H2"/>
<wire x1="50.8" y1="-111.76" x2="53.34" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR11" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H3"/>
<wire x1="50.8" y1="-114.3" x2="53.34" y2="-111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR12" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H4"/>
<wire x1="50.8" y1="-116.84" x2="53.34" y2="-114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR13" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H5"/>
<wire x1="50.8" y1="-119.38" x2="53.34" y2="-116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR14" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H6"/>
<wire x1="50.8" y1="-121.92" x2="53.34" y2="-119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDR15" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="H7"/>
<wire x1="53.34" y1="-121.92" x2="50.8" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR16" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G0"/>
<wire x1="50.8" y1="-83.82" x2="53.34" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR17" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G1"/>
<wire x1="50.8" y1="-86.36" x2="53.34" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR18" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G2"/>
<wire x1="50.8" y1="-88.9" x2="53.34" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR19" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G3"/>
<wire x1="50.8" y1="-91.44" x2="53.34" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR20" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G4"/>
<wire x1="50.8" y1="-93.98" x2="53.34" y2="-91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR21" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G5"/>
<wire x1="50.8" y1="-96.52" x2="53.34" y2="-93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR22" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G6"/>
<wire x1="50.8" y1="-99.06" x2="53.34" y2="-96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MAR23" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="G7"/>
<wire x1="53.34" y1="-99.06" x2="50.8" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A16" class="0">
<segment>
<wire x1="7.62" y1="-60.96" x2="5.08" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A17" class="0">
<segment>
<wire x1="7.62" y1="-63.5" x2="5.08" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A18" class="0">
<segment>
<wire x1="7.62" y1="-66.04" x2="5.08" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A19" class="0">
<segment>
<wire x1="7.62" y1="-68.58" x2="5.08" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A20" class="0">
<segment>
<wire x1="7.62" y1="-71.12" x2="5.08" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A21" class="0">
<segment>
<wire x1="7.62" y1="-73.66" x2="5.08" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A22" class="0">
<segment>
<wire x1="5.08" y1="-73.66" x2="7.62" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A23" class="0">
<segment>
<wire x1="5.08" y1="-76.2" x2="7.62" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B16" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C0"/>
<wire x1="7.62" y1="-83.82" x2="5.08" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B17" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C1"/>
<wire x1="7.62" y1="-86.36" x2="5.08" y2="-83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B18" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C2"/>
<wire x1="7.62" y1="-88.9" x2="5.08" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B19" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C3"/>
<wire x1="7.62" y1="-91.44" x2="5.08" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B20" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C4"/>
<wire x1="7.62" y1="-93.98" x2="5.08" y2="-91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B21" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C5"/>
<wire x1="7.62" y1="-96.52" x2="5.08" y2="-93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B22" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C6"/>
<wire x1="7.62" y1="-99.06" x2="5.08" y2="-96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B23" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="C7"/>
<wire x1="5.08" y1="-99.06" x2="7.62" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C16" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D0"/>
<wire x1="7.62" y1="-106.68" x2="5.08" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C17" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D1"/>
<wire x1="7.62" y1="-109.22" x2="5.08" y2="-106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C18" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D2"/>
<wire x1="7.62" y1="-111.76" x2="5.08" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C19" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D3"/>
<wire x1="7.62" y1="-114.3" x2="5.08" y2="-111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C20" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D4"/>
<wire x1="7.62" y1="-116.84" x2="5.08" y2="-114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C21" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D5"/>
<wire x1="7.62" y1="-119.38" x2="5.08" y2="-116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C22" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D6"/>
<wire x1="7.62" y1="-121.92" x2="5.08" y2="-119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C23" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="D7"/>
<wire x1="5.08" y1="-121.92" x2="7.62" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D16" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E0"/>
<wire x1="50.8" y1="-38.1" x2="53.34" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D17" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E1"/>
<wire x1="50.8" y1="-40.64" x2="53.34" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D18" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E2"/>
<wire x1="50.8" y1="-43.18" x2="53.34" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D19" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E3"/>
<wire x1="50.8" y1="-45.72" x2="53.34" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D20" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E4"/>
<wire x1="50.8" y1="-48.26" x2="53.34" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D21" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E5"/>
<wire x1="50.8" y1="-50.8" x2="53.34" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D22" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E6"/>
<wire x1="50.8" y1="-53.34" x2="53.34" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D23" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="E7"/>
<wire x1="53.34" y1="-53.34" x2="50.8" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A24" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B0"/>
<wire x1="71.12" y1="-60.96" x2="68.58" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A25" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B1"/>
<wire x1="71.12" y1="-63.5" x2="68.58" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A26" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B2"/>
<wire x1="71.12" y1="-66.04" x2="68.58" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A27" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B3"/>
<wire x1="71.12" y1="-68.58" x2="68.58" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A28" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B4"/>
<wire x1="71.12" y1="-71.12" x2="68.58" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A29" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B5"/>
<wire x1="71.12" y1="-73.66" x2="68.58" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A30" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B6"/>
<wire x1="71.12" y1="-76.2" x2="68.58" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A31" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="B7"/>
<wire x1="71.12" y1="-78.74" x2="68.58" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY16" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y0"/>
<wire x1="20.32" y1="-132.08" x2="17.78" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY17" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y7"/>
<wire x1="38.1" y1="-132.08" x2="35.56" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY18" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y6"/>
<wire x1="35.56" y1="-132.08" x2="33.02" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY19" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y5"/>
<wire x1="33.02" y1="-132.08" x2="30.48" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY20" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y4"/>
<wire x1="30.48" y1="-132.08" x2="27.94" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY21" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y3"/>
<wire x1="27.94" y1="-132.08" x2="25.4" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY22" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y2"/>
<wire x1="25.4" y1="-132.08" x2="22.86" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY23" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="Y1"/>
<wire x1="22.86" y1="-132.08" x2="20.32" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY24" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y7"/>
<wire x1="99.06" y1="-134.62" x2="101.6" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY25" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y6"/>
<wire x1="96.52" y1="-134.62" x2="99.06" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY26" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y5"/>
<wire x1="96.52" y1="-132.08" x2="93.98" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY27" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y4"/>
<wire x1="93.98" y1="-132.08" x2="91.44" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY28" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y3"/>
<wire x1="91.44" y1="-132.08" x2="88.9" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY29" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y2"/>
<wire x1="88.9" y1="-132.08" x2="86.36" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY30" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y1"/>
<wire x1="86.36" y1="-132.08" x2="83.82" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY31" class="0">
<segment>
<pinref part="DEMUX3" gate="G$1" pin="Y0"/>
<wire x1="83.82" y1="-132.08" x2="81.28" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP7" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F7"/>
<wire x1="50.8" y1="-78.74" x2="53.34" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP6" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F6"/>
<wire x1="53.34" y1="-73.66" x2="50.8" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP5" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F5"/>
<wire x1="53.34" y1="-71.12" x2="50.8" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP4" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F4"/>
<wire x1="50.8" y1="-71.12" x2="53.34" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP3" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F3"/>
<wire x1="50.8" y1="-68.58" x2="53.34" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP2" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F2"/>
<wire x1="50.8" y1="-66.04" x2="53.34" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP1" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F1"/>
<wire x1="50.8" y1="-63.5" x2="53.34" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SP0" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="F0"/>
<wire x1="50.8" y1="-60.96" x2="53.34" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_MODE" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="M"/>
<wire x1="10.16" y1="50.8" x2="7.62" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="M"/>
<wire x1="60.96" y1="50.8" x2="58.42" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="M"/>
<wire x1="111.76" y1="50.8" x2="109.22" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="M"/>
<wire x1="160.02" y1="48.26" x2="162.56" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP0" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="S0"/>
<wire x1="12.7" y1="50.8" x2="10.16" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="S0"/>
<wire x1="63.5" y1="50.8" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="S0"/>
<wire x1="114.3" y1="50.8" x2="111.76" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="S0"/>
<wire x1="165.1" y1="50.8" x2="162.56" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP1" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="S1"/>
<wire x1="15.24" y1="50.8" x2="12.7" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="S1"/>
<wire x1="66.04" y1="50.8" x2="63.5" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="S1"/>
<wire x1="116.84" y1="50.8" x2="114.3" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="S1"/>
<wire x1="167.64" y1="50.8" x2="165.1" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP2" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="S2"/>
<wire x1="17.78" y1="50.8" x2="15.24" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="S2"/>
<wire x1="68.58" y1="50.8" x2="66.04" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="S2"/>
<wire x1="119.38" y1="50.8" x2="116.84" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="S2"/>
<wire x1="170.18" y1="50.8" x2="167.64" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALU_OP3" class="0">
<segment>
<pinref part="ALU1" gate="G$1" pin="S3"/>
<wire x1="20.32" y1="50.8" x2="17.78" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU2" gate="G$1" pin="S3"/>
<wire x1="71.12" y1="50.8" x2="68.58" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU3" gate="G$1" pin="S3"/>
<wire x1="121.92" y1="50.8" x2="119.38" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ALU4" gate="G$1" pin="S3"/>
<wire x1="172.72" y1="50.8" x2="170.18" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY_SRC1" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="SEL1"/>
<wire x1="30.48" y1="-30.48" x2="27.94" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="DEMUX3" gate="G$1" pin="SEL1"/>
<wire x1="93.98" y1="-30.48" x2="91.44" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY_SRC0" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="SEL0"/>
<wire x1="27.94" y1="-30.48" x2="25.4" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="DEMUX3" gate="G$1" pin="SEL0"/>
<wire x1="91.44" y1="-30.48" x2="88.9" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="XY_SRC2" class="0">
<segment>
<pinref part="DEMUX2" gate="G$1" pin="SEL2"/>
<wire x1="33.02" y1="-30.48" x2="30.48" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="DEMUX3" gate="G$1" pin="SEL2"/>
<wire x1="96.52" y1="-30.48" x2="93.98" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
