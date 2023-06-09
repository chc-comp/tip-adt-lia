(set-logic HORN)
(define-fun zero_32 () Int 0)
(define-fun succ_32 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_136 0)) (((false_136) (true_136))))
(declare-fun diseqBool_58 (Bool_136 Bool_136) Bool)
(declare-fun isfalse_58 (Bool_136) Bool)
(declare-fun istrue_58 (Bool_136) Bool)
(assert (isfalse_58 false_136))
(assert (istrue_58 true_136))
(assert (diseqBool_58 false_136 true_136))
(assert (diseqBool_58 true_136 false_136))
(declare-fun and_136 (Bool_136 Bool_136 Bool_136) Bool)
(declare-fun or_137 (Bool_136 Bool_136 Bool_136) Bool)
(declare-fun hence_136 (Bool_136 Bool_136 Bool_136) Bool)
(declare-fun not_136 (Bool_136 Bool_136) Bool)
(assert (and_136 false_136 false_136 false_136))
(assert (and_136 false_136 true_136 false_136))
(assert (and_136 false_136 false_136 true_136))
(assert (and_136 true_136 true_136 true_136))
(assert (or_137 false_136 false_136 false_136))
(assert (or_137 true_136 true_136 false_136))
(assert (or_137 true_136 false_136 true_136))
(assert (or_137 true_136 true_136 true_136))
(assert (hence_136 true_136 false_136 false_136))
(assert (hence_136 false_136 true_136 false_136))
(assert (hence_136 true_136 false_136 true_136))
(assert (hence_136 true_136 true_136 true_136))
(assert (not_136 true_136 false_136))
(assert (not_136 false_136 true_136))
(declare-fun p_98 (Int Int) Bool)
(declare-fun iszero_32 (Int) Bool)
(declare-fun issucc_32 (Int) Bool)
(assert (forall ((x_21056 Int))
	(p_98 x_21056 (succ_32 x_21056))))
(assert (iszero_32 zero_32))
(assert (forall ((x_21058 Int))
	(issucc_32 (succ_32 x_21058))))
(declare-datatypes ((list_100 0)) (((nil_110) (cons_100 (head_200 Int) (tail_200 list_100)))))
(declare-fun diseqlist_100 (list_100 list_100) Bool)
(declare-fun head_202 (Int list_100) Bool)
(declare-fun tail_202 (list_100 list_100) Bool)
(declare-fun isnil_110 (list_100) Bool)
(declare-fun iscons_100 (list_100) Bool)
(assert (forall ((x_21064 Int) (x_21065 list_100))
	(head_202 x_21064 (cons_100 x_21064 x_21065))))
(assert (forall ((x_21064 Int) (x_21065 list_100))
	(tail_202 x_21065 (cons_100 x_21064 x_21065))))
(assert (isnil_110 nil_110))
(assert (forall ((x_21067 Int) (x_21068 list_100))
	(iscons_100 (cons_100 x_21067 x_21068))))
(assert (forall ((x_21069 Int) (x_21070 list_100))
	(diseqlist_100 nil_110 (cons_100 x_21069 x_21070))))
(assert (forall ((x_21071 Int) (x_21072 list_100))
	(diseqlist_100 (cons_100 x_21071 x_21072) nil_110)))
(assert (forall ((x_21073 Int) (x_21074 list_100) (x_21075 Int) (x_21076 list_100))
	(=> (distinct x_21073 x_21075) (diseqlist_100 (cons_100 x_21073 x_21074) (cons_100 x_21075 x_21076)))))
(assert (forall ((x_21073 Int) (x_21074 list_100) (x_21075 Int) (x_21076 list_100))
	(=> (diseqlist_100 x_21074 x_21076) (diseqlist_100 (cons_100 x_21073 x_21074) (cons_100 x_21075 x_21076)))))
(declare-datatypes ((list_101 0)) (((nil_111) (cons_101 (head_201 list_100) (tail_201 list_101)))))
(declare-fun diseqlist_101 (list_101 list_101) Bool)
(declare-fun head_203 (list_100 list_101) Bool)
(declare-fun tail_203 (list_101 list_101) Bool)
(declare-fun isnil_111 (list_101) Bool)
(declare-fun iscons_101 (list_101) Bool)
(assert (forall ((x_21078 list_100) (x_21079 list_101))
	(head_203 x_21078 (cons_101 x_21078 x_21079))))
(assert (forall ((x_21078 list_100) (x_21079 list_101))
	(tail_203 x_21079 (cons_101 x_21078 x_21079))))
(assert (isnil_111 nil_111))
(assert (forall ((x_21081 list_100) (x_21082 list_101))
	(iscons_101 (cons_101 x_21081 x_21082))))
(assert (forall ((x_21083 list_100) (x_21084 list_101))
	(diseqlist_101 nil_111 (cons_101 x_21083 x_21084))))
(assert (forall ((x_21085 list_100) (x_21086 list_101))
	(diseqlist_101 (cons_101 x_21085 x_21086) nil_111)))
(assert (forall ((x_21087 list_100) (x_21088 list_101) (x_21089 list_100) (x_21090 list_101))
	(=> (diseqlist_100 x_21087 x_21089) (diseqlist_101 (cons_101 x_21087 x_21088) (cons_101 x_21089 x_21090)))))
(assert (forall ((x_21087 list_100) (x_21088 list_101) (x_21089 list_100) (x_21090 list_101))
	(=> (diseqlist_101 x_21088 x_21090) (diseqlist_101 (cons_101 x_21087 x_21088) (cons_101 x_21089 x_21090)))))
(declare-fun leq_12 (Bool_136 Int Int) Bool)
(assert (forall ((x Int) (y Int)) (=> (<= x y) (leq_12 true_136 x y))))
(assert (forall ((x Int) (y Int)) (=> (not (<= x y)) (leq_12 false_136 x y))))
(declare-fun lmerge_5 (list_100 list_100 list_100) Bool)
(assert (forall ((x_21011 list_100) (x_20997 Int) (x_20998 list_100) (z_758 Int) (x_20996 list_100))
	(=> (and (lmerge_5 x_21011 x_20996 (cons_100 x_20997 x_20998)) (leq_12 true_136 z_758 x_20997)) (lmerge_5 (cons_100 z_758 x_21011) (cons_100 z_758 x_20996) (cons_100 x_20997 x_20998)))))
(assert (forall ((x_21014 list_100) (x_20997 Int) (x_20998 list_100) (z_758 Int) (x_20996 list_100))
	(=> (and (lmerge_5 x_21014 (cons_100 z_758 x_20996) x_20998) (leq_12 false_136 z_758 x_20997)) (lmerge_5 (cons_100 x_20997 x_21014) (cons_100 z_758 x_20996) (cons_100 x_20997 x_20998)))))
(assert (forall ((z_758 Int) (x_20996 list_100))
	(lmerge_5 (cons_100 z_758 x_20996) (cons_100 z_758 x_20996) nil_110)))
(assert (forall ((x_21016 list_100))
	(lmerge_5 x_21016 nil_110 x_21016)))
(declare-fun pairwise_1 (list_101 list_101) Bool)
(assert (forall ((x_21018 list_100) (x_21019 list_101) (ys_66 list_100) (xss_1 list_101) (xs_234 list_100))
	(=> (and (lmerge_5 x_21018 xs_234 ys_66) (pairwise_1 x_21019 xss_1)) (pairwise_1 (cons_101 x_21018 x_21019) (cons_101 xs_234 (cons_101 ys_66 xss_1))))))
(assert (forall ((xs_234 list_100))
	(pairwise_1 (cons_101 xs_234 nil_111) (cons_101 xs_234 nil_111))))
(assert (pairwise_1 nil_111 nil_111))
(declare-fun mergingbu_1 (list_100 list_101) Bool)
(assert (forall ((x_21022 list_100) (x_21023 list_101) (z_759 list_100) (x_21001 list_101) (xs_235 list_100))
	(=> (and (pairwise_1 x_21023 (cons_101 xs_235 (cons_101 z_759 x_21001))) (mergingbu_1 x_21022 x_21023)) (mergingbu_1 x_21022 (cons_101 xs_235 (cons_101 z_759 x_21001))))))
(assert (forall ((x_21025 list_100))
	(mergingbu_1 x_21025 (cons_101 x_21025 nil_111))))
(assert (mergingbu_1 nil_110 nil_111))
(declare-fun ordered_5 (Bool_136 list_100) Bool)
(assert (forall ((x_21027 Bool_136) (x_21028 Bool_136) (x_21029 Bool_136) (y_753 Int) (xs_236 list_100) (y_752 Int))
	(=> (and (leq_12 x_21028 y_752 y_753) (ordered_5 x_21029 (cons_100 y_753 xs_236)) (and_136 x_21027 x_21028 x_21029)) (ordered_5 x_21027 (cons_100 y_752 (cons_100 y_753 xs_236))))))
(assert (forall ((y_752 Int))
	(ordered_5 true_136 (cons_100 y_752 nil_110))))
(assert (ordered_5 true_136 nil_110))
(declare-fun risers_1 (list_101 list_100) Bool)
(assert (forall ((ys_67 list_100) (yss_1 list_101) (y_755 Int) (xs_237 list_100) (y_754 Int))
	(=> (and (risers_1 (cons_101 ys_67 yss_1) (cons_100 y_755 xs_237)) (leq_12 true_136 y_754 y_755)) (risers_1 (cons_101 (cons_100 y_754 ys_67) yss_1) (cons_100 y_754 (cons_100 y_755 xs_237))))))
(assert (forall ((x_21037 list_101) (y_755 Int) (xs_237 list_100) (y_754 Int))
	(=> (and (risers_1 x_21037 (cons_100 y_755 xs_237)) (leq_12 false_136 y_754 y_755)) (risers_1 (cons_101 (cons_100 y_754 nil_110) x_21037) (cons_100 y_754 (cons_100 y_755 xs_237))))))
(assert (forall ((y_755 Int) (xs_237 list_100) (y_754 Int))
	(=> (and (risers_1 nil_111 (cons_100 y_755 xs_237)) (leq_12 true_136 y_754 y_755)) (risers_1 nil_111 (cons_100 y_754 (cons_100 y_755 xs_237))))))
(assert (forall ((x_21043 list_101) (y_755 Int) (xs_237 list_100) (y_754 Int))
	(=> (and (risers_1 x_21043 (cons_100 y_755 xs_237)) (leq_12 false_136 y_754 y_755)) (risers_1 (cons_101 (cons_100 y_754 nil_110) x_21043) (cons_100 y_754 (cons_100 y_755 xs_237))))))
(assert (forall ((y_754 Int))
	(risers_1 (cons_101 (cons_100 y_754 nil_110) nil_111) (cons_100 y_754 nil_110))))
(assert (risers_1 nil_111 nil_110))
(declare-fun msortbu_1 (list_100 list_100) Bool)
(assert (forall ((x_21046 list_100) (x_21047 list_101) (x_21004 list_100))
	(=> (and (risers_1 x_21047 x_21004) (mergingbu_1 x_21046 x_21047)) (msortbu_1 x_21046 x_21004))))
(assert (forall ((x_21049 list_100) (xs_238 list_100))
	(=> (and (msortbu_1 x_21049 xs_238) (ordered_5 false_136 x_21049)) false)))
(check-sat)
