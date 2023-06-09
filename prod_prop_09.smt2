(set-logic HORN)
(define-fun Z_2011 () Int 0)
(define-fun S_455 ((x Int)) Int (+ x 1))
(define-fun Z_2008 () Int 0)
(define-fun S_454 ((x Int)) Int (+ x 1))
(declare-fun unS_667 (Int Int) Bool)
(declare-fun isZ_422 (Int) Bool)
(declare-fun isS_422 (Int) Bool)
(assert (forall ((x_54967 Int))
	(unS_667 x_54967 (S_455 x_54967))))
(assert (isZ_422 Z_2011))
(assert (forall ((x_54969 Int))
	(isS_422 (S_455 x_54969))))
(declare-fun add_359 (Int Int Int) Bool)
(declare-fun minus_354 (Int Int Int) Bool)
(declare-fun le_333 (Int Int) Bool)
(declare-fun ge_333 (Int Int) Bool)
(declare-fun lt_353 (Int Int) Bool)
(declare-fun gt_336 (Int Int) Bool)
(declare-fun mult_333 (Int Int Int) Bool)
(declare-fun div_333 (Int Int Int) Bool)
(declare-fun mod_335 (Int Int Int) Bool)
(assert (forall ((y_2248 Int))
	(add_359 y_2248 Z_2011 y_2248)))
(assert (forall ((x_54943 Int) (y_2248 Int) (r_406 Int))
	(=> (add_359 r_406 x_54943 y_2248) (add_359 (S_455 r_406) (S_455 x_54943) y_2248))))
(assert (forall ((y_2248 Int))
	(minus_354 Z_2011 Z_2011 y_2248)))
(assert (forall ((x_54943 Int) (y_2248 Int) (r_406 Int))
	(=> (minus_354 r_406 x_54943 y_2248) (minus_354 (S_455 r_406) (S_455 x_54943) y_2248))))
(assert (forall ((y_2248 Int))
	(le_333 Z_2011 y_2248)))
(assert (forall ((x_54943 Int) (y_2248 Int))
	(=> (le_333 x_54943 y_2248) (le_333 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Int))
	(ge_333 y_2248 Z_2011)))
(assert (forall ((x_54943 Int) (y_2248 Int))
	(=> (ge_333 x_54943 y_2248) (ge_333 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Int))
	(lt_353 Z_2011 (S_455 y_2248))))
(assert (forall ((x_54943 Int) (y_2248 Int))
	(=> (lt_353 x_54943 y_2248) (lt_353 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Int))
	(gt_336 (S_455 y_2248) Z_2011)))
(assert (forall ((x_54943 Int) (y_2248 Int))
	(=> (gt_336 x_54943 y_2248) (gt_336 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Int))
	(mult_333 Z_2011 Z_2011 y_2248)))
(assert (forall ((x_54943 Int) (y_2248 Int) (r_406 Int) (z_2012 Int))
	(=> (and (mult_333 r_406 x_54943 y_2248) (add_359 z_2012 r_406 y_2248)) (mult_333 z_2012 (S_455 x_54943) y_2248))))
(assert (forall ((x_54943 Int) (y_2248 Int))
	(=> (lt_353 x_54943 y_2248) (div_333 Z_2011 x_54943 y_2248))))
(assert (forall ((x_54943 Int) (y_2248 Int) (r_406 Int) (z_2012 Int))
	(=> (and (ge_333 x_54943 y_2248) (minus_354 z_2012 x_54943 y_2248) (div_333 r_406 z_2012 y_2248)) (div_333 (S_455 r_406) x_54943 y_2248))))
(assert (forall ((x_54943 Int) (y_2248 Int))
	(=> (lt_353 x_54943 y_2248) (mod_335 x_54943 x_54943 y_2248))))
(assert (forall ((x_54943 Int) (y_2248 Int) (r_406 Int) (z_2012 Int))
	(=> (and (ge_333 x_54943 y_2248) (minus_354 z_2012 x_54943 y_2248) (mod_335 r_406 z_2012 y_2248)) (mod_335 r_406 x_54943 y_2248))))
(declare-datatypes ((list_237 0)) (((nil_267) (cons_237 (head_474 Int) (tail_474 list_237)))))
(declare-fun diseqlist_237 (list_237 list_237) Bool)
(declare-fun head_475 (Int list_237) Bool)
(declare-fun tail_475 (list_237 list_237) Bool)
(declare-fun isnil_267 (list_237) Bool)
(declare-fun iscons_237 (list_237) Bool)
(assert (forall ((x_54945 Int) (x_54946 list_237))
	(head_475 x_54945 (cons_237 x_54945 x_54946))))
(assert (forall ((x_54945 Int) (x_54946 list_237))
	(tail_475 x_54946 (cons_237 x_54945 x_54946))))
(assert (isnil_267 nil_267))
(assert (forall ((x_54948 Int) (x_54949 list_237))
	(iscons_237 (cons_237 x_54948 x_54949))))
(assert (forall ((x_54950 Int) (x_54951 list_237))
	(diseqlist_237 nil_267 (cons_237 x_54950 x_54951))))
(assert (forall ((x_54952 Int) (x_54953 list_237))
	(diseqlist_237 (cons_237 x_54952 x_54953) nil_267)))
(assert (forall ((x_54954 Int) (x_54955 list_237) (x_54956 Int) (x_54957 list_237))
	(=> (distinct x_54954 x_54956) (diseqlist_237 (cons_237 x_54954 x_54955) (cons_237 x_54956 x_54957)))))
(assert (forall ((x_54954 Int) (x_54955 list_237) (x_54956 Int) (x_54957 list_237))
	(=> (diseqlist_237 x_54955 x_54957) (diseqlist_237 (cons_237 x_54954 x_54955) (cons_237 x_54956 x_54957)))))
(declare-fun projS_177 (Int Int) Bool)
(declare-fun isZ_421 (Int) Bool)
(declare-fun isS_421 (Int) Bool)
(assert (forall ((x_54959 Int))
	(projS_177 x_54959 (S_454 x_54959))))
(assert (isZ_421 Z_2008))
(assert (forall ((x_54961 Int))
	(isS_421 (S_454 x_54961))))
(declare-fun drop_53 (list_237 Int list_237) Bool)
(assert (forall ((x_54933 list_237) (x_54930 Int) (x_54931 list_237) (z_2009 Int))
	(=> (and (distinct 0 (S_454 z_2009)) (drop_53 x_54933 z_2009 x_54931)) (drop_53 x_54933 (S_454 z_2009) (cons_237 x_54930 x_54931)))))
(assert (forall ((z_2009 Int))
	(=> (distinct (S_454 z_2009) 0) (drop_53 nil_267 (S_454 z_2009) nil_267))))
(assert (forall ((x_54936 list_237))
	(drop_53 x_54936 Z_2008 x_54936)))
(assert (forall ((x_54937 list_237) (x_54938 list_237) (x_54939 list_237) (x_54940 list_237) (x_54941 list_237) (x_54942 list_237) (x_54932 Int) (y_2247 Int) (z_2010 list_237) (w_0 Int))
	(=> (and (diseqlist_237 x_54939 x_54942) (drop_53 x_54937 y_2247 z_2010) (drop_53 x_54938 x_54932 x_54937) (drop_53 x_54939 w_0 x_54938) (drop_53 x_54940 w_0 z_2010) (drop_53 x_54941 x_54932 x_54940) (drop_53 x_54942 y_2247 x_54941)) false)))
(check-sat)
