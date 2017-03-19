DOMAINS
	mahasiswa, matakuliah = symbol
	nilai	  = string
	
PREDICATES
	nondeterm intelejensi_buatan(mahasiswa,nilai)
	nondeterm pde(mahasiswa,nilai)
	nondeterm sistem_operasi(mahasiswa,nilai)
	nondeterm mahasiswa(mahasiswa)
	nondeterm lulus(mahasiswa)
	nondeterm tidak_lulus(mahasiswa)
	nondeterm matakuliah(matakuliah)
CLAUSES
	intelejensi_buatan(irfan,"A").
	intelejensi_buatan(komeng,"D").
	intelejensi_buatan(dati,"C").
	intelejensi_buatan(fatima,"B").
	intelejensi_buatan(maspion,"C").
	
	pde(ricky,"E").
	pde(embang,"A").
	pde(salmin,"D").
	pde(vina,"B").
	pde(sondang,"C").
	
	sistem_operasi(pamuji,"D").
	sistem_operasi(luki,"E").
	sistem_operasi(sadek,"B").
	sistem_operasi(yusida,"A").
	sistem_operasi(eka,"A").
	
	matakuliah(intelejensi_buatan).
	matakuliah(pde).
	matakuliah(sistem_operasi).
	
	lulus(irfan). lulus(dati). lulus(fatima). lulus(maspion). lulus(embang).
	lulus(vina). lulus(sondang). lulus(sadek). lulus(yusida). lulus(eka).
	
	tidak_lulus(komeng). tidak_lulus(salmin). 
	tidak_lulus(pamuji). tidak_lulus(luki).

	mahasiswa(irfan).
	mahasiswa(komeng).
	mahasiswa(dati).
	mahasiswa(fatima).
	mahasiswa(maspion).
	mahasiswa(ricky).
	mahasiswa(embang).
	mahasiswa(salmin).
	mahasiswa(vina).
	mahasiswa(sondang).
	mahasiswa(pamuji).
	mahasiswa(luki).
	mahasiswa(sadek).
	mahasiswa(yusida).
	mahasiswa(eka).
	
GOAL	
	intelejensi_buatan(Intelejensi_Buatan,_);
	tidak_lulus(Tidak_Lulus);
	lulus(Lulus);
	matakuliah(Matakuliah_yang_diajarkan);
	mahasiswa(Nama_Mahasiswa).