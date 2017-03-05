/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

nowarnings	% Special compiler directive; ignore for the moment

predicates
  run - nondeterm () % -> memberi tahu compiler bahwa predikat tersebut ada output tp yang didalam kurung.

clauses
  run:- %jalankan jika
	write("*************** Hello World Program **********************"),nl, % ->menulis (hello world program), next line(garis baru)
	write("Hello World (first)"),nl, 
	readchar(_).

  run:-
	write("Hello World (second)"),nl,
	readchar(_).
	
goal	
  run.	/* This is an internal goal. */
