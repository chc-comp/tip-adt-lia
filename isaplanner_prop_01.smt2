(set-logic HORN)
(define-fun Z_255 () Int 0)
(define-fun S_90 ((x Int)) Int (+ x 1))
(define-fun Z_251 () Int 0)
(define-fun S_89 ((x Int)) Int (+ x 1))
(declare-fun unS_93 (Int Int) Bool)
(declare-fun isZ_90 (Int) Bool)
(declare-fun isS_90 (Int) Bool)
(assert (forall ((x_2488 Int))
	(unS_93 x_2488 (S_90 x_2488))))
(assert (isZ_90 Z_255))
(assert (forall ((x_2490 Int))
	(isS_90 (S_90 x_2490))))
(declare-fun add_46 (Int Int Int) Bool)
(declare-fun minus_46 (Int Int Int) Bool)
(declare-fun le_46 (Int Int) Bool)
(declare-fun ge_46 (Int Int) Bool)
(declare-fun lt_46 (Int Int) Bool)
(declare-fun gt_46 (Int Int) Bool)
(declare-fun mult_46 (Int Int Int) Bool)
(declare-fun div_46 (Int Int Int) Bool)
(declare-fun mod_46 (Int Int Int) Bool)
(assert (forall ((y_201 Int))
	(add_46 y_201 Z_255 y_201)))
(assert (forall ((x_2464 Int) (y_201 Int) (r_46 Int))
	(=> (add_46 r_46 x_2464 y_201) (add_46 (S_90 r_46) (S_90 x_2464) y_201))))
(assert (forall ((y_201 Int))
	(minus_46 Z_255 Z_255 y_201)))
(assert (forall ((x_2464 Int) (y_201 Int) (r_46 Int))
	(=> (minus_46 r_46 x_2464 y_201) (minus_46 (S_90 r_46) (S_90 x_2464) y_201))))
(assert (forall ((y_201 Int))
	(le_46 Z_255 y_201)))
(assert (forall ((x_2464 Int) (y_201 Int))
	(=> (le_46 x_2464 y_201) (le_46 (S_90 x_2464) (S_90 y_201)))))
(assert (forall ((y_201 Int))
	(ge_46 y_201 Z_255)))
(assert (forall ((x_2464 Int) (y_201 Int))
	(=> (ge_46 x_2464 y_201) (ge_46 (S_90 x_2464) (S_90 y_201)))))
(assert (forall ((y_201 Int))
	(lt_46 Z_255 (S_90 y_201))))
(assert (forall ((x_2464 Int) (y_201 Int))
	(=> (lt_46 x_2464 y_201) (lt_46 (S_90 x_2464) (S_90 y_201)))))
(assert (forall ((y_201 Int))
	(gt_46 (S_90 y_201) Z_255)))
(assert (forall ((x_2464 Int) (y_201 Int))
	(=> (gt_46 x_2464 y_201) (gt_46 (S_90 x_2464) (S_90 y_201)))))
(assert (forall ((y_201 Int))
	(mult_46 Z_255 Z_255 y_201)))
(assert (forall ((x_2464 Int) (y_201 Int) (r_46 Int) (z_256 Int))
	(=> (and (mult_46 r_46 x_2464 y_201) (add_46 z_256 r_46 y_201)) (mult_46 z_256 (S_90 x_2464) y_201))))
(assert (forall ((x_2464 Int) (y_201 Int))
	(=> (lt_46 x_2464 y_201) (div_46 Z_255 x_2464 y_201))))
(assert (forall ((x_2464 Int) (y_201 Int) (r_46 Int) (z_256 Int))
	(=> (and (ge_46 x_2464 y_201) (minus_46 z_256 x_2464 y_201) (div_46 r_46 z_256 y_201)) (div_46 (S_90 r_46) x_2464 y_201))))
(assert (forall ((x_2464 Int) (y_201 Int))
	(=> (lt_46 x_2464 y_201) (mod_46 x_2464 x_2464 y_201))))
(assert (forall ((x_2464 Int) (y_201 Int) (r_46 Int) (z_256 Int))
	(=> (and (ge_46 x_2464 y_201) (minus_46 z_256 x_2464 y_201) (mod_46 r_46 z_256 y_201)) (mod_46 r_46 x_2464 y_201))))
(declare-datatypes ((list_41 0)) (((nil_41) (cons_41 (head_82 Int) (tail_82 list_41)))))
(declare-fun diseqlist_41 (list_41 list_41) Bool)
(declare-fun head_83 (Int list_41) Bool)
(declare-fun tail_83 (list_41 list_41) Bool)
(declare-fun isnil_41 (list_41) Bool)
(declare-fun iscons_41 (list_41) Bool)
(assert (forall ((x_2466 Int) (x_2467 list_41))
	(head_83 x_2466 (cons_41 x_2466 x_2467))))
(assert (forall ((x_2466 Int) (x_2467 list_41))
	(tail_83 x_2467 (cons_41 x_2466 x_2467))))
(assert (isnil_41 nil_41))
(assert (forall ((x_2469 Int) (x_2470 list_41))
	(iscons_41 (cons_41 x_2469 x_2470))))
(assert (forall ((x_2471 Int) (x_2472 list_41))
	(diseqlist_41 nil_41 (cons_41 x_2471 x_2472))))
(assert (forall ((x_2473 Int) (x_2474 list_41))
	(diseqlist_41 (cons_41 x_2473 x_2474) nil_41)))
(assert (forall ((x_2475 Int) (x_2476 list_41) (x_2477 Int) (x_2478 list_41))
	(=> (distinct x_2475 x_2477) (diseqlist_41 (cons_41 x_2475 x_2476) (cons_41 x_2477 x_2478)))))
(assert (forall ((x_2475 Int) (x_2476 list_41) (x_2477 Int) (x_2478 list_41))
	(=> (diseqlist_41 x_2476 x_2478) (diseqlist_41 (cons_41 x_2475 x_2476) (cons_41 x_2477 x_2478)))))
(declare-fun projS_87 (Int Int) Bool)
(declare-fun isZ_89 (Int) Bool)
(declare-fun isS_89 (Int) Bool)
(assert (forall ((x_2480 Int))
	(projS_87 x_2480 (S_89 x_2480))))
(assert (isZ_89 Z_251))
(assert (forall ((x_2482 Int))
	(isS_89 (S_89 x_2482))))
(declare-fun take_8 (list_41 Int list_41) Bool)
(assert (forall ((x_2451 list_41) (x_2443 Int) (x_2444 list_41) (z_252 Int))
	(=> (and (distinct 0 (S_89 z_252)) (take_8 x_2451 z_252 x_2444)) (take_8 (cons_41 x_2443 x_2451) (S_89 z_252) (cons_41 x_2443 x_2444)))))
(assert (forall ((z_252 Int))
	(=> (distinct 0 (S_89 z_252)) (take_8 nil_41 (S_89 z_252) nil_41))))
(assert (forall ((y_198 list_41))
	(take_8 nil_41 Z_251 y_198)))
(declare-fun drop_8 (list_41 Int list_41) Bool)
(assert (forall ((x_2454 list_41) (x_2446 Int) (x_2447 list_41) (z_253 Int))
	(=> (and (distinct 0 (S_89 z_253)) (drop_8 x_2454 z_253 x_2447)) (drop_8 x_2454 (S_89 z_253) (cons_41 x_2446 x_2447)))))
(assert (forall ((z_253 Int))
	(=> (distinct (S_89 z_253) 0) (drop_8 nil_41 (S_89 z_253) nil_41))))
(assert (forall ((x_2457 list_41))
	(drop_8 x_2457 Z_251 x_2457)))
(declare-fun x_2448 (list_41 list_41 list_41) Bool)
(assert (forall ((x_2459 list_41) (z_254 Int) (xs_72 list_41) (y_200 list_41))
	(=> (x_2448 x_2459 xs_72 y_200) (x_2448 (cons_41 z_254 x_2459) (cons_41 z_254 xs_72) y_200))))
(assert (forall ((x_2460 list_41))
	(x_2448 x_2460 nil_41 x_2460)))
(assert (forall ((x_2461 list_41) (x_2462 list_41) (x_2463 list_41) (n_19 Int) (xs_73 list_41))
	(=> (and (diseqlist_41 x_2463 xs_73) (take_8 x_2461 n_19 xs_73) (drop_8 x_2462 n_19 xs_73) (x_2448 x_2463 x_2461 x_2462)) false)))
(check-sat)
