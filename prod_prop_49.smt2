(set-logic HORN)
(define-fun Z_1974 () Int 0)
(define-fun S_443 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_327 0)) (((false_327) (true_327))))
(declare-fun diseqBool_152 (Bool_327 Bool_327) Bool)
(declare-fun isfalse_152 (Bool_327) Bool)
(declare-fun istrue_152 (Bool_327) Bool)
(assert (isfalse_152 false_327))
(assert (istrue_152 true_327))
(assert (diseqBool_152 false_327 true_327))
(assert (diseqBool_152 true_327 false_327))
(declare-fun and_327 (Bool_327 Bool_327 Bool_327) Bool)
(declare-fun or_334 (Bool_327 Bool_327 Bool_327) Bool)
(declare-fun hence_327 (Bool_327 Bool_327 Bool_327) Bool)
(declare-fun not_332 (Bool_327 Bool_327) Bool)
(assert (and_327 false_327 false_327 false_327))
(assert (and_327 false_327 true_327 false_327))
(assert (and_327 false_327 false_327 true_327))
(assert (and_327 true_327 true_327 true_327))
(assert (or_334 false_327 false_327 false_327))
(assert (or_334 true_327 true_327 false_327))
(assert (or_334 true_327 false_327 true_327))
(assert (or_334 true_327 true_327 true_327))
(assert (hence_327 true_327 false_327 false_327))
(assert (hence_327 false_327 true_327 false_327))
(assert (hence_327 true_327 false_327 true_327))
(assert (hence_327 true_327 true_327 true_327))
(assert (not_332 true_327 false_327))
(assert (not_332 false_327 true_327))
(declare-fun projS_167 (Int Int) Bool)
(declare-fun isZ_410 (Int) Bool)
(declare-fun isS_410 (Int) Bool)
(assert (forall ((x_54651 Int))
	(projS_167 x_54651 (S_443 x_54651))))
(assert (isZ_410 Z_1974))
(assert (forall ((x_54653 Int))
	(isS_410 (S_443 x_54653))))
(declare-datatypes ((list_232 0)) (((nil_262) (cons_232 (head_464 Int) (tail_464 list_232)))))
(declare-fun diseqlist_232 (list_232 list_232) Bool)
(declare-fun head_465 (Int list_232) Bool)
(declare-fun tail_465 (list_232 list_232) Bool)
(declare-fun isnil_262 (list_232) Bool)
(declare-fun iscons_232 (list_232) Bool)
(assert (forall ((x_54659 Int) (x_54660 list_232))
	(head_465 x_54659 (cons_232 x_54659 x_54660))))
(assert (forall ((x_54659 Int) (x_54660 list_232))
	(tail_465 x_54660 (cons_232 x_54659 x_54660))))
(assert (isnil_262 nil_262))
(assert (forall ((x_54662 Int) (x_54663 list_232))
	(iscons_232 (cons_232 x_54662 x_54663))))
(assert (forall ((x_54664 Int) (x_54665 list_232))
	(diseqlist_232 nil_262 (cons_232 x_54664 x_54665))))
(assert (forall ((x_54666 Int) (x_54667 list_232))
	(diseqlist_232 (cons_232 x_54666 x_54667) nil_262)))
(assert (forall ((x_54668 Int) (x_54669 list_232) (x_54670 Int) (x_54671 list_232))
	(=> (distinct x_54668 x_54670) (diseqlist_232 (cons_232 x_54668 x_54669) (cons_232 x_54670 x_54671)))))
(assert (forall ((x_54668 Int) (x_54669 list_232) (x_54670 Int) (x_54671 list_232))
	(=> (diseqlist_232 x_54669 x_54671) (diseqlist_232 (cons_232 x_54668 x_54669) (cons_232 x_54670 x_54671)))))
(declare-fun barbar_3 (Bool_327 Bool_327 Bool_327) Bool)
(assert (forall ((y_2210 Bool_327))
	(barbar_3 true_327 true_327 y_2210)))
(assert (forall ((x_54619 Bool_327))
	(barbar_3 x_54619 false_327 x_54619)))
(declare-fun x_54608 (Bool_327 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (x_54608 false_327 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (x_54608 true_327 x y))))
(declare-fun elem_15 (Bool_327 Int list_232) Bool)
(assert (forall ((x_54625 Bool_327) (x_54626 Bool_327) (x_54627 Bool_327) (z_1976 Int) (xs_633 list_232) (x_54611 Int))
	(=> (and (x_54608 x_54626 x_54611 z_1976) (elem_15 x_54627 x_54611 xs_633) (barbar_3 x_54625 x_54626 x_54627)) (elem_15 x_54625 x_54611 (cons_232 z_1976 xs_633)))))
(assert (forall ((x_54611 Int))
	(elem_15 false_327 x_54611 nil_262)))
(declare-fun x_54612 (Bool_327 Int Int) Bool)
(assert (forall ((x_54630 Bool_327) (x_54614 Int) (z_1977 Int))
	(=> (x_54612 x_54630 z_1977 x_54614) (x_54612 x_54630 (S_443 z_1977) (S_443 x_54614)))))
(assert (forall ((z_1977 Int))
	(x_54612 false_327 (S_443 z_1977) Z_1974)))
(assert (forall ((y_2214 Int))
	(x_54612 true_327 Z_1974 y_2214)))
(declare-fun insert_31 (list_232 Int list_232) Bool)
(assert (forall ((z_1978 Int) (xs_634 list_232) (x_54615 Int))
	(=> (x_54612 true_327 x_54615 z_1978) (insert_31 (cons_232 x_54615 (cons_232 z_1978 xs_634)) x_54615 (cons_232 z_1978 xs_634)))))
(assert (forall ((x_54638 list_232) (z_1978 Int) (xs_634 list_232) (x_54615 Int))
	(=> (and (insert_31 x_54638 x_54615 xs_634) (x_54612 false_327 x_54615 z_1978)) (insert_31 (cons_232 z_1978 x_54638) x_54615 (cons_232 z_1978 xs_634)))))
(assert (forall ((x_54615 Int))
	(insert_31 (cons_232 x_54615 nil_262) x_54615 nil_262)))
(declare-fun isort_30 (list_232 list_232) Bool)
(assert (forall ((x_54640 list_232) (x_54641 list_232) (y_2216 Int) (xs_635 list_232))
	(=> (and (isort_30 x_54641 xs_635) (insert_31 x_54640 y_2216 x_54641)) (isort_30 x_54640 (cons_232 y_2216 xs_635)))))
(assert (isort_30 nil_262 nil_262))
(assert (forall ((x_54645 list_232) (x_54617 Int) (y_2217 list_232))
	(=> (and (isort_30 x_54645 y_2217) (elem_15 true_327 x_54617 x_54645) (elem_15 false_327 x_54617 y_2217)) false)))
(check-sat)
