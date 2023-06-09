(set-logic HORN)
(define-fun Z_2085 () Int 0)
(define-fun S_481 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_349 0)) (((false_349) (true_349))))
(declare-fun diseqBool_158 (Bool_349 Bool_349) Bool)
(declare-fun isfalse_158 (Bool_349) Bool)
(declare-fun istrue_158 (Bool_349) Bool)
(assert (isfalse_158 false_349))
(assert (istrue_158 true_349))
(assert (diseqBool_158 false_349 true_349))
(assert (diseqBool_158 true_349 false_349))
(declare-fun and_349 (Bool_349 Bool_349 Bool_349) Bool)
(declare-fun or_356 (Bool_349 Bool_349 Bool_349) Bool)
(declare-fun hence_349 (Bool_349 Bool_349 Bool_349) Bool)
(declare-fun not_354 (Bool_349 Bool_349) Bool)
(assert (and_349 false_349 false_349 false_349))
(assert (and_349 false_349 true_349 false_349))
(assert (and_349 false_349 false_349 true_349))
(assert (and_349 true_349 true_349 true_349))
(assert (or_356 false_349 false_349 false_349))
(assert (or_356 true_349 true_349 false_349))
(assert (or_356 true_349 false_349 true_349))
(assert (or_356 true_349 true_349 true_349))
(assert (hence_349 true_349 false_349 false_349))
(assert (hence_349 false_349 true_349 false_349))
(assert (hence_349 true_349 false_349 true_349))
(assert (hence_349 true_349 true_349 true_349))
(assert (not_354 true_349 false_349))
(assert (not_354 false_349 true_349))
(declare-fun projS_199 (Int Int) Bool)
(declare-fun isZ_448 (Int) Bool)
(declare-fun isS_448 (Int) Bool)
(assert (forall ((x_55700 Int))
	(projS_199 x_55700 (S_481 x_55700))))
(assert (isZ_448 Z_2085))
(assert (forall ((x_55702 Int))
	(isS_448 (S_481 x_55702))))
(declare-datatypes ((list_250 0)) (((nil_280) (cons_250 (head_500 Int) (tail_500 list_250)))))
(declare-fun diseqlist_250 (list_250 list_250) Bool)
(declare-fun head_501 (Int list_250) Bool)
(declare-fun tail_501 (list_250 list_250) Bool)
(declare-fun isnil_280 (list_250) Bool)
(declare-fun iscons_250 (list_250) Bool)
(assert (forall ((x_55708 Int) (x_55709 list_250))
	(head_501 x_55708 (cons_250 x_55708 x_55709))))
(assert (forall ((x_55708 Int) (x_55709 list_250))
	(tail_501 x_55709 (cons_250 x_55708 x_55709))))
(assert (isnil_280 nil_280))
(assert (forall ((x_55711 Int) (x_55712 list_250))
	(iscons_250 (cons_250 x_55711 x_55712))))
(assert (forall ((x_55713 Int) (x_55714 list_250))
	(diseqlist_250 nil_280 (cons_250 x_55713 x_55714))))
(assert (forall ((x_55715 Int) (x_55716 list_250))
	(diseqlist_250 (cons_250 x_55715 x_55716) nil_280)))
(assert (forall ((x_55717 Int) (x_55718 list_250) (x_55719 Int) (x_55720 list_250))
	(=> (distinct x_55717 x_55719) (diseqlist_250 (cons_250 x_55717 x_55718) (cons_250 x_55719 x_55720)))))
(assert (forall ((x_55717 Int) (x_55718 list_250) (x_55719 Int) (x_55720 list_250))
	(=> (diseqlist_250 x_55718 x_55720) (diseqlist_250 (cons_250 x_55717 x_55718) (cons_250 x_55719 x_55720)))))
(declare-fun barbar_8 (Bool_349 Bool_349 Bool_349) Bool)
(assert (forall ((y_2319 Bool_349))
	(barbar_8 true_349 true_349 y_2319)))
(assert (forall ((x_55673 Bool_349))
	(barbar_8 x_55673 false_349 x_55673)))
(declare-fun x_55663 (Bool_349 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (x_55663 false_349 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (x_55663 true_349 x y))))
(declare-fun elem_20 (Bool_349 Int list_250) Bool)
(assert (forall ((x_55679 Bool_349) (x_55680 Bool_349) (x_55681 Bool_349) (z_2087 Int) (xs_669 list_250) (x_55666 Int))
	(=> (and (x_55663 x_55680 x_55666 z_2087) (elem_20 x_55681 x_55666 xs_669) (barbar_8 x_55679 x_55680 x_55681)) (elem_20 x_55679 x_55666 (cons_250 z_2087 xs_669)))))
(assert (forall ((x_55666 Int))
	(elem_20 false_349 x_55666 nil_280)))
(declare-fun x_55667 (Bool_349 Int Int) Bool)
(assert (forall ((x_55684 Bool_349) (x_55669 Int) (z_2088 Int))
	(=> (x_55667 x_55684 z_2088 x_55669) (x_55667 x_55684 (S_481 z_2088) (S_481 x_55669)))))
(assert (forall ((z_2088 Int))
	(x_55667 false_349 (S_481 z_2088) Z_2085)))
(assert (forall ((y_2323 Int))
	(x_55667 true_349 Z_2085 y_2323)))
(declare-fun insert_32 (list_250 Int list_250) Bool)
(assert (forall ((z_2089 Int) (xs_670 list_250) (x_55670 Int))
	(=> (x_55667 true_349 x_55670 z_2089) (insert_32 (cons_250 x_55670 (cons_250 z_2089 xs_670)) x_55670 (cons_250 z_2089 xs_670)))))
(assert (forall ((x_55692 list_250) (z_2089 Int) (xs_670 list_250) (x_55670 Int))
	(=> (and (insert_32 x_55692 x_55670 xs_670) (x_55667 false_349 x_55670 z_2089)) (insert_32 (cons_250 z_2089 x_55692) x_55670 (cons_250 z_2089 xs_670)))))
(assert (forall ((x_55670 Int))
	(insert_32 (cons_250 x_55670 nil_280) x_55670 nil_280)))
(assert (forall ((x_55694 list_250) (x_55671 Int) (y_2325 list_250))
	(=> (and (insert_32 x_55694 x_55671 y_2325) (elem_20 false_349 x_55671 x_55694)) false)))
(check-sat)
