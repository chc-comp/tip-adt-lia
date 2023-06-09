(set-logic HORN)
(define-fun Z_1388 () Int 0)
(define-fun S_331 ((x Int)) Int (+ x 1))
(declare-fun unS_465 (Int Int) Bool)
(declare-fun isZ_305 (Int) Bool)
(declare-fun isS_305 (Int) Bool)
(assert (forall ((x_42585 Int))
	(unS_465 x_42585 (S_331 x_42585))))
(assert (isZ_305 Z_1388))
(assert (forall ((x_42587 Int))
	(isS_305 (S_331 x_42587))))
(declare-fun add_249 (Int Int Int) Bool)
(declare-fun minus_246 (Int Int Int) Bool)
(declare-fun le_232 (Int Int) Bool)
(declare-fun ge_232 (Int Int) Bool)
(declare-fun lt_248 (Int Int) Bool)
(declare-fun gt_235 (Int Int) Bool)
(declare-fun mult_232 (Int Int Int) Bool)
(declare-fun div_232 (Int Int Int) Bool)
(declare-fun mod_234 (Int Int Int) Bool)
(assert (forall ((y_1530 Int))
	(add_249 y_1530 Z_1388 y_1530)))
(assert (forall ((x_42527 Int) (y_1530 Int) (r_288 Int))
	(=> (add_249 r_288 x_42527 y_1530) (add_249 (S_331 r_288) (S_331 x_42527) y_1530))))
(assert (forall ((y_1530 Int))
	(minus_246 Z_1388 Z_1388 y_1530)))
(assert (forall ((x_42527 Int) (y_1530 Int) (r_288 Int))
	(=> (minus_246 r_288 x_42527 y_1530) (minus_246 (S_331 r_288) (S_331 x_42527) y_1530))))
(assert (forall ((y_1530 Int))
	(le_232 Z_1388 y_1530)))
(assert (forall ((x_42527 Int) (y_1530 Int))
	(=> (le_232 x_42527 y_1530) (le_232 (S_331 x_42527) (S_331 y_1530)))))
(assert (forall ((y_1530 Int))
	(ge_232 y_1530 Z_1388)))
(assert (forall ((x_42527 Int) (y_1530 Int))
	(=> (ge_232 x_42527 y_1530) (ge_232 (S_331 x_42527) (S_331 y_1530)))))
(assert (forall ((y_1530 Int))
	(lt_248 Z_1388 (S_331 y_1530))))
(assert (forall ((x_42527 Int) (y_1530 Int))
	(=> (lt_248 x_42527 y_1530) (lt_248 (S_331 x_42527) (S_331 y_1530)))))
(assert (forall ((y_1530 Int))
	(gt_235 (S_331 y_1530) Z_1388)))
(assert (forall ((x_42527 Int) (y_1530 Int))
	(=> (gt_235 x_42527 y_1530) (gt_235 (S_331 x_42527) (S_331 y_1530)))))
(assert (forall ((y_1530 Int))
	(mult_232 Z_1388 Z_1388 y_1530)))
(assert (forall ((x_42527 Int) (y_1530 Int) (r_288 Int) (z_1389 Int))
	(=> (and (mult_232 r_288 x_42527 y_1530) (add_249 z_1389 r_288 y_1530)) (mult_232 z_1389 (S_331 x_42527) y_1530))))
(assert (forall ((x_42527 Int) (y_1530 Int))
	(=> (lt_248 x_42527 y_1530) (div_232 Z_1388 x_42527 y_1530))))
(assert (forall ((x_42527 Int) (y_1530 Int) (r_288 Int) (z_1389 Int))
	(=> (and (ge_232 x_42527 y_1530) (minus_246 z_1389 x_42527 y_1530) (div_232 r_288 z_1389 y_1530)) (div_232 (S_331 r_288) x_42527 y_1530))))
(assert (forall ((x_42527 Int) (y_1530 Int))
	(=> (lt_248 x_42527 y_1530) (mod_234 x_42527 x_42527 y_1530))))
(assert (forall ((x_42527 Int) (y_1530 Int) (r_288 Int) (z_1389 Int))
	(=> (and (ge_232 x_42527 y_1530) (minus_246 z_1389 x_42527 y_1530) (mod_234 r_288 z_1389 y_1530)) (mod_234 r_288 x_42527 y_1530))))
(declare-datatypes ((list_159 0)) (((nil_181) (cons_159 (head_318 Int) (tail_318 list_159)))))
(declare-fun diseqlist_159 (list_159 list_159) Bool)
(declare-fun head_322 (Int list_159) Bool)
(declare-fun tail_322 (list_159 list_159) Bool)
(declare-fun isnil_181 (list_159) Bool)
(declare-fun iscons_159 (list_159) Bool)
(assert (forall ((x_42529 Int) (x_42530 list_159))
	(head_322 x_42529 (cons_159 x_42529 x_42530))))
(assert (forall ((x_42529 Int) (x_42530 list_159))
	(tail_322 x_42530 (cons_159 x_42529 x_42530))))
(assert (isnil_181 nil_181))
(assert (forall ((x_42532 Int) (x_42533 list_159))
	(iscons_159 (cons_159 x_42532 x_42533))))
(assert (forall ((x_42534 Int) (x_42535 list_159))
	(diseqlist_159 nil_181 (cons_159 x_42534 x_42535))))
(assert (forall ((x_42536 Int) (x_42537 list_159))
	(diseqlist_159 (cons_159 x_42536 x_42537) nil_181)))
(assert (forall ((x_42538 Int) (x_42539 list_159) (x_42540 Int) (x_42541 list_159))
	(=> (distinct x_42538 x_42540) (diseqlist_159 (cons_159 x_42538 x_42539) (cons_159 x_42540 x_42541)))))
(assert (forall ((x_42538 Int) (x_42539 list_159) (x_42540 Int) (x_42541 list_159))
	(=> (diseqlist_159 x_42539 x_42541) (diseqlist_159 (cons_159 x_42538 x_42539) (cons_159 x_42540 x_42541)))))
(declare-datatypes ((list_160 0)) (((nil_182) (cons_160 (head_319 list_159) (tail_319 list_160)))))
(declare-fun diseqlist_160 (list_160 list_160) Bool)
(declare-fun head_323 (list_159 list_160) Bool)
(declare-fun tail_323 (list_160 list_160) Bool)
(declare-fun isnil_182 (list_160) Bool)
(declare-fun iscons_160 (list_160) Bool)
(assert (forall ((x_42543 list_159) (x_42544 list_160))
	(head_323 x_42543 (cons_160 x_42543 x_42544))))
(assert (forall ((x_42543 list_159) (x_42544 list_160))
	(tail_323 x_42544 (cons_160 x_42543 x_42544))))
(assert (isnil_182 nil_182))
(assert (forall ((x_42546 list_159) (x_42547 list_160))
	(iscons_160 (cons_160 x_42546 x_42547))))
(assert (forall ((x_42548 list_159) (x_42549 list_160))
	(diseqlist_160 nil_182 (cons_160 x_42548 x_42549))))
(assert (forall ((x_42550 list_159) (x_42551 list_160))
	(diseqlist_160 (cons_160 x_42550 x_42551) nil_182)))
(assert (forall ((x_42552 list_159) (x_42553 list_160) (x_42554 list_159) (x_42555 list_160))
	(=> (diseqlist_159 x_42552 x_42554) (diseqlist_160 (cons_160 x_42552 x_42553) (cons_160 x_42554 x_42555)))))
(assert (forall ((x_42552 list_159) (x_42553 list_160) (x_42554 list_159) (x_42555 list_160))
	(=> (diseqlist_160 x_42553 x_42555) (diseqlist_160 (cons_160 x_42552 x_42553) (cons_160 x_42554 x_42555)))))
(declare-datatypes ((list_161 0)) (((nil_183) (cons_161 (head_320 Int) (tail_320 list_161)))))
(declare-fun diseqlist_161 (list_161 list_161) Bool)
(declare-fun head_324 (Int list_161) Bool)
(declare-fun tail_324 (list_161 list_161) Bool)
(declare-fun isnil_183 (list_161) Bool)
(declare-fun iscons_161 (list_161) Bool)
(assert (forall ((x_42557 Int) (x_42558 list_161))
	(head_324 x_42557 (cons_161 x_42557 x_42558))))
(assert (forall ((x_42557 Int) (x_42558 list_161))
	(tail_324 x_42558 (cons_161 x_42557 x_42558))))
(assert (isnil_183 nil_183))
(assert (forall ((x_42560 Int) (x_42561 list_161))
	(iscons_161 (cons_161 x_42560 x_42561))))
(assert (forall ((x_42562 Int) (x_42563 list_161))
	(diseqlist_161 nil_183 (cons_161 x_42562 x_42563))))
(assert (forall ((x_42564 Int) (x_42565 list_161))
	(diseqlist_161 (cons_161 x_42564 x_42565) nil_183)))
(assert (forall ((x_42566 Int) (x_42567 list_161) (x_42568 Int) (x_42569 list_161))
	(=> (distinct x_42566 x_42568) (diseqlist_161 (cons_161 x_42566 x_42567) (cons_161 x_42568 x_42569)))))
(assert (forall ((x_42566 Int) (x_42567 list_161) (x_42568 Int) (x_42569 list_161))
	(=> (diseqlist_161 x_42567 x_42569) (diseqlist_161 (cons_161 x_42566 x_42567) (cons_161 x_42568 x_42569)))))
(declare-datatypes ((list_162 0)) (((nil_184) (cons_162 (head_321 list_161) (tail_321 list_162)))))
(declare-fun diseqlist_162 (list_162 list_162) Bool)
(declare-fun head_325 (list_161 list_162) Bool)
(declare-fun tail_325 (list_162 list_162) Bool)
(declare-fun isnil_184 (list_162) Bool)
(declare-fun iscons_162 (list_162) Bool)
(assert (forall ((x_42571 list_161) (x_42572 list_162))
	(head_325 x_42571 (cons_162 x_42571 x_42572))))
(assert (forall ((x_42571 list_161) (x_42572 list_162))
	(tail_325 x_42572 (cons_162 x_42571 x_42572))))
(assert (isnil_184 nil_184))
(assert (forall ((x_42574 list_161) (x_42575 list_162))
	(iscons_162 (cons_162 x_42574 x_42575))))
(assert (forall ((x_42576 list_161) (x_42577 list_162))
	(diseqlist_162 nil_184 (cons_162 x_42576 x_42577))))
(assert (forall ((x_42578 list_161) (x_42579 list_162))
	(diseqlist_162 (cons_162 x_42578 x_42579) nil_184)))
(assert (forall ((x_42580 list_161) (x_42581 list_162) (x_42582 list_161) (x_42583 list_162))
	(=> (diseqlist_161 x_42580 x_42582) (diseqlist_162 (cons_162 x_42580 x_42581) (cons_162 x_42582 x_42583)))))
(assert (forall ((x_42580 list_161) (x_42581 list_162) (x_42582 list_161) (x_42583 list_162))
	(=> (diseqlist_162 x_42581 x_42583) (diseqlist_162 (cons_162 x_42580 x_42581) (cons_162 x_42582 x_42583)))))
(declare-fun weirdconcat_0 (list_159 list_160) Bool)
(assert (forall ((x_42502 list_159) (z_1384 Int) (xs_448 list_159) (xss_2 list_160))
	(=> (weirdconcat_0 x_42502 (cons_160 xs_448 xss_2)) (weirdconcat_0 (cons_159 z_1384 x_42502) (cons_160 (cons_159 z_1384 xs_448) xss_2)))))
(assert (forall ((x_42503 list_159) (xss_2 list_160))
	(=> (weirdconcat_0 x_42503 xss_2) (weirdconcat_0 x_42503 (cons_160 nil_181 xss_2)))))
(assert (weirdconcat_0 nil_181 nil_182))
(declare-fun weirdconcat_1 (list_161 list_162) Bool)
(assert (forall ((x_42507 list_161) (z_1385 Int) (xs_449 list_161) (xss_3 list_162))
	(=> (weirdconcat_1 x_42507 (cons_162 xs_449 xss_3)) (weirdconcat_1 (cons_161 z_1385 x_42507) (cons_162 (cons_161 z_1385 xs_449) xss_3)))))
(assert (forall ((x_42508 list_161) (xss_3 list_162))
	(=> (weirdconcat_1 x_42508 xss_3) (weirdconcat_1 x_42508 (cons_162 nil_183 xss_3)))))
(assert (weirdconcat_1 nil_183 nil_184))
(declare-fun x_42494 (list_159 list_159 list_159) Bool)
(assert (forall ((x_42512 list_159) (z_1386 Int) (xs_450 list_159) (y_1526 list_159))
	(=> (x_42494 x_42512 xs_450 y_1526) (x_42494 (cons_159 z_1386 x_42512) (cons_159 z_1386 xs_450) y_1526))))
(assert (forall ((x_42513 list_159))
	(x_42494 x_42513 nil_181 x_42513)))
(declare-fun concat_0 (list_159 list_160) Bool)
(assert (forall ((x_42514 list_159) (x_42515 list_159) (y_1527 list_159) (xs_451 list_160))
	(=> (and (concat_0 x_42515 xs_451) (x_42494 x_42514 y_1527 x_42515)) (concat_0 x_42514 (cons_160 y_1527 xs_451)))))
(assert (concat_0 nil_181 nil_182))
(declare-fun x_42497 (list_161 list_161 list_161) Bool)
(assert (forall ((x_42519 list_161) (z_1387 Int) (xs_452 list_161) (y_1528 list_161))
	(=> (x_42497 x_42519 xs_452 y_1528) (x_42497 (cons_161 z_1387 x_42519) (cons_161 z_1387 xs_452) y_1528))))
(assert (forall ((x_42520 list_161))
	(x_42497 x_42520 nil_183 x_42520)))
(declare-fun concat_1 (list_161 list_162) Bool)
(assert (forall ((x_42521 list_161) (x_42522 list_161) (y_1529 list_161) (xs_453 list_162))
	(=> (and (concat_1 x_42522 xs_453) (x_42497 x_42521 y_1529 x_42522)) (concat_1 x_42521 (cons_162 y_1529 xs_453)))))
(assert (concat_1 nil_183 nil_184))
(assert (forall ((x_42525 list_161) (x_42526 list_161) (x_42500 list_162))
	(=> (and (diseqlist_161 x_42525 x_42526) (concat_1 x_42525 x_42500) (weirdconcat_1 x_42526 x_42500)) false)))
(check-sat)
