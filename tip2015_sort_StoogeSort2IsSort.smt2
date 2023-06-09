(set-logic HORN)
(define-fun Z_936 () Int 0)
(define-fun S_255 ((x Int)) Int (+ x 1))
(declare-fun unS_331 (Int Int) Bool)
(declare-fun isZ_238 (Int) Bool)
(declare-fun isS_238 (Int) Bool)
(assert (forall ((x_25503 Int))
	(unS_331 x_25503 (S_255 x_25503))))
(assert (isZ_238 Z_936))
(assert (forall ((x_25505 Int))
	(isS_238 (S_255 x_25505))))
(declare-fun add_175 (Int Int Int) Bool)
(declare-fun minus_169 (Int Int Int) Bool)
(declare-fun mult_165 (Int Int Int) Bool)
(define-fun div_165 ((z Int) (x Int) (y Int)) Bool (= z (div x y)))
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (+ x y)) (add_175 z x y))))
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (- x y)) (minus_169 z x y))))
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (* x y)) (mult_165 z x y))))
(declare-datatypes ((list_118 0)) (((nil_131) (cons_118 (head_236 Int) (tail_236 list_118)))))
(declare-fun diseqlist_118 (list_118 list_118) Bool)
(declare-fun head_237 (Int list_118) Bool)
(declare-fun tail_237 (list_118 list_118) Bool)
(declare-fun isnil_131 (list_118) Bool)
(declare-fun iscons_118 (list_118) Bool)
(assert (forall ((x_25511 Int) (x_25512 list_118))
	(head_237 x_25511 (cons_118 x_25511 x_25512))))
(assert (forall ((x_25511 Int) (x_25512 list_118))
	(tail_237 x_25512 (cons_118 x_25511 x_25512))))
(assert (isnil_131 nil_131))
(assert (forall ((x_25514 Int) (x_25515 list_118))
	(iscons_118 (cons_118 x_25514 x_25515))))
(assert (forall ((x_25516 Int) (x_25517 list_118))
	(diseqlist_118 nil_131 (cons_118 x_25516 x_25517))))
(assert (forall ((x_25518 Int) (x_25519 list_118))
	(diseqlist_118 (cons_118 x_25518 x_25519) nil_131)))
(assert (forall ((x_25520 Int) (x_25521 list_118) (x_25522 Int) (x_25523 list_118))
	(=> (distinct x_25520 x_25522) (diseqlist_118 (cons_118 x_25520 x_25521) (cons_118 x_25522 x_25523)))))
(assert (forall ((x_25520 Int) (x_25521 list_118) (x_25522 Int) (x_25523 list_118))
	(=> (diseqlist_118 x_25521 x_25523) (diseqlist_118 (cons_118 x_25520 x_25521) (cons_118 x_25522 x_25523)))))
(declare-datatypes ((pair_40 0)) (((pair_41 (projpair_80 list_118) (projpair_81 list_118)))))
(declare-fun diseqpair_20 (pair_40 pair_40) Bool)
(declare-fun projpair_82 (list_118 pair_40) Bool)
(declare-fun projpair_83 (list_118 pair_40) Bool)
(declare-fun ispair_20 (pair_40) Bool)
(assert (forall ((x_25524 list_118) (x_25525 list_118))
	(projpair_82 x_25524 (pair_41 x_25524 x_25525))))
(assert (forall ((x_25524 list_118) (x_25525 list_118))
	(projpair_83 x_25525 (pair_41 x_25524 x_25525))))
(assert (forall ((x_25527 list_118) (x_25528 list_118))
	(ispair_20 (pair_41 x_25527 x_25528))))
(assert (forall ((x_25529 list_118) (x_25530 list_118) (x_25531 list_118) (x_25532 list_118))
	(=> (diseqlist_118 x_25529 x_25531) (diseqpair_20 (pair_41 x_25529 x_25530) (pair_41 x_25531 x_25532)))))
(assert (forall ((x_25529 list_118) (x_25530 list_118) (x_25531 list_118) (x_25532 list_118))
	(=> (diseqlist_118 x_25530 x_25532) (diseqpair_20 (pair_41 x_25529 x_25530) (pair_41 x_25531 x_25532)))))
(declare-fun take_24 (list_118 Int list_118) Bool)
(assert (forall ((x_25430 Int) (y_950 list_118))
	(=> (<= x_25430 Z_936) (take_24 nil_131 x_25430 y_950))))
(assert (forall ((x_25495 Int) (x_25447 list_118) (z_931 Int) (xs_298 list_118) (x_25430 Int))
	(=> (and (> x_25430 Z_936) (take_24 x_25447 x_25495 xs_298) (minus_169 x_25495 x_25430 (S_255 Z_936))) (take_24 (cons_118 z_931 x_25447) x_25430 (cons_118 z_931 xs_298)))))
(assert (forall ((x_25430 Int) (y_950 list_118))
	(=> (<= x_25430 Z_936) (take_24 nil_131 x_25430 y_950))))
(assert (forall ((x_25430 Int))
	(=> (> x_25430 Z_936) (take_24 nil_131 x_25430 nil_131))))
(declare-fun sort_14 (list_118 Int Int) Bool)
(assert (forall ((x_25431 Int) (y_951 Int))
	(=> (<= x_25431 y_951) (sort_14 (cons_118 x_25431 (cons_118 y_951 nil_131)) x_25431 y_951))))
(assert (forall ((x_25431 Int) (y_951 Int))
	(=> (> x_25431 y_951) (sort_14 (cons_118 y_951 (cons_118 x_25431 nil_131)) x_25431 y_951))))
(declare-fun length_12 (Int list_118) Bool)
(assert (forall ((x_25452 Int) (x_25453 Int) (y_952 Int) (l_14 list_118))
	(=> (and (length_12 x_25453 l_14) (add_175 x_25452 (S_255 Z_936) x_25453)) (length_12 x_25452 (cons_118 y_952 l_14)))))
(assert (length_12 Z_936 nil_131))
(declare-fun insert_12 (list_118 Int list_118) Bool)
(assert (forall ((z_932 Int) (xs_299 list_118) (x_25433 Int))
	(=> (<= x_25433 z_932) (insert_12 (cons_118 x_25433 (cons_118 z_932 xs_299)) x_25433 (cons_118 z_932 xs_299)))))
(assert (forall ((x_25457 list_118) (z_932 Int) (xs_299 list_118) (x_25433 Int))
	(=> (and (> x_25433 z_932) (insert_12 x_25457 x_25433 xs_299)) (insert_12 (cons_118 z_932 x_25457) x_25433 (cons_118 z_932 xs_299)))))
(assert (forall ((x_25433 Int))
	(insert_12 (cons_118 x_25433 nil_131) x_25433 nil_131)))
(declare-fun isort_12 (list_118 list_118) Bool)
(assert (forall ((x_25459 list_118) (x_25460 list_118) (y_954 Int) (xs_300 list_118))
	(=> (and (isort_12 x_25460 xs_300) (insert_12 x_25459 y_954 x_25460)) (isort_12 x_25459 (cons_118 y_954 xs_300)))))
(assert (isort_12 nil_131 nil_131))
(declare-fun drop_26 (list_118 Int list_118) Bool)
(assert (forall ((x_25463 list_118) (x_25435 Int))
	(=> (<= x_25435 Z_936) (drop_26 x_25463 x_25435 x_25463))))
(assert (forall ((x_25497 Int) (x_25464 list_118) (z_933 Int) (xs_301 list_118) (x_25435 Int))
	(=> (and (> x_25435 Z_936) (drop_26 x_25464 x_25497 xs_301) (minus_169 x_25497 x_25435 (S_255 Z_936))) (drop_26 x_25464 x_25435 (cons_118 z_933 xs_301)))))
(assert (forall ((x_25466 list_118) (x_25435 Int))
	(=> (<= x_25435 Z_936) (drop_26 x_25466 x_25435 x_25466))))
(assert (forall ((x_25435 Int))
	(=> (> x_25435 Z_936) (drop_26 nil_131 x_25435 nil_131))))
(declare-fun splitAt_7 (pair_40 Int list_118) Bool)
(assert (forall ((x_25469 list_118) (x_25470 list_118) (x_25436 Int) (y_956 list_118))
	(=> (and (take_24 x_25469 x_25436 y_956) (drop_26 x_25470 x_25436 y_956)) (splitAt_7 (pair_41 x_25469 x_25470) x_25436 y_956))))
(declare-fun x_25437 (list_118 list_118 list_118) Bool)
(assert (forall ((x_25472 list_118) (z_934 Int) (xs_302 list_118) (y_957 list_118))
	(=> (x_25437 x_25472 xs_302 y_957) (x_25437 (cons_118 z_934 x_25472) (cons_118 z_934 xs_302) y_957))))
(assert (forall ((x_25473 list_118))
	(x_25437 x_25473 nil_131 x_25473)))
(declare-fun stoogesort_12 (list_118 list_118) Bool)
(declare-fun stoogesort_13 (list_118 list_118) Bool)
(declare-fun stoogesort_14 (list_118 list_118) Bool)
(assert (forall ((x_25498 Int) (x_25499 Int) (x_25500 Int) (x_25476 list_118) (x_25477 list_118) (x_25474 Int) (ys_90 list_118) (zs_24 list_118) (x_25439 list_118))
	(=> (and (stoogesort_13 x_25477 ys_90) (x_25437 x_25476 x_25477 zs_24) (length_12 x_25474 x_25439) (splitAt_7 (pair_41 ys_90 zs_24) x_25500 x_25439) (mult_165 x_25498 (S_255 (S_255 Z_936)) x_25474) (add_175 x_25499 x_25498 (S_255 Z_936)) (div_165 x_25500 x_25499 (S_255 (S_255 (S_255 Z_936))))) (stoogesort_12 x_25476 x_25439))))
(assert (forall ((x_25479 list_118) (x_25480 list_118) (x_25481 list_118) (x_25442 Int) (x_25443 list_118) (y_959 Int) (y_958 Int))
	(=> (and (stoogesort_12 x_25480 (cons_118 y_958 (cons_118 y_959 (cons_118 x_25442 x_25443)))) (stoogesort_14 x_25481 x_25480) (stoogesort_12 x_25479 x_25481)) (stoogesort_13 x_25479 (cons_118 y_958 (cons_118 y_959 (cons_118 x_25442 x_25443)))))))
(assert (forall ((x_25483 list_118) (y_959 Int) (y_958 Int))
	(=> (sort_14 x_25483 y_958 y_959) (stoogesort_13 x_25483 (cons_118 y_958 (cons_118 y_959 nil_131))))))
(assert (forall ((y_958 Int))
	(stoogesort_13 (cons_118 y_958 nil_131) (cons_118 y_958 nil_131))))
(assert (stoogesort_13 nil_131 nil_131))
(assert (forall ((x_25501 Int) (x_25489 list_118) (x_25490 list_118) (x_25487 Int) (ys_91 list_118) (zs_25 list_118) (x_25444 list_118))
	(=> (and (stoogesort_13 x_25490 zs_25) (x_25437 x_25489 ys_91 x_25490) (length_12 x_25487 x_25444) (splitAt_7 (pair_41 ys_91 zs_25) x_25501 x_25444) (div_165 x_25501 x_25487 (S_255 (S_255 (S_255 Z_936))))) (stoogesort_14 x_25489 x_25444))))
(assert (forall ((x_25492 list_118) (x_25493 list_118) (xs_303 list_118))
	(=> (and (diseqlist_118 x_25492 x_25493) (stoogesort_13 x_25492 xs_303) (isort_12 x_25493 xs_303)) false)))
(check-sat)
