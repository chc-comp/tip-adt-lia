(set-logic HORN)
(define-fun Z_202 () Int 0)
(define-fun S_71 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_37 0)) (((false_37) (true_37))))
(declare-fun diseqBool_13 (Bool_37 Bool_37) Bool)
(declare-fun isfalse_13 (Bool_37) Bool)
(declare-fun istrue_13 (Bool_37) Bool)
(assert (isfalse_13 false_37))
(assert (istrue_13 true_37))
(assert (diseqBool_13 false_37 true_37))
(assert (diseqBool_13 true_37 false_37))
(declare-fun and_37 (Bool_37 Bool_37 Bool_37) Bool)
(declare-fun or_37 (Bool_37 Bool_37 Bool_37) Bool)
(declare-fun hence_37 (Bool_37 Bool_37 Bool_37) Bool)
(declare-fun not_37 (Bool_37 Bool_37) Bool)
(assert (and_37 false_37 false_37 false_37))
(assert (and_37 false_37 true_37 false_37))
(assert (and_37 false_37 false_37 true_37))
(assert (and_37 true_37 true_37 true_37))
(assert (or_37 false_37 false_37 false_37))
(assert (or_37 true_37 true_37 false_37))
(assert (or_37 true_37 false_37 true_37))
(assert (or_37 true_37 true_37 true_37))
(assert (hence_37 true_37 false_37 false_37))
(assert (hence_37 false_37 true_37 false_37))
(assert (hence_37 true_37 false_37 true_37))
(assert (hence_37 true_37 true_37 true_37))
(assert (not_37 true_37 false_37))
(assert (not_37 false_37 true_37))
(declare-fun projS_69 (Int Int) Bool)
(declare-fun isZ_71 (Int) Bool)
(declare-fun isS_71 (Int) Bool)
(assert (forall ((x_2045 Int))
	(projS_69 x_2045 (S_71 x_2045))))
(assert (isZ_71 Z_202))
(assert (forall ((x_2047 Int))
	(isS_71 (S_71 x_2047))))
(declare-datatypes ((list_35 0)) (((nil_35) (cons_35 (head_70 Int) (tail_70 list_35)))))
(declare-fun diseqlist_35 (list_35 list_35) Bool)
(declare-fun head_71 (Int list_35) Bool)
(declare-fun tail_71 (list_35 list_35) Bool)
(declare-fun isnil_35 (list_35) Bool)
(declare-fun iscons_35 (list_35) Bool)
(assert (forall ((x_2053 Int) (x_2054 list_35))
	(head_71 x_2053 (cons_35 x_2053 x_2054))))
(assert (forall ((x_2053 Int) (x_2054 list_35))
	(tail_71 x_2054 (cons_35 x_2053 x_2054))))
(assert (isnil_35 nil_35))
(assert (forall ((x_2056 Int) (x_2057 list_35))
	(iscons_35 (cons_35 x_2056 x_2057))))
(assert (forall ((x_2058 Int) (x_2059 list_35))
	(diseqlist_35 nil_35 (cons_35 x_2058 x_2059))))
(assert (forall ((x_2060 Int) (x_2061 list_35))
	(diseqlist_35 (cons_35 x_2060 x_2061) nil_35)))
(assert (forall ((x_2062 Int) (x_2063 list_35) (x_2064 Int) (x_2065 list_35))
	(=> (distinct x_2062 x_2064) (diseqlist_35 (cons_35 x_2062 x_2063) (cons_35 x_2064 x_2065)))))
(assert (forall ((x_2062 Int) (x_2063 list_35) (x_2064 Int) (x_2065 list_35))
	(=> (diseqlist_35 x_2063 x_2065) (diseqlist_35 (cons_35 x_2062 x_2063) (cons_35 x_2064 x_2065)))))
(declare-fun x_2009 (Bool_37 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (x_2009 false_37 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (x_2009 true_37 x y))))
(declare-fun elem_2 (Bool_37 Int list_35) Bool)
(assert (forall ((z_204 Int) (xs_58 list_35) (x_2012 Int))
	(=> (x_2009 true_37 x_2012 z_204) (elem_2 true_37 x_2012 (cons_35 z_204 xs_58)))))
(assert (forall ((x_2026 Bool_37) (z_204 Int) (xs_58 list_35) (x_2012 Int))
	(=> (and (elem_2 x_2026 x_2012 xs_58) (x_2009 false_37 x_2012 z_204)) (elem_2 x_2026 x_2012 (cons_35 z_204 xs_58)))))
(assert (forall ((x_2012 Int))
	(elem_2 false_37 x_2012 nil_35)))
(declare-fun x_2013 (Bool_37 Int Int) Bool)
(assert (forall ((x_2029 Bool_37) (x_2015 Int) (z_205 Int))
	(=> (x_2013 x_2029 x_2015 z_205) (x_2013 x_2029 (S_71 x_2015) (S_71 z_205)))))
(assert (forall ((z_205 Int))
	(x_2013 true_37 Z_202 (S_71 z_205))))
(assert (forall ((x_2014 Int))
	(x_2013 false_37 x_2014 Z_202)))
(declare-fun ins_1 (list_35 Int list_35) Bool)
(assert (forall ((z_206 Int) (xs_59 list_35) (x_2016 Int))
	(=> (x_2013 true_37 x_2016 z_206) (ins_1 (cons_35 x_2016 (cons_35 z_206 xs_59)) x_2016 (cons_35 z_206 xs_59)))))
(assert (forall ((x_2037 list_35) (z_206 Int) (xs_59 list_35) (x_2016 Int))
	(=> (and (ins_1 x_2037 x_2016 xs_59) (x_2013 false_37 x_2016 z_206)) (ins_1 (cons_35 z_206 x_2037) x_2016 (cons_35 z_206 xs_59)))))
(assert (forall ((x_2016 Int))
	(ins_1 (cons_35 x_2016 nil_35) x_2016 nil_35)))
(assert (forall ((x_2039 list_35) (x_2017 Int) (xs_60 list_35))
	(=> (and (ins_1 x_2039 x_2017 xs_60) (elem_2 false_37 x_2017 x_2039)) false)))
(check-sat)
