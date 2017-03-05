/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains %menyatakan jenis suatu variabel
  product,sum = integer %produk dan sum bertipe integer

predicates
  add_em_up(sum,sum,sum) - procedure (i,i,o) %add em up adalah pertambahan jadi menambahkan 3 sum tsb sesuai prosedur, yang inputnya ada 2 dan outputnya 1
  multiply_em(product,product,product) - procedure (i,i,o) %multiply em adalah perkalian jdi mengalikan sesuai prosedur, yang inputnya ada 2 dan outputnya 1
clauses
  add_em_up(X,Y,Sum):- %tambahkan (X,Y,sum) jika
	Sum=X+Y. %sum = X+Y
  multiply_em(X,Y,Product):- %kalikan (X.Y,product) jika
	Product=X*Y. %produk = X*Y
	
goal %tujuan yang dicari adalah pertambahan jadi yang digunakan adalah rumus pertambahan Sum = X+Y
  add_em_up(34,54,Sum).
