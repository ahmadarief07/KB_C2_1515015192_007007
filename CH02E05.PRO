/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/
%simbol                -> tidak perlu petik 2("") diawal kata.
%long 		       -> jenis tipe dasar panjang bit 64.
%integer 	       -> jenis tipe dasar panjang bit 32.
%nondeterm (o,o,o,o,i) -> mempunyai 4 jawaban dan satu inputan.
%car,truck,vehicle     -> mobil,truk, kendaraan
predicates
  car(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
  truck(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
  vehicle(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)

clauses
  car(chrysler,130000,3,red,12000). %mobil
  car(ford,90000,4,gray,25000). %mobil
  car(datsun,8000,1,red,30000). %mobil

  truck(ford,80000,6,blue,8000). %truk 
  truck(datsun,50000,5,orange,20000). %truk
  truck(toyota,25000,2,black,25000). %truk

  vehicle(Make,Odometer,Age,Color,Price):- %kendaraan(pembuat,odometer,usia,warna,harga) jika
	car(Make,Odometer,Age,Color,Price); %mobil(pembuat,odometer,usia,warna,harga)
	truck(Make,Odometer,Age,Color,Price). %truk(pembuat,odometer,usia,warna,harga) 

goal %tujuannya menampilakan spesifikasi mobil dengan harga 25000
  car(Make,Odometer,Years_on_road,Body,25000).
