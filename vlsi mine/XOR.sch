DSCH 2.7f
VERSION 10/31/2023 10:27:25 PM
BB(-184,-190,169,65)
SYM  #inv
BB(-175,-60,-140,-40)
TITLE -160 -50  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(-175,-50,0.000,0.000)in
PIN(-140,-50,0.030,0.140)out
LIG(-175,-50,-165,-50)
LIG(-165,-60,-165,-40)
LIG(-165,-60,-150,-50)
LIG(-165,-40,-150,-50)
LIG(-148,-50,-148,-50)
LIG(-146,-50,-140,-50)
VLG  not not1(out,in);
FSYM
SYM  #button4
BB(-184,-174,-175,-166)
TITLE -180 -170  #button
MODEL 59
PROP                                                                                                                                   
REC(-183,-173,6,6,r)
VIS 1
PIN(-175,-170,0.000,0.000)in4
LIG(-176,-170,-175,-170)
LIG(-184,-166,-184,-174)
LIG(-176,-166,-184,-166)
LIG(-176,-174,-176,-166)
LIG(-184,-174,-176,-174)
LIG(-183,-167,-183,-173)
LIG(-177,-167,-183,-167)
LIG(-177,-173,-177,-167)
LIG(-183,-173,-177,-173)
FSYM
SYM  #button3
BB(-129,-174,-120,-166)
TITLE -125 -170  #button
MODEL 59
PROP                                                                                                                                   
REC(-128,-173,6,6,r)
VIS 1
PIN(-120,-170,0.000,0.000)in3
LIG(-121,-170,-120,-170)
LIG(-129,-166,-129,-174)
LIG(-121,-166,-129,-166)
LIG(-121,-174,-121,-166)
LIG(-129,-174,-121,-174)
LIG(-128,-167,-128,-173)
LIG(-122,-167,-128,-167)
LIG(-122,-173,-122,-167)
LIG(-128,-173,-122,-173)
FSYM
SYM  #nmos
BB(50,-5,70,15)
TITLE 65 0  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(51,0,19,15,r)
VIS 2
PIN(70,15,0.000,0.000)s
PIN(50,5,0.000,0.000)g
PIN(70,-5,0.030,0.210)d
LIG(60,5,50,5)
LIG(60,11,60,-1)
LIG(62,11,62,-1)
LIG(70,-1,62,-1)
LIG(70,-5,70,-1)
LIG(70,11,62,11)
LIG(70,15,70,11)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-65,-5,-45,15)
TITLE -50 0  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(-64,0,19,15,r)
VIS 2
PIN(-45,15,0.000,0.000)s
PIN(-65,5,0.000,0.000)g
PIN(-45,-5,0.030,0.210)d
LIG(-55,5,-65,5)
LIG(-55,11,-55,-1)
LIG(-53,11,-53,-1)
LIG(-45,-1,-53,-1)
LIG(-45,-5,-45,-1)
LIG(-45,11,-53,11)
LIG(-45,15,-45,11)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(50,-55,70,-35)
TITLE 65 -50  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(51,-50,19,15,r)
VIS 2
PIN(70,-35,0.000,0.000)s
PIN(50,-45,0.000,0.000)g
PIN(70,-55,0.030,0.280)d
LIG(60,-45,50,-45)
LIG(60,-39,60,-51)
LIG(62,-39,62,-51)
LIG(70,-51,62,-51)
LIG(70,-55,70,-51)
LIG(70,-39,62,-39)
LIG(70,-35,70,-39)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-65,-55,-45,-35)
TITLE -50 -50  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(-64,-50,19,15,r)
VIS 2
PIN(-45,-35,0.000,0.000)s
PIN(-65,-45,0.000,0.000)g
PIN(-45,-55,0.030,0.280)d
LIG(-55,-45,-65,-45)
LIG(-55,-39,-55,-51)
LIG(-53,-39,-53,-51)
LIG(-45,-51,-53,-51)
LIG(-45,-55,-45,-51)
LIG(-45,-39,-53,-39)
LIG(-45,-35,-45,-39)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(30,-150,50,-130)
TITLE 45 -145  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(31,-145,19,15,r)
VIS 2
PIN(50,-150,0.000,0.000)s
PIN(30,-140,0.000,0.000)g
PIN(50,-130,0.030,0.280)d
LIG(30,-140,36,-140)
LIG(38,-140,38,-140)
LIG(40,-134,40,-146)
LIG(42,-134,42,-146)
LIG(50,-146,42,-146)
LIG(50,-150,50,-146)
LIG(50,-134,42,-134)
LIG(50,-130,50,-134)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(30,-170,50,-150)
TITLE 45 -165  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(31,-165,19,15,r)
VIS 2
PIN(50,-170,0.000,0.000)s
PIN(30,-160,0.000,0.000)g
PIN(50,-150,0.030,0.070)d
LIG(30,-160,36,-160)
LIG(38,-160,38,-160)
LIG(40,-154,40,-166)
LIG(42,-154,42,-166)
LIG(50,-166,42,-166)
LIG(50,-170,50,-166)
LIG(50,-154,42,-154)
LIG(50,-150,50,-154)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-60,-150,-40,-130)
TITLE -45 -145  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(-59,-145,19,15,r)
VIS 2
PIN(-40,-150,0.000,0.000)s
PIN(-60,-140,0.000,0.000)g
PIN(-40,-130,0.030,0.280)d
LIG(-60,-140,-54,-140)
LIG(-52,-140,-52,-140)
LIG(-50,-134,-50,-146)
LIG(-48,-134,-48,-146)
LIG(-40,-146,-48,-146)
LIG(-40,-150,-40,-146)
LIG(-40,-134,-48,-134)
LIG(-40,-130,-40,-134)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-60,-170,-40,-150)
TITLE -45 -165  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(-59,-165,19,15,r)
VIS 2
PIN(-40,-170,0.000,0.000)s
PIN(-60,-160,0.000,0.000)g
PIN(-40,-150,0.030,0.070)d
LIG(-60,-160,-54,-160)
LIG(-52,-160,-52,-160)
LIG(-50,-154,-50,-166)
LIG(-48,-154,-48,-166)
LIG(-40,-166,-48,-166)
LIG(-40,-170,-40,-166)
LIG(-40,-154,-48,-154)
LIG(-40,-150,-40,-154)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #light2
BB(163,-115,169,-101)
TITLE 165 -101  #light
MODEL 49
PROP                                                                                                                                   
REC(164,-114,4,4,r)
VIS 1
PIN(165,-100,0.000,0.000)out2
LIG(168,-109,168,-114)
LIG(168,-114,167,-115)
LIG(164,-114,164,-109)
LIG(167,-104,167,-107)
LIG(166,-104,169,-104)
LIG(166,-102,168,-104)
LIG(167,-102,169,-104)
LIG(163,-107,169,-107)
LIG(165,-107,165,-100)
LIG(163,-109,163,-107)
LIG(169,-109,163,-109)
LIG(169,-107,169,-109)
LIG(165,-115,164,-114)
LIG(167,-115,165,-115)
FSYM
SYM  #vss
BB(10,17,20,25)
TITLE 14 22  #vss
MODEL 0
PROP                                                                                                                                    
REC(10,15,0,0,b)
VIS 0
PIN(15,15,0.000,0.000)vss
LIG(15,15,15,20)
LIG(10,20,20,20)
LIG(10,23,12,20)
LIG(12,23,14,20)
LIG(14,23,16,20)
LIG(16,23,18,20)
FSYM
SYM  #vdd
BB(0,-180,10,-170)
TITLE 3 -174  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,5,0,0, )
VIS 0
PIN(5,-170,0.000,0.000)vdd
LIG(5,-170,5,-175)
LIG(5,-175,0,-175)
LIG(0,-175,5,-180)
LIG(5,-180,10,-175)
LIG(10,-175,5,-175)
FSYM
SYM  #inv
BB(-120,-95,-85,-75)
TITLE -105 -85  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(-120,-85,0.000,0.000)in
PIN(-85,-85,0.030,0.140)out
LIG(-120,-85,-110,-85)
LIG(-110,-95,-110,-75)
LIG(-110,-95,-95,-85)
LIG(-110,-75,-95,-85)
LIG(-93,-85,-93,-85)
LIG(-91,-85,-85,-85)
VLG  not not1(out,in);
FSYM
CNC(5 -35)
CNC(5 -5)
CNC(5 -130)
CNC(5 -55)
CNC(5 -100)
CNC(-95 -190)
CNC(-175 -140)
CNC(-95 -190)
CNC(-175 -20)
CNC(-120 5)
LIG(-175,-170,-175,-140)
LIG(-120,-190,-120,5)
LIG(-40,-170,50,-170)
LIG(-40,-130,5,-130)
LIG(-45,-55,5,-55)
LIG(-45,-35,5,-35)
LIG(-45,-5,5,-5)
LIG(-45,15,70,15)
LIG(5,-35,5,-5)
LIG(5,-35,70,-35)
LIG(5,-5,70,-5)
LIG(5,-130,5,-100)
LIG(5,-130,50,-130)
LIG(5,-55,70,-55)
LIG(5,-100,165,-100)
LIG(5,-100,5,-55)
LIG(30,-160,30,-190)
LIG(30,-190,-95,-190)
LIG(-175,-140,-175,-20)
LIG(-120,-190,-95,-190)
LIG(-95,-190,-95,-190)
LIG(-85,-160,-85,-45)
LIG(-60,-160,-85,-160)
LIG(-60,-140,-175,-140)
LIG(-140,45,50,45)
LIG(-75,-50,-75,-110)
LIG(-140,-50,-75,-50)
LIG(30,-140,30,-110)
LIG(-75,-110,30,-110)
LIG(-140,-50,-140,45)
LIG(-65,-45,-85,-45)
LIG(50,-45,50,-20)
LIG(50,-20,-175,-20)
LIG(-175,-20,-175,65)
LIG(-65,5,-120,5)
LIG(-120,5,-120,65)
LIG(50,5,50,45)
FFIG F:\Online Class\4-2\8th semestar\VLSI\vlsi mine\XOR.sch
