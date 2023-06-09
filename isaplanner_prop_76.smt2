(set-logic HORN)
(define-fun Z_328 () Int 0)
(define-fun S_116 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_60 0)) (((false_60) (true_60))))
(declare-fun diseqBool_25 (Bool_60 Bool_60) Bool)
(declare-fun isfalse_25 (Bool_60) Bool)
(declare-fun istrue_25 (Bool_60) Bool)
(assert (isfalse_25 false_60))
(assert (istrue_25 true_60))
(assert (diseqBool_25 false_60 true_60))
(assert (diseqBool_25 true_60 false_60))
(declare-fun and_60 (Bool_60 Bool_60 Bool_60) Bool)
(declare-fun or_60 (Bool_60 Bool_60 Bool_60) Bool)
(declare-fun hence_60 (Bool_60 Bool_60 Bool_60) Bool)
(declare-fun not_60 (Bool_60 Bool_60) Bool)
(assert (and_60 false_60 false_60 false_60))
(assert (and_60 false_60 true_60 false_60))
(assert (and_60 false_60 false_60 true_60))
(assert (and_60 true_60 true_60 true_60))
(assert (or_60 false_60 false_60 false_60))
(assert (or_60 true_60 true_60 false_60))
(assert (or_60 true_60 false_60 true_60))
(assert (or_60 true_60 true_60 true_60))
(assert (hence_60 true_60 false_60 false_60))
(assert (hence_60 false_60 true_60 false_60))
(assert (hence_60 true_60 false_60 true_60))
(assert (hence_60 true_60 true_60 true_60))
(assert (not_60 true_60 false_60))
(assert (not_60 false_60 true_60))
(declare-fun projS_113 (Int Int) Bool)
(declare-fun isZ_116 (Int) Bool)
(declare-fun isS_116 (Int) Bool)
(assert (forall ((x_3235 Int))
	(projS_113 x_3235 (S_116 x_3235))))
(assert (isZ_116 Z_328))
(assert (forall ((x_3237 Int))
	(isS_116 (S_116 x_3237))))
(declare-datatypes ((list_54 0)) (((nil_54) (cons_54 (head_108 Int) (tail_108 list_54)))))
(declare-fun diseqlist_54 (list_54 list_54) Bool)
(declare-fun head_109 (Int list_54) Bool)
(declare-fun tail_109 (list_54 list_54) Bool)
(declare-fun isnil_54 (list_54) Bool)
(declare-fun iscons_54 (list_54) Bool)
(assert (forall ((x_3243 Int) (x_3244 list_54))
	(head_109 x_3243 (cons_54 x_3243 x_3244))))
(assert (forall ((x_3243 Int) (x_3244 list_54))
	(tail_109 x_3244 (cons_54 x_3243 x_3244))))
(assert (isnil_54 nil_54))
(assert (forall ((x_3246 Int) (x_3247 list_54))
	(iscons_54 (cons_54 x_3246 x_3247))))
(assert (forall ((x_3248 Int) (x_3249 list_54))
	(diseqlist_54 nil_54 (cons_54 x_3248 x_3249))))
(assert (forall ((x_3250 Int) (x_3251 list_54))
	(diseqlist_54 (cons_54 x_3250 x_3251) nil_54)))
(assert (forall ((x_3252 Int) (x_3253 list_54) (x_3254 Int) (x_3255 list_54))
	(=> (distinct x_3252 x_3254) (diseqlist_54 (cons_54 x_3252 x_3253) (cons_54 x_3254 x_3255)))))
(assert (forall ((x_3252 Int) (x_3253 list_54) (x_3254 Int) (x_3255 list_54))
	(=> (diseqlist_54 x_3253 x_3255) (diseqlist_54 (cons_54 x_3252 x_3253) (cons_54 x_3254 x_3255)))))
(declare-fun x_3206 (Bool_60 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (x_3206 false_60 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (x_3206 true_60 x y))))
(declare-fun count_6 (Int Int list_54) Bool)
(assert (forall ((x_3219 Int) (z_330 Int) (ys_25 list_54) (x_3209 Int))
	(=> (and (count_6 x_3219 x_3209 ys_25) (x_3206 true_60 x_3209 z_330)) (count_6 (S_116 x_3219) x_3209 (cons_54 z_330 ys_25)))))
(assert (forall ((x_3221 Int) (z_330 Int) (ys_25 list_54) (x_3209 Int))
	(=> (and (count_6 x_3221 x_3209 ys_25) (x_3206 false_60 x_3209 z_330)) (count_6 x_3221 x_3209 (cons_54 z_330 ys_25)))))
(assert (forall ((x_3209 Int))
	(count_6 Z_328 x_3209 nil_54)))
(declare-fun x_3210 (list_54 list_54 list_54) Bool)
(assert (forall ((x_3225 list_54) (z_331 Int) (xs_100 list_54) (y_263 list_54))
	(=> (x_3210 x_3225 xs_100 y_263) (x_3210 (cons_54 z_331 x_3225) (cons_54 z_331 xs_100) y_263))))
(assert (forall ((x_3226 list_54))
	(x_3210 x_3226 nil_54 x_3226)))
(assert (forall ((x_3227 list_54) (x_3228 Int) (x_3229 Int) (n_24 Int) (m_11 Int) (xs_101 list_54))
	(=> (and (distinct x_3228 x_3229) (x_3206 false_60 n_24 m_11) (x_3210 x_3227 xs_101 (cons_54 m_11 nil_54)) (count_6 x_3228 n_24 x_3227) (count_6 x_3229 n_24 xs_101)) false)))
(check-sat)
