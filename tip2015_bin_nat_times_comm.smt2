(set-logic HORN)
(declare-datatypes ((Bin_14 0)) (((One_16) (ZeroAnd_14 (projZeroAnd_28 Bin_14)) (OneAnd_14 (projOneAnd_28 Bin_14)))))
(declare-fun diseqBin_14 (Bin_14 Bin_14) Bool)
(declare-fun projZeroAnd_29 (Bin_14 Bin_14) Bool)
(declare-fun projOneAnd_29 (Bin_14 Bin_14) Bool)
(declare-fun isOne_14 (Bin_14) Bool)
(declare-fun isZeroAnd_14 (Bin_14) Bool)
(declare-fun isOneAnd_14 (Bin_14) Bool)
(assert (forall ((x_52341 Bin_14))
	(projZeroAnd_29 x_52341 (ZeroAnd_14 x_52341))))
(assert (forall ((x_52343 Bin_14))
	(projOneAnd_29 x_52343 (OneAnd_14 x_52343))))
(assert (isOne_14 One_16))
(assert (forall ((x_52345 Bin_14))
	(isZeroAnd_14 (ZeroAnd_14 x_52345))))
(assert (forall ((x_52346 Bin_14))
	(isOneAnd_14 (OneAnd_14 x_52346))))
(assert (forall ((x_52347 Bin_14))
	(diseqBin_14 One_16 (ZeroAnd_14 x_52347))))
(assert (forall ((x_52348 Bin_14))
	(diseqBin_14 One_16 (OneAnd_14 x_52348))))
(assert (forall ((x_52349 Bin_14))
	(diseqBin_14 (ZeroAnd_14 x_52349) One_16)))
(assert (forall ((x_52350 Bin_14))
	(diseqBin_14 (OneAnd_14 x_52350) One_16)))
(assert (forall ((x_52351 Bin_14) (x_52352 Bin_14))
	(diseqBin_14 (ZeroAnd_14 x_52351) (OneAnd_14 x_52352))))
(assert (forall ((x_52353 Bin_14) (x_52354 Bin_14))
	(diseqBin_14 (OneAnd_14 x_52353) (ZeroAnd_14 x_52354))))
(assert (forall ((x_52355 Bin_14) (x_52356 Bin_14))
	(=> (diseqBin_14 x_52355 x_52356) (diseqBin_14 (ZeroAnd_14 x_52355) (ZeroAnd_14 x_52356)))))
(assert (forall ((x_52357 Bin_14) (x_52358 Bin_14))
	(=> (diseqBin_14 x_52357 x_52358) (diseqBin_14 (OneAnd_14 x_52357) (OneAnd_14 x_52358)))))
(declare-fun s_398 (Bin_14 Bin_14) Bool)
(assert (forall ((x_52313 Bin_14) (ys_189 Bin_14))
	(=> (s_398 x_52313 ys_189) (s_398 (ZeroAnd_14 x_52313) (OneAnd_14 ys_189)))))
(assert (forall ((xs_572 Bin_14))
	(s_398 (OneAnd_14 xs_572) (ZeroAnd_14 xs_572))))
(assert (s_398 (ZeroAnd_14 One_16) One_16))
(declare-fun plus_128 (Bin_14 Bin_14 Bin_14) Bool)
(assert (forall ((x_52317 Bin_14) (x_52318 Bin_14) (ys_190 Bin_14) (x_52309 Bin_14))
	(=> (and (plus_128 x_52317 x_52309 ys_190) (s_398 x_52318 x_52317)) (plus_128 (ZeroAnd_14 x_52318) (OneAnd_14 x_52309) (OneAnd_14 ys_190)))))
(assert (forall ((x_52320 Bin_14) (zs_65 Bin_14) (x_52309 Bin_14))
	(=> (plus_128 x_52320 x_52309 zs_65) (plus_128 (OneAnd_14 x_52320) (OneAnd_14 x_52309) (ZeroAnd_14 zs_65)))))
(assert (forall ((x_52321 Bin_14) (x_52309 Bin_14))
	(=> (s_398 x_52321 (OneAnd_14 x_52309)) (plus_128 x_52321 (OneAnd_14 x_52309) One_16))))
(assert (forall ((x_52324 Bin_14) (xs_573 Bin_14) (z_1781 Bin_14))
	(=> (plus_128 x_52324 z_1781 xs_573) (plus_128 (OneAnd_14 x_52324) (ZeroAnd_14 z_1781) (OneAnd_14 xs_573)))))
(assert (forall ((x_52326 Bin_14) (ys_191 Bin_14) (z_1781 Bin_14))
	(=> (plus_128 x_52326 z_1781 ys_191) (plus_128 (ZeroAnd_14 x_52326) (ZeroAnd_14 z_1781) (ZeroAnd_14 ys_191)))))
(assert (forall ((x_52327 Bin_14) (z_1781 Bin_14))
	(=> (s_398 x_52327 (ZeroAnd_14 z_1781)) (plus_128 x_52327 (ZeroAnd_14 z_1781) One_16))))
(assert (forall ((x_52329 Bin_14) (y_2001 Bin_14))
	(=> (s_398 x_52329 y_2001) (plus_128 x_52329 One_16 y_2001))))
(declare-fun times_33 (Bin_14 Bin_14 Bin_14) Bool)
(assert (forall ((x_52331 Bin_14) (x_52332 Bin_14) (xs_574 Bin_14) (y_2002 Bin_14))
	(=> (and (times_33 x_52332 xs_574 y_2002) (plus_128 x_52331 (ZeroAnd_14 x_52332) y_2002)) (times_33 x_52331 (OneAnd_14 xs_574) y_2002))))
(assert (forall ((x_52335 Bin_14) (xs_575 Bin_14) (y_2002 Bin_14))
	(=> (times_33 x_52335 xs_575 y_2002) (times_33 (ZeroAnd_14 x_52335) (ZeroAnd_14 xs_575) y_2002))))
(assert (forall ((x_52336 Bin_14))
	(times_33 x_52336 One_16 x_52336)))
(assert (forall ((x_52337 Bin_14) (x_52338 Bin_14) (x_52311 Bin_14) (y_2003 Bin_14))
	(=> (and (diseqBin_14 x_52337 x_52338) (times_33 x_52337 x_52311 y_2003) (times_33 x_52338 y_2003 x_52311)) false)))
(check-sat)
