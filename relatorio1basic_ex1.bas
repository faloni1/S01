10 INPUT "NP1"; np1
20 INPUT "NP2"; np2
30 media1 = (VAL(np1)+ VAL(np2))/2
40 IF media1 >= 60 THEN GOTO 200 
50 IF media1 <= 30 THEN GOTO 220
 
60 INPUT "Digite a NP3"; np3
70 media2 = (VAL(media1) + VAL(np3))/2
80 IF media2 >= 50 THEN GOTO 300 
90 IF media1 < 50 THEN GOTO 320

200 PRINT "Aprovado direto" 
210 GOTO 340
220 PRINT "Reprovado direto" 
230 GOTO 340
 
300 PRINT "Aprovado pela NP3"
310 GOTO 340
320 PRINT "Reprovado na NP3"
330 GOTO 340
340 END
