10 INPUT "Numero: "; a
20 IF a < 78 THEN GOTO 400
30 IF a > 78 THEN GOTO 440
40 IF a = 78 THEN GOTO 490
 
 
400 PRINT "O número e maior!"
410 INPUT "Numero: ";a
420 GOTO 20
 
440 PRINT "O número é menor!"
450 INPUT "Numero: ";a
460 GOTO 20
 
490 PRINT "O número correto é o 78!" 
500 END
