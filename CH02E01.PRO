/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  likes(symbol,symbol) - nondeterm (i,i)%simbol=tidak perlu petik 2("") diawal kata, nondeterm -> memberi tahu compiler bahwa predikat tsb mempunyai kemungkinan jawaban lebih dari satu.

clauses %klausa
  likes(ellen,tennis). %ellen suka tenis
  likes(john,football). %john suka sepakbola
  likes(tom,baseball). %tom suka baseball
  likes(eric,swimming). %eric suka renang
  likes(mark,tennis). %mark suka tenisi
  likes(bill,Activity):- %bill suka aktivitas  yang sama dengan atau
	likes(ellen, Activity). %aktivitas ellen

goal
  likes(bill,tennis).%jawabannya "yes" karena diklausa ellen suka tenis dan bill menyukai apa yang ellen suka