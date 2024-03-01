10 INPUT "Digite o valor de a: "; A
20 INPUT "Digite o valor de b: "; B
30 INPUT "Digite o valor de c: "; C
40 D = B * B - 4 * A * C
50 IF D < 0 THEN GOTO 110
60 IF D = 0 THEN GOTO 90
70 X1 = (-B + SQR(D)) / (2 * A)
80 X2 = (-B - SQR(D)) / (2 * A)
81 PRINT "As raízes da equação são: "
82 PRINT X1 
83 PRINT " e "
84 PRINT X2
85 GOTO 120
90 X = -B / (2 * A)
91 PRINT "A equação possui uma raiz real: "
92 PRINT X
93 GOTO 120
110 PRINT "A equação não possui raízes reais."
120 END