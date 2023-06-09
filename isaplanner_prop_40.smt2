(set-logic HORN)
(define-fun Z_194 () Int 0)
(define-fun S_68 ((x Int)) Int (+ x 1))
(define-fun Z_192 () Int 0)
(define-fun S_67 ((x Int)) Int (+ x 1))
(declare-fun unS_71 (Int Int) Bool)
(declare-fun isZ_68 (Int) Bool)
(declare-fun isS_68 (Int) Bool)
(assert (forall ((x_1909 Int))
	(unS_71 x_1909 (S_68 x_1909))))
(assert (isZ_68 Z_194))
(assert (forall ((x_1911 Int))
	(isS_68 (S_68 x_1911))))
(declare-fun add_35 (Int Int Int) Bool)
(declare-fun minus_35 (Int Int Int) Bool)
(declare-fun le_35 (Int Int) Bool)
(declare-fun ge_35 (Int Int) Bool)
(declare-fun lt_35 (Int Int) Bool)
(declare-fun gt_35 (Int Int) Bool)
(declare-fun mult_35 (Int Int Int) Bool)
(declare-fun div_35 (Int Int Int) Bool)
(declare-fun mod_35 (Int Int Int) Bool)
(assert (forall ((y_152 Int))
	(add_35 y_152 Z_194 y_152)))
(assert (forall ((x_1885 Int) (y_152 Int) (r_35 Int))
	(=> (add_35 r_35 x_1885 y_152) (add_35 (S_68 r_35) (S_68 x_1885) y_152))))
(assert (forall ((y_152 Int))
	(minus_35 Z_194 Z_194 y_152)))
(assert (forall ((x_1885 Int) (y_152 Int) (r_35 Int))
	(=> (minus_35 r_35 x_1885 y_152) (minus_35 (S_68 r_35) (S_68 x_1885) y_152))))
(assert (forall ((y_152 Int))
	(le_35 Z_194 y_152)))
(assert (forall ((x_1885 Int) (y_152 Int))
	(=> (le_35 x_1885 y_152) (le_35 (S_68 x_1885) (S_68 y_152)))))
(assert (forall ((y_152 Int))
	(ge_35 y_152 Z_194)))
(assert (forall ((x_1885 Int) (y_152 Int))
	(=> (ge_35 x_1885 y_152) (ge_35 (S_68 x_1885) (S_68 y_152)))))
(assert (forall ((y_152 Int))
	(lt_35 Z_194 (S_68 y_152))))
(assert (forall ((x_1885 Int) (y_152 Int))
	(=> (lt_35 x_1885 y_152) (lt_35 (S_68 x_1885) (S_68 y_152)))))
(assert (forall ((y_152 Int))
	(gt_35 (S_68 y_152) Z_194)))
(assert (forall ((x_1885 Int) (y_152 Int))
	(=> (gt_35 x_1885 y_152) (gt_35 (S_68 x_1885) (S_68 y_152)))))
(assert (forall ((y_152 Int))
	(mult_35 Z_194 Z_194 y_152)))
(assert (forall ((x_1885 Int) (y_152 Int) (r_35 Int) (z_195 Int))
	(=> (and (mult_35 r_35 x_1885 y_152) (add_35 z_195 r_35 y_152)) (mult_35 z_195 (S_68 x_1885) y_152))))
(assert (forall ((x_1885 Int) (y_152 Int))
	(=> (lt_35 x_1885 y_152) (div_35 Z_194 x_1885 y_152))))
(assert (forall ((x_1885 Int) (y_152 Int) (r_35 Int) (z_195 Int))
	(=> (and (ge_35 x_1885 y_152) (minus_35 z_195 x_1885 y_152) (div_35 r_35 z_195 y_152)) (div_35 (S_68 r_35) x_1885 y_152))))
(assert (forall ((x_1885 Int) (y_152 Int))
	(=> (lt_35 x_1885 y_152) (mod_35 x_1885 x_1885 y_152))))
(assert (forall ((x_1885 Int) (y_152 Int) (r_35 Int) (z_195 Int))
	(=> (and (ge_35 x_1885 y_152) (minus_35 z_195 x_1885 y_152) (mod_35 r_35 z_195 y_152)) (mod_35 r_35 x_1885 y_152))))
(declare-datatypes ((list_32 0)) (((nil_32) (cons_32 (head_64 Int) (tail_64 list_32)))))
(declare-fun diseqlist_32 (list_32 list_32) Bool)
(declare-fun head_65 (Int list_32) Bool)
(declare-fun tail_65 (list_32 list_32) Bool)
(declare-fun isnil_32 (list_32) Bool)
(declare-fun iscons_32 (list_32) Bool)
(assert (forall ((x_1887 Int) (x_1888 list_32))
	(head_65 x_1887 (cons_32 x_1887 x_1888))))
(assert (forall ((x_1887 Int) (x_1888 list_32))
	(tail_65 x_1888 (cons_32 x_1887 x_1888))))
(assert (isnil_32 nil_32))
(assert (forall ((x_1890 Int) (x_1891 list_32))
	(iscons_32 (cons_32 x_1890 x_1891))))
(assert (forall ((x_1892 Int) (x_1893 list_32))
	(diseqlist_32 nil_32 (cons_32 x_1892 x_1893))))
(assert (forall ((x_1894 Int) (x_1895 list_32))
	(diseqlist_32 (cons_32 x_1894 x_1895) nil_32)))
(assert (forall ((x_1896 Int) (x_1897 list_32) (x_1898 Int) (x_1899 list_32))
	(=> (distinct x_1896 x_1898) (diseqlist_32 (cons_32 x_1896 x_1897) (cons_32 x_1898 x_1899)))))
(assert (forall ((x_1896 Int) (x_1897 list_32) (x_1898 Int) (x_1899 list_32))
	(=> (diseqlist_32 x_1897 x_1899) (diseqlist_32 (cons_32 x_1896 x_1897) (cons_32 x_1898 x_1899)))))
(declare-fun projS_65 (Int Int) Bool)
(declare-fun isZ_67 (Int) Bool)
(declare-fun isS_67 (Int) Bool)
(assert (forall ((x_1901 Int))
	(projS_65 x_1901 (S_67 x_1901))))
(assert (isZ_67 Z_192))
(assert (forall ((x_1903 Int))
	(isS_67 (S_67 x_1903))))
(declare-fun take_7 (list_32 Int list_32) Bool)
(assert (forall ((x_1881 list_32) (x_1878 Int) (x_1879 list_32) (z_193 Int))
	(=> (and (distinct (S_67 z_193) Z_192) (take_7 x_1881 z_193 x_1879)) (take_7 (cons_32 x_1878 x_1881) (S_67 z_193) (cons_32 x_1878 x_1879)))))
(assert (forall ((z_193 Int))
	(take_7 nil_32 (S_67 z_193) nil_32)))
(assert (forall ((y_151 list_32))
	(take_7 nil_32 Z_192 y_151)))
(assert (forall ((x_1884 list_32) (xs_51 list_32))
	(=> (and (diseqlist_32 x_1884 nil_32) (take_7 x_1884 Z_192 xs_51)) false)))
(check-sat)
