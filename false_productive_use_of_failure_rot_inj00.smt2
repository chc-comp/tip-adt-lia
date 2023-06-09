(set-logic HORN)
(define-fun S_533 ((x Int)) Int (+ x 1))
(define-fun Z_2295 () Int 0)
(declare-datatypes ((Bool_382 0)) (((false_382) (true_382))))
(declare-fun diseqBool_174 (Bool_382 Bool_382) Bool)
(declare-fun isfalse_174 (Bool_382) Bool)
(declare-fun istrue_174 (Bool_382) Bool)
(assert (isfalse_174 false_382))
(assert (istrue_174 true_382))
(assert (diseqBool_174 false_382 true_382))
(assert (diseqBool_174 true_382 false_382))
(declare-fun and_383 (Bool_382 Bool_382 Bool_382) Bool)
(declare-fun or_394 (Bool_382 Bool_382 Bool_382) Bool)
(declare-fun hence_382 (Bool_382 Bool_382 Bool_382) Bool)
(declare-fun not_387 (Bool_382 Bool_382) Bool)
(assert (and_383 false_382 false_382 false_382))
(assert (and_383 false_382 true_382 false_382))
(assert (and_383 false_382 false_382 true_382))
(assert (and_383 true_382 true_382 true_382))
(assert (or_394 false_382 false_382 false_382))
(assert (or_394 true_382 true_382 false_382))
(assert (or_394 true_382 false_382 true_382))
(assert (or_394 true_382 true_382 true_382))
(assert (hence_382 true_382 false_382 false_382))
(assert (hence_382 false_382 true_382 false_382))
(assert (hence_382 true_382 false_382 true_382))
(assert (hence_382 true_382 true_382 true_382))
(assert (not_387 true_382 false_382))
(assert (not_387 false_382 true_382))
(declare-fun projS_237 (Int Int) Bool)
(declare-fun isS_500 (Int) Bool)
(declare-fun isZ_500 (Int) Bool)
(assert (forall ((x_59435 Int))
	(projS_237 x_59435 (S_533 x_59435))))
(assert (forall ((x_59438 Int))
	(isS_500 (S_533 x_59438))))
(assert (isZ_500 Z_2295))
(declare-datatypes ((list_299 0)) (((nil_332) (cons_297 (head_594 Int) (tail_596 list_299)))))
(declare-fun diseqlist_297 (list_299 list_299) Bool)
(declare-fun head_595 (Int list_299) Bool)
(declare-fun tail_597 (list_299 list_299) Bool)
(declare-fun isnil_332 (list_299) Bool)
(declare-fun iscons_297 (list_299) Bool)
(assert (forall ((x_59444 Int) (x_59445 list_299))
	(head_595 x_59444 (cons_297 x_59444 x_59445))))
(assert (forall ((x_59444 Int) (x_59445 list_299))
	(tail_597 x_59445 (cons_297 x_59444 x_59445))))
(assert (isnil_332 nil_332))
(assert (forall ((x_59447 Int) (x_59448 list_299))
	(iscons_297 (cons_297 x_59447 x_59448))))
(assert (forall ((x_59449 Int) (x_59450 list_299))
	(diseqlist_297 nil_332 (cons_297 x_59449 x_59450))))
(assert (forall ((x_59451 Int) (x_59452 list_299))
	(diseqlist_297 (cons_297 x_59451 x_59452) nil_332)))
(assert (forall ((x_59453 Int) (x_59454 list_299) (x_59455 Int) (x_59456 list_299))
	(=> (distinct x_59453 x_59455) (diseqlist_297 (cons_297 x_59453 x_59454) (cons_297 x_59455 x_59456)))))
(assert (forall ((x_59453 Int) (x_59454 list_299) (x_59455 Int) (x_59456 list_299))
	(=> (diseqlist_297 x_59454 x_59456) (diseqlist_297 (cons_297 x_59453 x_59454) (cons_297 x_59455 x_59456)))))
(declare-fun length_60 (Int list_299) Bool)
(assert (forall ((x_59410 Int) (y_2559 Int) (xs_755 list_299))
	(=> (length_60 x_59410 xs_755) (length_60 (S_533 x_59410) (cons_297 y_2559 xs_755)))))
(assert (length_60 Z_2295 nil_332))
(declare-fun x_59401 (Bool_382 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (x_59401 false_382 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (x_59401 true_382 x y))))
(declare-fun x_59404 (list_299 list_299 list_299) Bool)
(assert (forall ((x_59418 list_299) (z_2297 Int) (xs_756 list_299) (y_2562 list_299))
	(=> (x_59404 x_59418 xs_756 y_2562) (x_59404 (cons_297 z_2297 x_59418) (cons_297 z_2297 xs_756) y_2562))))
(assert (forall ((x_59419 list_299))
	(x_59404 x_59419 nil_332 x_59419)))
(declare-fun rotate_9 (list_299 Int list_299) Bool)
(assert (forall ((x_59420 list_299))
	(rotate_9 x_59420 Z_2295 x_59420)))
(assert (forall ((x_59421 list_299) (x_59422 list_299) (x_59407 Int) (x_59408 list_299) (z_2298 Int))
	(=> (and (x_59404 x_59422 x_59408 (cons_297 x_59407 nil_332)) (rotate_9 x_59421 z_2298 x_59422)) (rotate_9 x_59421 (S_533 z_2298) (cons_297 x_59407 x_59408)))))
(assert (forall ((z_2298 Int))
	(rotate_9 nil_332 (S_533 z_2298) nil_332)))
(assert (forall ((x_59430 Int) (x_59428 Int) (x_59427 list_299) (x_59425 list_299) (n_112 Int) (m_44 Int) (xs_757 list_299))
	(=> (and (distinct n_112 m_44) (diseqlist_297 x_59427 xs_757) (length_60 x_59430 xs_757) (x_59401 true_382 n_112 x_59430) (length_60 x_59428 xs_757) (x_59401 true_382 m_44 x_59428) (rotate_9 x_59427 (S_533 Z_2295) xs_757) (rotate_9 x_59425 n_112 xs_757) (rotate_9 x_59425 m_44 xs_757)) false)))
(check-sat)
