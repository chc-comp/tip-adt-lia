(set-logic HORN)
(define-fun Z_180 () Int 0)
(define-fun S_63 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_33 0)) (((false_33) (true_33))))
(declare-fun diseqBool_11 (Bool_33 Bool_33) Bool)
(declare-fun isfalse_11 (Bool_33) Bool)
(declare-fun istrue_11 (Bool_33) Bool)
(assert (isfalse_11 false_33))
(assert (istrue_11 true_33))
(assert (diseqBool_11 false_33 true_33))
(assert (diseqBool_11 true_33 false_33))
(declare-fun and_33 (Bool_33 Bool_33 Bool_33) Bool)
(declare-fun or_33 (Bool_33 Bool_33 Bool_33) Bool)
(declare-fun hence_33 (Bool_33 Bool_33 Bool_33) Bool)
(declare-fun not_33 (Bool_33 Bool_33) Bool)
(assert (and_33 false_33 false_33 false_33))
(assert (and_33 false_33 true_33 false_33))
(assert (and_33 false_33 false_33 true_33))
(assert (and_33 true_33 true_33 true_33))
(assert (or_33 false_33 false_33 false_33))
(assert (or_33 true_33 true_33 false_33))
(assert (or_33 true_33 false_33 true_33))
(assert (or_33 true_33 true_33 true_33))
(assert (hence_33 true_33 false_33 false_33))
(assert (hence_33 false_33 true_33 false_33))
(assert (hence_33 true_33 false_33 true_33))
(assert (hence_33 true_33 true_33 true_33))
(assert (not_33 true_33 false_33))
(assert (not_33 false_33 true_33))
(declare-fun projS_61 (Int Int) Bool)
(declare-fun isZ_63 (Int) Bool)
(declare-fun isS_63 (Int) Bool)
(assert (forall ((x_1815 Int))
	(projS_61 x_1815 (S_63 x_1815))))
(assert (isZ_63 Z_180))
(assert (forall ((x_1817 Int))
	(isS_63 (S_63 x_1817))))
(declare-datatypes ((list_31 0)) (((nil_31) (cons_31 (head_62 Int) (tail_62 list_31)))))
(declare-fun diseqlist_31 (list_31 list_31) Bool)
(declare-fun head_63 (Int list_31) Bool)
(declare-fun tail_63 (list_31 list_31) Bool)
(declare-fun isnil_31 (list_31) Bool)
(declare-fun iscons_31 (list_31) Bool)
(assert (forall ((x_1823 Int) (x_1824 list_31))
	(head_63 x_1823 (cons_31 x_1823 x_1824))))
(assert (forall ((x_1823 Int) (x_1824 list_31))
	(tail_63 x_1824 (cons_31 x_1823 x_1824))))
(assert (isnil_31 nil_31))
(assert (forall ((x_1826 Int) (x_1827 list_31))
	(iscons_31 (cons_31 x_1826 x_1827))))
(assert (forall ((x_1828 Int) (x_1829 list_31))
	(diseqlist_31 nil_31 (cons_31 x_1828 x_1829))))
(assert (forall ((x_1830 Int) (x_1831 list_31))
	(diseqlist_31 (cons_31 x_1830 x_1831) nil_31)))
(assert (forall ((x_1832 Int) (x_1833 list_31) (x_1834 Int) (x_1835 list_31))
	(=> (distinct x_1832 x_1834) (diseqlist_31 (cons_31 x_1832 x_1833) (cons_31 x_1834 x_1835)))))
(assert (forall ((x_1832 Int) (x_1833 list_31) (x_1834 Int) (x_1835 list_31))
	(=> (diseqlist_31 x_1833 x_1835) (diseqlist_31 (cons_31 x_1832 x_1833) (cons_31 x_1834 x_1835)))))
(declare-fun x_1780 (Bool_33 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (x_1780 false_33 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (x_1780 true_33 x y))))
(declare-fun count_4 (Int Int list_31) Bool)
(assert (forall ((x_1795 Int) (z_182 Int) (ys_17 list_31) (x_1783 Int))
	(=> (and (count_4 x_1795 x_1783 ys_17) (x_1780 true_33 x_1783 z_182)) (count_4 (S_63 x_1795) x_1783 (cons_31 z_182 ys_17)))))
(assert (forall ((x_1797 Int) (z_182 Int) (ys_17 list_31) (x_1783 Int))
	(=> (and (count_4 x_1797 x_1783 ys_17) (x_1780 false_33 x_1783 z_182)) (count_4 x_1797 x_1783 (cons_31 z_182 ys_17)))))
(assert (forall ((x_1783 Int))
	(count_4 Z_180 x_1783 nil_31)))
(declare-fun x_1784 (Int Int Int) Bool)
(assert (forall ((x_1801 Int) (z_183 Int) (y_145 Int))
	(=> (x_1784 x_1801 z_183 y_145) (x_1784 (S_63 x_1801) (S_63 z_183) y_145))))
(assert (forall ((x_1802 Int))
	(x_1784 x_1802 Z_180 x_1802)))
(declare-fun x_1786 (list_31 list_31 list_31) Bool)
(assert (forall ((x_1804 list_31) (z_184 Int) (xs_49 list_31) (y_146 list_31))
	(=> (x_1786 x_1804 xs_49 y_146) (x_1786 (cons_31 z_184 x_1804) (cons_31 z_184 xs_49) y_146))))
(assert (forall ((x_1805 list_31))
	(x_1786 x_1805 nil_31 x_1805)))
(assert (forall ((x_1806 Int) (x_1807 Int) (x_1808 Int) (x_1809 list_31) (x_1810 Int) (n_14 Int) (xs_50 list_31) (ys_18 list_31))
	(=> (and (distinct x_1808 x_1810) (count_4 x_1806 n_14 xs_50) (count_4 x_1807 n_14 ys_18) (x_1784 x_1808 x_1806 x_1807) (x_1786 x_1809 xs_50 ys_18) (count_4 x_1810 n_14 x_1809)) false)))
(check-sat)
