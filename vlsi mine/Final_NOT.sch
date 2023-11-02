DSCH3
VERSION 1/17/2023 10:37:47 AM
BB(-44,-115,99,-40)
SYM  #pmos
BB(-20,-105,0,-85)
TITLE -5 -100  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(-19,-100,19,15,r)
VIS 2
PIN(0,-105,0.000,0.000)s
PIN(-20,-95,0.000,0.000)g
PIN(0,-85,0.030,0.140)d
LIG(-20,-95,-14,-95)
LIG(-12,-95,-12,-95)
LIG(-10,-89,-10,-101)
LIG(-8,-89,-8,-101)
LIG(0,-101,-8,-101)
LIG(0,-105,0,-101)
LIG(0,-89,-8,-89)
LIG(0,-85,0,-89)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-20,-70,0,-50)
TITLE -5 -65  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(-19,-65,19,15,r)
VIS 2
PIN(0,-50,0.000,0.000)s
PIN(-20,-60,0.000,0.000)g
PIN(0,-70,0.030,0.140)d
LIG(-10,-60,-20,-60)
LIG(-10,-54,-10,-66)
LIG(-8,-54,-8,-66)
LIG(0,-66,-8,-66)
LIG(0,-70,0,-66)
LIG(0,-54,-8,-54)
LIG(0,-50,0,-54)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #light
BB(93,-95,99,-81)
TITLE 95 -81  #light1
MODEL 49
PROP                                                                                                                                   
REC(94,-94,4,4,r)
VIS 1
PIN(95,-80,0.000,0.000)out1
LIG(98,-89,98,-94)
LIG(98,-94,97,-95)
LIG(94,-94,94,-89)
LIG(97,-84,97,-87)
LIG(96,-84,99,-84)
LIG(96,-82,98,-84)
LIG(97,-82,99,-84)
LIG(93,-87,99,-87)
LIG(95,-87,95,-80)
LIG(93,-89,93,-87)
LIG(99,-89,93,-89)
LIG(99,-87,99,-89)
LIG(95,-95,94,-94)
LIG(97,-95,95,-95)
FSYM
SYM  #button
BB(-44,-84,-35,-76)
TITLE -40 -80  #button1
MODEL 59
PROP                                                                                                                                   
REC(-43,-83,6,6,r)
VIS 1
PIN(-35,-80,0.000,0.000)in1
LIG(-36,-80,-35,-80)
LIG(-44,-76,-44,-84)
LIG(-36,-76,-44,-76)
LIG(-36,-84,-36,-76)
LIG(-44,-84,-36,-84)
LIG(-43,-77,-43,-83)
LIG(-37,-77,-43,-77)
LIG(-37,-83,-37,-77)
LIG(-43,-83,-37,-83)
FSYM
SYM  #vdd
BB(-5,-115,5,-105)
TITLE -2 -109  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(0,-105,0.000,0.000)vdd
LIG(0,-105,0,-110)
LIG(0,-110,-5,-110)
LIG(-5,-110,0,-115)
LIG(0,-115,5,-110)
LIG(5,-110,0,-110)
FSYM
SYM  #vss
BB(-5,-48,5,-40)
TITLE -1 -43  #vss
MODEL 0
PROP                                                                                                                                    
REC(-5,-50,0,0,b)
VIS 0
PIN(0,-50,0.000,0.000)vss
LIG(0,-50,0,-45)
LIG(-5,-45,5,-45)
LIG(-5,-42,-3,-45)
LIG(-3,-42,-1,-45)
LIG(-1,-42,1,-45)
LIG(1,-42,3,-45)
FSYM
CNC(0 -80)
CNC(-20 -80)
LIG(0,-85,0,-80)
LIG(0,-80,95,-80)
LIG(0,-80,0,-70)
LIG(-20,-95,-20,-80)
LIG(-35,-80,-20,-80)
LIG(-20,-80,-20,-60)
FFIG E:\8th semestar\VLSI practice\Final_NOT.sch