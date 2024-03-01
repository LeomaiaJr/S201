10 N = RND(10)
30 F = 1
40 I = 1
50 IF I > N THEN GOTO 90
60 F = F * I
70 I = I + 1
71 PRINT I
80 GOTO 50
90 PRINT "O fatorial do numero aleatorio"
100 PRINT N
110 PRINT "é"
120 PRINT F