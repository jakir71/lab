DSCH 2.7f
VERSION 10/31/2023 6:40:55 PM
BB(-59,-125,89,-25)
SYM  #pmos
BB(25,-115,45,-95)
TITLE 40 -110  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(26,-110,19,15,r)
VIS 2
PIN(45,-115,0.000,0.000)s
PIN(25,-105,0.000,0.000)g
PIN(45,-95,0.030,0.070)d
LIG(25,-105,31,-105)
LIG(33,-105,33,-105)
LIG(35,-99,35,-111)
LIG(37,-99,37,-111)
LIG(45,-111,37,-111)
LIG(45,-115,45,-111)
LIG(45,-99,37,-99)
LIG(45,-95,45,-99)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(25,-90,45,-70)
TITLE 40 -85  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(26,-85,19,15,r)
VIS 2
PIN(45,-90,0.000,0.000)s
PIN(25,-80,0.000,0.000)g
PIN(45,-70,0.030,0.210)d
LIG(25,-80,31,-80)
LIG(33,-80,33,-80)
LIG(35,-74,35,-86)
LIG(37,-74,37,-86)
LIG(45,-86,37,-86)
LIG(45,-90,45,-86)
LIG(45,-74,37,-74)
LIG(45,-70,45,-74)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(5,-55,25,-35)
TITLE 20 -50  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(6,-50,19,15,r)
VIS 2
PIN(25,-35,0.000,0.000)s
PIN(5,-45,0.000,0.000)g
PIN(25,-55,0.030,0.210)d
LIG(15,-45,5,-45)
LIG(15,-39,15,-51)
LIG(17,-39,17,-51)
LIG(25,-51,17,-51)
LIG(25,-55,25,-51)
LIG(25,-39,17,-39)
LIG(25,-35,25,-39)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(65,-55,85,-35)
TITLE 80 -50  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(66,-50,19,15,r)
VIS 2
PIN(85,-35,0.000,0.000)s
PIN(65,-45,0.000,0.000)g
PIN(85,-55,0.030,0.210)d
LIG(75,-45,65,-45)
LIG(75,-39,75,-51)
LIG(77,-39,77,-51)
LIG(85,-51,77,-51)
LIG(85,-55,85,-51)
LIG(85,-39,77,-39)
LIG(85,-35,85,-39)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #button1
BB(-44,-109,-35,-101)
TITLE -40 -105  #button
MODEL 59
PROP                                                                                                                                   
REC(-43,-108,6,6,r)
VIS 1
PIN(-35,-105,0.000,0.000)in1
LIG(-36,-105,-35,-105)
LIG(-44,-101,-44,-109)
LIG(-36,-101,-44,-101)
LIG(-36,-109,-36,-101)
LIG(-44,-109,-36,-109)
LIG(-43,-102,-43,-108)
LIG(-37,-102,-43,-102)
LIG(-37,-108,-37,-102)
LIG(-43,-108,-37,-108)
FSYM
SYM  #button2
BB(-59,-109,-50,-101)
TITLE -55 -105  #button
MODEL 59
PROP                                                                                                                                   
REC(-58,-108,6,6,r)
VIS 1
PIN(-50,-105,0.000,0.000)in2
LIG(-51,-105,-50,-105)
LIG(-59,-101,-59,-109)
LIG(-51,-101,-59,-101)
LIG(-51,-109,-51,-101)
LIG(-59,-109,-51,-109)
LIG(-58,-102,-58,-108)
LIG(-52,-102,-58,-102)
LIG(-52,-108,-52,-102)
LIG(-58,-108,-52,-108)
FSYM
SYM  #light1
BB(83,-80,89,-66)
TITLE 85 -66  #light
MODEL 49
PROP                                                                                                                                   
REC(84,-79,4,4,r)
VIS 1
PIN(85,-65,0.000,0.000)out1
LIG(88,-74,88,-79)
LIG(88,-79,87,-80)
LIG(84,-79,84,-74)
LIG(87,-69,87,-72)
LIG(86,-69,89,-69)
LIG(86,-67,88,-69)
LIG(87,-67,89,-69)
LIG(83,-72,89,-72)
LIG(85,-72,85,-65)
LIG(83,-74,83,-72)
LIG(89,-74,83,-74)
LIG(89,-72,89,-74)
LIG(85,-80,84,-79)
LIG(87,-80,85,-80)
FSYM
SYM  #vss
BB(40,-33,50,-25)
TITLE 44 -28  #vss
MODEL 0
PROP                                                                                                                                    
REC(40,-35,0,0,b)
VIS 0
PIN(45,-35,0.000,0.000)vss
LIG(45,-35,45,-30)
LIG(40,-30,50,-30)
LIG(40,-27,42,-30)
LIG(42,-27,44,-30)
LIG(44,-27,46,-30)
LIG(46,-27,48,-30)
FSYM
SYM  #vdd
BB(40,-125,50,-115)
TITLE 43 -119  #vdd
MODEL 1
PROP                                                                                                                                   
REC(5,0,0,0, )
VIS 0
PIN(45,-115,0.000,0.000)vdd
LIG(45,-115,45,-120)
LIG(45,-120,40,-120)
LIG(40,-120,45,-125)
LIG(45,-125,50,-120)
LIG(50,-120,45,-120)
FSYM
CNC(-50 -80)
CNC(5 -105)
CNC(45 -55)
CNC(45 -65)
LIG(45,-95,45,-90)
LIG(25,-105,5,-105)
LIG(25,-80,-50,-80)
LIG(-50,-105,-50,-80)
LIG(-50,-80,-50,-25)
LIG(45,-65,45,-55)
LIG(5,-45,5,-105)
LIG(5,-105,-35,-105)
LIG(65,-45,65,-25)
LIG(65,-25,-50,-25)
LIG(45,-65,85,-65)
LIG(25,-55,45,-55)
LIG(25,-35,85,-35)
LIG(45,-70,45,-65)
LIG(45,-55,85,-55)
FFIG F:\Online Class\4-2\8th semestar\VLSI\vlsi mine\NAND.sch
