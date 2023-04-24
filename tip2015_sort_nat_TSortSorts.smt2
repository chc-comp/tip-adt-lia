(set-logic HORN)
(define-fun zero_146 () Int 0)
(define-fun succ_142 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_313 0)) (((false_313) (true_313))))
(declare-fun diseqBool_144 (Bool_313 Bool_313) Bool)
(declare-fun isfalse_144 (Bool_313) Bool)
(declare-fun istrue_144 (Bool_313) Bool)
(assert (isfalse_144 false_313))
(assert (istrue_144 true_313))
(assert (diseqBool_144 false_313 true_313))
(assert (diseqBool_144 true_313 false_313))
(declare-fun and_313 (Bool_313 Bool_313 Bool_313) Bool)
(declare-fun or_320 (Bool_313 Bool_313 Bool_313) Bool)
(declare-fun hence_313 (Bool_313 Bool_313 Bool_313) Bool)
(declare-fun not_318 (Bool_313 Bool_313) Bool)
(assert (and_313 false_313 false_313 false_313))
(assert (and_313 false_313 true_313 false_313))
(assert (and_313 false_313 false_313 true_313))
(assert (and_313 true_313 true_313 true_313))
(assert (or_320 false_313 false_313 false_313))
(assert (or_320 true_313 true_313 false_313))
(assert (or_320 true_313 false_313 true_313))
(assert (or_320 true_313 true_313 true_313))
(assert (hence_313 true_313 false_313 false_313))
(assert (hence_313 false_313 true_313 false_313))
(assert (hence_313 true_313 false_313 true_313))
(assert (hence_313 true_313 true_313 true_313))
(assert (not_318 true_313 false_313))
(assert (not_318 false_313 true_313))
(declare-fun p_400 (Int Int) Bool)
(declare-fun iszero_142 (Int) Bool)
(declare-fun issucc_142 (Int) Bool)
(assert (forall ((x_53869 Int))
	(p_400 x_53869 (succ_142 x_53869))))
(assert (iszero_142 zero_146))
(assert (forall ((x_53871 Int))
	(issucc_142 (succ_142 x_53871))))
(declare-datatypes ((Tree_10 0)) (((TNode_5 (projTNode_30 Tree_10) (projTNode_31 Int) (projTNode_32 Tree_10)) (TNil_5))))
(declare-fun diseqTree_10 (Tree_10 Tree_10) Bool)
(declare-fun projTNode_33 (Tree_10 Tree_10) Bool)
(declare-fun projTNode_34 (Int Tree_10) Bool)
(declare-fun projTNode_35 (Tree_10 Tree_10) Bool)
(declare-fun isTNode_5 (Tree_10) Bool)
(declare-fun isTNil_5 (Tree_10) Bool)
(assert (forall ((x_53876 Tree_10) (x_53877 Int) (x_53878 Tree_10))
	(projTNode_33 x_53876 (TNode_5 x_53876 x_53877 x_53878))))
(assert (forall ((x_53876 Tree_10) (x_53877 Int) (x_53878 Tree_10))
	(projTNode_34 x_53877 (TNode_5 x_53876 x_53877 x_53878))))
(assert (forall ((x_53876 Tree_10) (x_53877 Int) (x_53878 Tree_10))
	(projTNode_35 x_53878 (TNode_5 x_53876 x_53877 x_53878))))
(assert (forall ((x_53881 Tree_10) (x_53882 Int) (x_53883 Tree_10))
	(isTNode_5 (TNode_5 x_53881 x_53882 x_53883))))
(assert (isTNil_5 TNil_5))
(assert (forall ((x_53884 Tree_10) (x_53885 Int) (x_53886 Tree_10))
	(diseqTree_10 (TNode_5 x_53884 x_53885 x_53886) TNil_5)))
(assert (forall ((x_53887 Tree_10) (x_53888 Int) (x_53889 Tree_10))
	(diseqTree_10 TNil_5 (TNode_5 x_53887 x_53888 x_53889))))
(assert (forall ((x_53890 Tree_10) (x_53891 Int) (x_53892 Tree_10) (x_53893 Tree_10) (x_53894 Int) (x_53895 Tree_10))
	(=> (diseqTree_10 x_53890 x_53893) (diseqTree_10 (TNode_5 x_53890 x_53891 x_53892) (TNode_5 x_53893 x_53894 x_53895)))))
(assert (forall ((x_53890 Tree_10) (x_53891 Int) (x_53892 Tree_10) (x_53893 Tree_10) (x_53894 Int) (x_53895 Tree_10))
	(=> (distinct x_53891 x_53894) (diseqTree_10 (TNode_5 x_53890 x_53891 x_53892) (TNode_5 x_53893 x_53894 x_53895)))))
(assert (forall ((x_53890 Tree_10) (x_53891 Int) (x_53892 Tree_10) (x_53893 Tree_10) (x_53894 Int) (x_53895 Tree_10))
	(=> (diseqTree_10 x_53892 x_53895) (diseqTree_10 (TNode_5 x_53890 x_53891 x_53892) (TNode_5 x_53893 x_53894 x_53895)))))
(declare-datatypes ((list_220 0)) (((nil_250) (cons_220 (head_440 Int) (tail_440 list_220)))))
(declare-fun diseqlist_220 (list_220 list_220) Bool)
(declare-fun head_441 (Int list_220) Bool)
(declare-fun tail_441 (list_220 list_220) Bool)
(declare-fun isnil_250 (list_220) Bool)
(declare-fun iscons_220 (list_220) Bool)
(assert (forall ((x_53897 Int) (x_53898 list_220))
	(head_441 x_53897 (cons_220 x_53897 x_53898))))
(assert (forall ((x_53897 Int) (x_53898 list_220))
	(tail_441 x_53898 (cons_220 x_53897 x_53898))))
(assert (isnil_250 nil_250))
(assert (forall ((x_53900 Int) (x_53901 list_220))
	(iscons_220 (cons_220 x_53900 x_53901))))
(assert (forall ((x_53902 Int) (x_53903 list_220))
	(diseqlist_220 nil_250 (cons_220 x_53902 x_53903))))
(assert (forall ((x_53904 Int) (x_53905 list_220))
	(diseqlist_220 (cons_220 x_53904 x_53905) nil_250)))
(assert (forall ((x_53906 Int) (x_53907 list_220) (x_53908 Int) (x_53909 list_220))
	(=> (distinct x_53906 x_53908) (diseqlist_220 (cons_220 x_53906 x_53907) (cons_220 x_53908 x_53909)))))
(assert (forall ((x_53906 Int) (x_53907 list_220) (x_53908 Int) (x_53909 list_220))
	(=> (diseqlist_220 x_53907 x_53909) (diseqlist_220 (cons_220 x_53906 x_53907) (cons_220 x_53908 x_53909)))))
(declare-fun leq_55 (Bool_313 Int Int) Bool)
(assert (forall ((x Int ) (y Int)) (=> (<= x y) (leq_55 true_313 x y))))
(assert (forall ((x Int ) (y Int)) (=> (not (<= x y)) (leq_55 false_313 x y))))
(declare-fun ordered_25 (Bool_313 list_220) Bool)
(assert (forall ((x_53839 Bool_313) (x_53840 Bool_313) (x_53841 Bool_313) (y_2133 Int) (xs_605 list_220) (y_2132 Int))
	(=> (and (leq_55 x_53840 y_2132 y_2133) (ordered_25 x_53841 (cons_220 y_2133 xs_605)) (and_313 x_53839 x_53840 x_53841)) (ordered_25 x_53839 (cons_220 y_2132 (cons_220 y_2133 xs_605))))))
(assert (forall ((y_2132 Int))
	(ordered_25 true_313 (cons_220 y_2132 nil_250))))
(assert (ordered_25 true_313 nil_250))
(declare-fun flatten_12 (list_220 Tree_10 list_220) Bool)
(assert (forall ((x_53844 list_220))
	(flatten_12 x_53844 TNil_5 x_53844)))
(assert (forall ((x_53845 list_220) (x_53846 list_220) (q_129 Tree_10) (z_1899 Int) (r_384 Tree_10) (y_2134 list_220))
	(=> (and (flatten_12 x_53846 r_384 y_2134) (flatten_12 x_53845 q_129 (cons_220 z_1899 x_53846))) (flatten_12 x_53845 (TNode_5 q_129 z_1899 r_384) y_2134))))
(declare-fun add_337 (Tree_10 Int Tree_10) Bool)
(assert (forall ((x_53832 Int))
	(add_337 (TNode_5 TNil_5 x_53832 TNil_5) x_53832 TNil_5)))
(assert (forall ((x_53851 Tree_10) (q_130 Tree_10) (z_1900 Int) (r_385 Tree_10) (x_53832 Int))
	(=> (and (add_337 x_53851 x_53832 q_130) (leq_55 true_313 x_53832 z_1900)) (add_337 (TNode_5 x_53851 z_1900 r_385) x_53832 (TNode_5 q_130 z_1900 r_385)))))
(assert (forall ((x_53854 Tree_10) (q_130 Tree_10) (z_1900 Int) (r_385 Tree_10) (x_53832 Int))
	(=> (and (add_337 x_53854 x_53832 r_385) (leq_55 false_313 x_53832 z_1900)) (add_337 (TNode_5 q_130 z_1900 x_53854) x_53832 (TNode_5 q_130 z_1900 r_385)))))
(declare-fun toTree_5 (Tree_10 list_220) Bool)
(assert (forall ((x_53855 Tree_10) (x_53856 Tree_10) (y_2136 Int) (xs_606 list_220))
	(=> (and (toTree_5 x_53856 xs_606) (add_337 x_53855 y_2136 x_53856)) (toTree_5 x_53855 (cons_220 y_2136 xs_606)))))
(assert (toTree_5 TNil_5 nil_250))
(declare-fun tsort_5 (list_220 list_220) Bool)
(assert (forall ((x_53859 list_220) (x_53860 Tree_10) (x_53834 list_220))
	(=> (and (toTree_5 x_53860 x_53834) (flatten_12 x_53859 x_53860 nil_250)) (tsort_5 x_53859 x_53834))))
(assert (forall ((x_53862 list_220) (xs_607 list_220))
	(=> (and (tsort_5 x_53862 xs_607) (ordered_25 false_313 x_53862)) false)))
(check-sat)