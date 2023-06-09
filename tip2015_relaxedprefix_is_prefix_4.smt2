(set-logic HORN)
(declare-datatypes ((Bool_91 0)) (((false_91) (true_91))))
(declare-fun diseqBool_40 (Bool_91 Bool_91) Bool)
(declare-fun isfalse_40 (Bool_91) Bool)
(declare-fun istrue_40 (Bool_91) Bool)
(assert (isfalse_40 false_91))
(assert (istrue_40 true_91))
(assert (diseqBool_40 false_91 true_91))
(assert (diseqBool_40 true_91 false_91))
(declare-fun and_91 (Bool_91 Bool_91 Bool_91) Bool)
(declare-fun or_92 (Bool_91 Bool_91 Bool_91) Bool)
(declare-fun hence_91 (Bool_91 Bool_91 Bool_91) Bool)
(declare-fun not_91 (Bool_91 Bool_91) Bool)
(assert (and_91 false_91 false_91 false_91))
(assert (and_91 false_91 true_91 false_91))
(assert (and_91 false_91 false_91 true_91))
(assert (and_91 true_91 true_91 true_91))
(assert (or_92 false_91 false_91 false_91))
(assert (or_92 true_91 true_91 false_91))
(assert (or_92 true_91 false_91 true_91))
(assert (or_92 true_91 true_91 true_91))
(assert (hence_91 true_91 false_91 false_91))
(assert (hence_91 false_91 true_91 false_91))
(assert (hence_91 true_91 false_91 true_91))
(assert (hence_91 true_91 true_91 true_91))
(assert (not_91 true_91 false_91))
(assert (not_91 false_91 true_91))
(declare-datatypes ((It_0 0)) (((A_12) (B_9) (C_3))))
(declare-fun diseqIt_0 (It_0 It_0) Bool)
(declare-fun isA_0 (It_0) Bool)
(declare-fun isB_0 (It_0) Bool)
(declare-fun isC_0 (It_0) Bool)
(assert (isA_0 A_12))
(assert (isB_0 B_9))
(assert (isC_0 C_3))
(assert (diseqIt_0 A_12 B_9))
(assert (diseqIt_0 A_12 C_3))
(assert (diseqIt_0 B_9 A_12))
(assert (diseqIt_0 C_3 A_12))
(assert (diseqIt_0 B_9 C_3))
(assert (diseqIt_0 C_3 B_9))
(declare-datatypes ((list_74 0)) (((nil_77) (cons_74 (head_148 It_0) (tail_148 list_74)))))
(declare-fun diseqlist_74 (list_74 list_74) Bool)
(declare-fun head_149 (It_0 list_74) Bool)
(declare-fun tail_149 (list_74 list_74) Bool)
(declare-fun isnil_77 (list_74) Bool)
(declare-fun iscons_74 (list_74) Bool)
(assert (forall ((x_7091 It_0) (x_7092 list_74))
	(head_149 x_7091 (cons_74 x_7091 x_7092))))
(assert (forall ((x_7091 It_0) (x_7092 list_74))
	(tail_149 x_7092 (cons_74 x_7091 x_7092))))
(assert (isnil_77 nil_77))
(assert (forall ((x_7094 It_0) (x_7095 list_74))
	(iscons_74 (cons_74 x_7094 x_7095))))
(assert (forall ((x_7096 It_0) (x_7097 list_74))
	(diseqlist_74 nil_77 (cons_74 x_7096 x_7097))))
(assert (forall ((x_7098 It_0) (x_7099 list_74))
	(diseqlist_74 (cons_74 x_7098 x_7099) nil_77)))
(assert (forall ((x_7100 It_0) (x_7101 list_74) (x_7102 It_0) (x_7103 list_74))
	(=> (diseqIt_0 x_7100 x_7102) (diseqlist_74 (cons_74 x_7100 x_7101) (cons_74 x_7102 x_7103)))))
(assert (forall ((x_7100 It_0) (x_7101 list_74) (x_7102 It_0) (x_7103 list_74))
	(=> (diseqlist_74 x_7101 x_7103) (diseqlist_74 (cons_74 x_7100 x_7101) (cons_74 x_7102 x_7103)))))
(declare-fun isPrefix_0 (Bool_91 list_74 list_74) Bool)
(assert (forall ((x_7067 Bool_91) (x_7056 It_0) (x_7057 list_74) (x_7055 list_74))
	(=> (isPrefix_0 x_7067 x_7055 x_7057) (isPrefix_0 x_7067 (cons_74 x_7056 x_7055) (cons_74 x_7056 x_7057)))))
(assert (forall ((x_7056 It_0) (x_7057 list_74) (z_486 It_0) (x_7055 list_74))
	(=> (diseqIt_0 z_486 x_7056) (isPrefix_0 false_91 (cons_74 z_486 x_7055) (cons_74 x_7056 x_7057)))))
(assert (forall ((z_486 It_0) (x_7055 list_74))
	(isPrefix_0 false_91 (cons_74 z_486 x_7055) nil_77)))
(assert (forall ((y_412 list_74))
	(isPrefix_0 true_91 nil_77 y_412)))
(declare-fun isRelaxedPrefix_0 (Bool_91 list_74 list_74) Bool)
(assert (forall ((x_7072 Bool_91) (x_7062 It_0) (x_7063 list_74) (x_7060 It_0) (x_7061 list_74))
	(=> (isRelaxedPrefix_0 x_7072 (cons_74 x_7060 x_7061) x_7063) (isRelaxedPrefix_0 x_7072 (cons_74 x_7062 (cons_74 x_7060 x_7061)) (cons_74 x_7062 x_7063)))))
(assert (forall ((x_7074 Bool_91) (x_7062 It_0) (x_7063 list_74) (x_7060 It_0) (x_7061 list_74) (z_487 It_0))
	(=> (and (diseqIt_0 z_487 x_7062) (isPrefix_0 x_7074 (cons_74 x_7060 x_7061) (cons_74 x_7062 x_7063))) (isRelaxedPrefix_0 x_7074 (cons_74 z_487 (cons_74 x_7060 x_7061)) (cons_74 x_7062 x_7063)))))
(assert (forall ((x_7060 It_0) (x_7061 list_74) (z_487 It_0))
	(isRelaxedPrefix_0 false_91 (cons_74 z_487 (cons_74 x_7060 x_7061)) nil_77)))
(assert (forall ((z_487 It_0) (y_413 list_74))
	(isRelaxedPrefix_0 true_91 (cons_74 z_487 nil_77) y_413)))
(assert (forall ((y_413 list_74))
	(isRelaxedPrefix_0 true_91 nil_77 y_413)))
(declare-fun x_7064 (list_74 list_74 list_74) Bool)
(assert (forall ((x_7080 list_74) (z_488 It_0) (xs_144 list_74) (y_414 list_74))
	(=> (x_7064 x_7080 xs_144 y_414) (x_7064 (cons_74 z_488 x_7080) (cons_74 z_488 xs_144) y_414))))
(assert (forall ((x_7081 list_74))
	(x_7064 x_7081 nil_77 x_7081)))
(assert (forall ((x_7082 list_74) (x_7066 It_0) (xs_145 list_74) (ys_36 list_74))
	(=> (and (x_7064 x_7082 xs_145 ys_36) (isRelaxedPrefix_0 false_91 (cons_74 x_7066 xs_145) x_7082)) false)))
(check-sat)
