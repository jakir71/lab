DSCH 2.7f
VERSION 10/31/2023 10:52:10 PM
BB(-174,-185,244,65)
SYM  #pmos
BB(-10,-165,10,-145)
TITLE 5 -160  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(-9,-160,19,15,r)
VIS 2
PIN(10,-165,0.000,0.000)s
PIN(-10,-155,0.000,0.000)g
PIN(10,-145,0.030,0.210)d
LIG(-10,-155,-4,-155)
LIG(-2,-155,-2,-155)
LIG(0,-149,0,-161)
LIG(2,-149,2,-161)
LIG(10,-161,2,-161)
LIG(10,-165,10,-161)
LIG(10,-149,2,-149)
LIG(10,-145,10,-149)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(70,-165,90,-145)
TITLE 85 -160  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(71,-160,19,15,r)
VIS 2
PIN(90,-165,0.000,0.000)s
PIN(70,-155,0.000,0.000)g
PIN(90,-145,0.030,0.210)d
LIG(70,-155,76,-155)
LIG(78,-155,78,-155)
LIG(80,-149,80,-161)
LIG(82,-149,82,-161)
LIG(90,-161,82,-161)
LIG(90,-165,90,-161)
LIG(90,-149,82,-149)
LIG(90,-145,90,-149)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-10,-115,10,-95)
TITLE 5 -110  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(-9,-110,19,15,r)
VIS 2
PIN(10,-115,0.000,0.000)s
PIN(-10,-105,0.000,0.000)g
PIN(10,-95,0.030,0.280)d
LIG(-10,-105,-4,-105)
LIG(-2,-105,-2,-105)
LIG(0,-99,0,-111)
LIG(2,-99,2,-111)
LIG(10,-111,2,-111)
LIG(10,-115,10,-111)
LIG(10,-99,2,-99)
LIG(10,-95,10,-99)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(70,-115,90,-95)
TITLE 85 -110  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(71,-110,19,15,r)
VIS 2
PIN(90,-115,0.000,0.000)s
PIN(70,-105,0.000,0.000)g
PIN(90,-95,0.030,0.280)d
LIG(70,-105,76,-105)
LIG(78,-105,78,-105)
LIG(80,-99,80,-111)
LIG(82,-99,82,-111)
LIG(90,-111,82,-111)
LIG(90,-115,90,-111)
LIG(90,-99,82,-99)
LIG(90,-95,90,-99)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-10,-50,10,-30)
TITLE 5 -45  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(-9,-45,19,15,r)
VIS 2
PIN(10,-30,0.000,0.000)s
PIN(-10,-40,0.000,0.000)g
PIN(10,-50,0.030,0.280)d
LIG(0,-40,-10,-40)
LIG(0,-34,0,-46)
LIG(2,-34,2,-46)
LIG(10,-46,2,-46)
LIG(10,-50,10,-46)
LIG(10,-34,2,-34)
LIG(10,-30,10,-34)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(70,-50,90,-30)
TITLE 85 -45  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(71,-45,19,15,r)
VIS 2
PIN(90,-30,0.000,0.000)s
PIN(70,-40,0.000,0.000)g
PIN(90,-50,0.030,0.280)d
LIG(80,-40,70,-40)
LIG(80,-34,80,-46)
LIG(82,-34,82,-46)
LIG(90,-46,82,-46)
LIG(90,-50,90,-46)
LIG(90,-34,82,-34)
LIG(90,-30,90,-34)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-10,-30,10,-10)
TITLE 5 -25  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(-9,-25,19,15,r)
VIS 2
PIN(10,-10,0.000,0.000)s
PIN(-10,-20,0.000,0.000)g
PIN(10,-30,0.030,0.070)d
LIG(0,-20,-10,-20)
LIG(0,-14,0,-26)
LIG(2,-14,2,-26)
LIG(10,-26,2,-26)
LIG(10,-30,10,-26)
LIG(10,-14,2,-14)
LIG(10,-10,10,-14)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(70,-30,90,-10)
TITLE 85 -25  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(71,-25,19,15,r)
VIS 2
PIN(90,-10,0.000,0.000)s
PIN(70,-20,0.000,0.000)g
PIN(90,-30,0.030,0.070)d
LIG(80,-20,70,-20)
LIG(80,-14,80,-26)
LIG(82,-14,82,-26)
LIG(90,-26,82,-26)
LIG(90,-30,90,-26)
LIG(90,-14,82,-14)
LIG(90,-10,90,-14)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #button1
BB(-94,-174,-85,-166)
TITLE -90 -170  #button
MODEL 59
PROP                                                                                                                                   
REC(-93,-173,6,6,r)
VIS 1
PIN(-85,-170,0.000,0.000)in1
LIG(-86,-170,-85,-170)
LIG(-94,-166,-94,-174)
LIG(-86,-166,-94,-166)
LIG(-86,-174,-86,-166)
LIG(-94,-174,-86,-174)
LIG(-93,-167,-93,-173)
LIG(-87,-167,-93,-167)
LIG(-87,-173,-87,-167)
LIG(-93,-173,-87,-173)
FSYM
SYM  #button2
BB(-174,-174,-165,-166)
TITLE -170 -170  #button
MODEL 59
PROP                                                                                                                                   
REC(-173,-173,6,6,r)
VIS 1
PIN(-165,-170,0.000,0.000)in2
LIG(-166,-170,-165,-170)
LIG(-174,-166,-174,-174)
LIG(-166,-166,-174,-166)
LIG(-166,-174,-166,-166)
LIG(-174,-174,-166,-174)
LIG(-173,-167,-173,-173)
LIG(-167,-167,-173,-167)
LIG(-167,-173,-167,-167)
LIG(-173,-173,-167,-173)
FSYM
SYM  #vss
BB(55,-8,65,0)
TITLE 59 -3  #vss
MODEL 0
PROP                                                                                                                                    
REC(55,-10,0,0,b)
VIS 0
PIN(60,-10,0.000,0.000)vss
LIG(60,-10,60,-5)
LIG(55,-5,65,-5)
LIG(55,-2,57,-5)
LIG(57,-2,59,-5)
LIG(59,-2,61,-5)
LIG(61,-2,63,-5)
FSYM
SYM  #light1
BB(238,-85,244,-71)
TITLE 240 -71  #light
MODEL 49
PROP                                                                                                                                   
REC(239,-84,4,4,r)
VIS 1
PIN(240,-70,0.000,0.000)out1
LIG(243,-79,243,-84)
LIG(243,-84,242,-85)
LIG(239,-84,239,-79)
LIG(242,-74,242,-77)
LIG(241,-74,244,-74)
LIG(241,-72,243,-74)
LIG(242,-72,244,-74)
LIG(238,-77,244,-77)
LIG(240,-77,240,-70)
LIG(238,-79,238,-77)
LIG(244,-79,238,-79)
LIG(244,-77,244,-79)
LIG(240,-85,239,-84)
LIG(242,-85,240,-85)
FSYM
SYM  #vdd
BB(50,-175,60,-165)
TITLE 53 -169  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(55,-165,0.000,0.000)vdd
LIG(55,-165,55,-170)
LIG(55,-170,50,-170)
LIG(50,-170,55,-175)
LIG(55,-175,60,-170)
LIG(60,-170,55,-170)
FSYM
SYM  #inv
BB(-85,-130,-50,-110)
TITLE -70 -120  #~
MODEL 101
PROP                                                                                                                                   
REC(0,-20,0,0, )
VIS 0
PIN(-85,-120,0.000,0.000)in
PIN(-50,-120,0.030,0.140)out
LIG(-85,-120,-75,-120)
LIG(-75,-130,-75,-110)
LIG(-75,-130,-60,-120)
LIG(-75,-110,-60,-120)
LIG(-58,-120,-58,-120)
LIG(-56,-120,-50,-120)
VLG  not not1(out,in);
FSYM
SYM  #inv
BB(-165,-65,-130,-45)
TITLE -150 -55  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(-165,-55,0.000,0.000)in
PIN(-130,-55,0.030,0.140)out
LIG(-165,-55,-155,-55)
LIG(-155,-65,-155,-45)
LIG(-155,-65,-140,-55)
LIG(-155,-45,-140,-55)
LIG(-138,-55,-138,-55)
LIG(-136,-55,-130,-55)
VLG  not not1(out,in);
FSYM
CNC(45 -145)
CNC(45 -115)
CNC(50 -95)
CNC(50 -50)
CNC(50 -70)
CNC(-85 -105)
CNC(-165 -150)
CNC(-165 -20)
CNC(-85 10)
LIG(-165,-170,-165,-150)
LIG(-85,-170,-85,-105)
LIG(10,-165,90,-165)
LIG(10,-145,45,-145)
LIG(10,-115,45,-115)
LIG(10,-95,50,-95)
LIG(45,-145,45,-115)
LIG(45,-145,90,-145)
LIG(45,-115,90,-115)
LIG(10,-50,50,-50)
LIG(10,-10,90,-10)
LIG(50,-95,50,-70)
LIG(50,-95,90,-95)
LIG(50,-50,90,-50)
LIG(50,-70,240,-70)
LIG(50,-70,50,-50)
LIG(-10,-105,-85,-105)
LIG(-85,-105,-85,10)
LIG(-50,-155,-50,-40)
LIG(-50,-155,-10,-155)
LIG(-165,-150,-125,-150)
LIG(-165,-150,-165,-20)
LIG(-125,-150,-125,-185)
LIG(70,45,-130,45)
LIG(70,-155,70,-185)
LIG(-125,-185,70,-185)
LIG(-130,-55,-25,-55)
LIG(-25,-55,-25,-75)
LIG(-25,-75,40,-75)
LIG(40,-75,40,-105)
LIG(70,-105,40,-105)
LIG(-130,-55,-130,45)
LIG(-10,-40,-50,-40)
LIG(-10,-20,-165,-20)
LIG(-165,-20,-165,65)
LIG(-85,10,45,10)
LIG(-85,10,-85,65)
LIG(45,10,45,-40)
LIG(70,-40,45,-40)
LIG(70,-20,70,45)
FFIG F:\Online Class\4-2\8th semestar\VLSI\vlsi mine\XNOR.sch
