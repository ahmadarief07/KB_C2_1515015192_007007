/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/
%simbol             -> tidak perlu petik 2("") diawal kata.
%male,female,parent -> pria,wanita,orang tua
%nondeterm (o)      -> memberi tahu compiler bahwa predikat tsb hanya punya output satu.
%nondeterm (o,o)    -> memberi tahu compiler bahwa predikat tsb mempunyai kemungkinan jawaban lebih dari satu.
predicates
  male(symbol) - nondeterm (o)
  female(symbol) - nondeterm (o)
  parent(symbol,symbol) - nondeterm (o,o)
  
clauses
  male(bill). %bill pria
  male(joe). %joe pria

  female(sue). %sue perempuan
  female(tammy). %tammy perempuan

  parent(bill,joe). %bill orang tua joe
  parent(sue,joe). %sue orang tua joe
  parent(joe,tammy). %joe orang tua tammy

goal
  parent(Parent,_). %jawaban menampilkan orang tua
