(set-logic HORN)
(define-fun Z_1280 () Int 0)
(define-fun S_310 ((x Int)) Int (+ x 1))
(define-fun zero_85 () Int 0)
(define-fun succ_83 ((x Int)) Int (+ x 1))
(declare-fun unS_433 (Int Int) Bool)
(declare-fun isZ_289 (Int) Bool)
(declare-fun isS_289 (Int) Bool)
(assert (forall ((x_34682 Int))
	(unS_433 x_34682 (S_310 x_34682))))
(assert (isZ_289 Z_1280))
(assert (forall ((x_34684 Int))
	(isS_289 (S_310 x_34684))))
(declare-fun add_232 (Int Int Int) Bool)
(declare-fun minus_228 (Int Int Int) Bool)
(declare-fun le_216 (Int Int) Bool)
(declare-fun ge_216 (Int Int) Bool)
(declare-fun lt_231 (Int Int) Bool)
(declare-fun gt_219 (Int Int) Bool)
(declare-fun mult_216 (Int Int Int) Bool)
(declare-fun div_216 (Int Int Int) Bool)
(declare-fun mod_218 (Int Int Int) Bool)
(assert (forall ((y_1382 Int))
	(add_232 y_1382 Z_1280 y_1382)))
(assert (forall ((x_34658 Int) (y_1382 Int) (r_263 Int))
	(=> (add_232 r_263 x_34658 y_1382) (add_232 (S_310 r_263) (S_310 x_34658) y_1382))))
(assert (forall ((y_1382 Int))
	(minus_228 Z_1280 Z_1280 y_1382)))
(assert (forall ((x_34658 Int) (y_1382 Int) (r_263 Int))
	(=> (minus_228 r_263 x_34658 y_1382) (minus_228 (S_310 r_263) (S_310 x_34658) y_1382))))
(assert (forall ((y_1382 Int))
	(le_216 Z_1280 y_1382)))
(assert (forall ((x_34658 Int) (y_1382 Int))
	(=> (le_216 x_34658 y_1382) (le_216 (S_310 x_34658) (S_310 y_1382)))))
(assert (forall ((y_1382 Int))
	(ge_216 y_1382 Z_1280)))
(assert (forall ((x_34658 Int) (y_1382 Int))
	(=> (ge_216 x_34658 y_1382) (ge_216 (S_310 x_34658) (S_310 y_1382)))))
(assert (forall ((y_1382 Int))
	(lt_231 Z_1280 (S_310 y_1382))))
(assert (forall ((x_34658 Int) (y_1382 Int))
	(=> (lt_231 x_34658 y_1382) (lt_231 (S_310 x_34658) (S_310 y_1382)))))
(assert (forall ((y_1382 Int))
	(gt_219 (S_310 y_1382) Z_1280)))
(assert (forall ((x_34658 Int) (y_1382 Int))
	(=> (gt_219 x_34658 y_1382) (gt_219 (S_310 x_34658) (S_310 y_1382)))))
(assert (forall ((y_1382 Int))
	(mult_216 Z_1280 Z_1280 y_1382)))
(assert (forall ((x_34658 Int) (y_1382 Int) (r_263 Int) (z_1281 Int))
	(=> (and (mult_216 r_263 x_34658 y_1382) (add_232 z_1281 r_263 y_1382)) (mult_216 z_1281 (S_310 x_34658) y_1382))))
(assert (forall ((x_34658 Int) (y_1382 Int))
	(=> (lt_231 x_34658 y_1382) (div_216 Z_1280 x_34658 y_1382))))
(assert (forall ((x_34658 Int) (y_1382 Int) (r_263 Int) (z_1281 Int))
	(=> (and (ge_216 x_34658 y_1382) (minus_228 z_1281 x_34658 y_1382) (div_216 r_263 z_1281 y_1382)) (div_216 (S_310 r_263) x_34658 y_1382))))
(assert (forall ((x_34658 Int) (y_1382 Int))
	(=> (lt_231 x_34658 y_1382) (mod_218 x_34658 x_34658 y_1382))))
(assert (forall ((x_34658 Int) (y_1382 Int) (r_263 Int) (z_1281 Int))
	(=> (and (ge_216 x_34658 y_1382) (minus_228 z_1281 x_34658 y_1382) (mod_218 r_263 z_1281 y_1382)) (mod_218 r_263 x_34658 y_1382))))
(declare-datatypes ((list_150 0)) (((nil_169) (cons_150 (head_300 Int) (tail_300 list_150)))))
(declare-fun diseqlist_150 (list_150 list_150) Bool)
(declare-fun head_301 (Int list_150) Bool)
(declare-fun tail_301 (list_150 list_150) Bool)
(declare-fun isnil_169 (list_150) Bool)
(declare-fun iscons_150 (list_150) Bool)
(assert (forall ((x_34660 Int) (x_34661 list_150))
	(head_301 x_34660 (cons_150 x_34660 x_34661))))
(assert (forall ((x_34660 Int) (x_34661 list_150))
	(tail_301 x_34661 (cons_150 x_34660 x_34661))))
(assert (isnil_169 nil_169))
(assert (forall ((x_34663 Int) (x_34664 list_150))
	(iscons_150 (cons_150 x_34663 x_34664))))
(assert (forall ((x_34665 Int) (x_34666 list_150))
	(diseqlist_150 nil_169 (cons_150 x_34665 x_34666))))
(assert (forall ((x_34667 Int) (x_34668 list_150))
	(diseqlist_150 (cons_150 x_34667 x_34668) nil_169)))
(assert (forall ((x_34669 Int) (x_34670 list_150) (x_34671 Int) (x_34672 list_150))
	(=> (distinct x_34669 x_34671) (diseqlist_150 (cons_150 x_34669 x_34670) (cons_150 x_34671 x_34672)))))
(assert (forall ((x_34669 Int) (x_34670 list_150) (x_34671 Int) (x_34672 list_150))
	(=> (diseqlist_150 x_34670 x_34672) (diseqlist_150 (cons_150 x_34669 x_34670) (cons_150 x_34671 x_34672)))))
(declare-fun p_236 (Int Int) Bool)
(declare-fun iszero_83 (Int) Bool)
(declare-fun issucc_83 (Int) Bool)
(assert (forall ((x_34674 Int))
	(p_236 x_34674 (succ_83 x_34674))))
(assert (iszero_83 zero_85))
(assert (forall ((x_34676 Int))
	(issucc_83 (succ_83 x_34676))))
(declare-fun take_34 (list_150 Int list_150) Bool)
(assert (forall ((x_34606 list_150) (z_1270 Int) (xs_405 list_150) (z_1269 Int))
	(=> (and (>= z_1269 0) (take_34 x_34606 z_1269 xs_405)) (take_34 (cons_150 z_1270 x_34606) (succ_83 z_1269) (cons_150 z_1270 xs_405)))))
(assert (forall ((z_1269 Int))
	(take_34 nil_169 z_1269 nil_169)))
(assert (forall ((z Int) (y_1370 list_150))
	(=> (<= z 0) (take_34 nil_169 z y_1370))))
(declare-fun plus_77 (Int Int Int) Bool)
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (+ x y)) (plus_77 z x y))))
(declare-fun minus_227 (Int Int Int) Bool)
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (- x y)) (minus_227 z x y))))
(declare-fun length_22 (Int list_150) Bool)
(assert (forall ((x_34616 Int) (x_34617 Int) (y_1374 Int) (l_24 list_150))
	(=> (and (length_22 x_34617 l_24) (plus_77 x_34616 (succ_83 zero_85) x_34617)) (length_22 x_34616 (cons_150 y_1374 l_24)))))
(assert (length_22 zero_85 nil_169))
(declare-fun go_1 (Int Int Int Int) Bool)
(assert (forall ((x_34620 Int) (x_34594 Int) (x_34593 Int) (x_34592 Int))
	(=> (and (>= x_34592 0) (>= x_34594 0) (>= x_34593 0) (go_1 x_34620 x_34593 x_34594 (succ_83 x_34592))) (go_1 x_34620 (succ_83 x_34593) (succ_83 x_34594) (succ_83 x_34592)))))
(assert (forall ((x_34622 Int) (x_34593 Int) (x_34592 Int))
	(=> (and (>= x_34592 0) (>= x_34593 0) (go_1 x_34622 x_34593 x_34592 (succ_83 x_34592))) (go_1 x_34622 (succ_83 x_34593) zero_85 (succ_83 x_34592)))))
(assert (forall ((x_34624 Int) (x_34595 Int) (x_34592 Int))
	(=> (and (>= x_34592 0) (>= x_34595 0) (minus_227 x_34624 (succ_83 x_34592) (succ_83 x_34595))) (go_1 x_34624 zero_85 (succ_83 x_34595) (succ_83 x_34592)))))
(assert (forall ((x_34592 Int))
	(=> (>= x_34592 0) (go_1 zero_85 zero_85 zero_85 (succ_83 x_34592)))))
(assert (forall ((x_34591 Int) (y_1375 Int))
	(go_1 zero_85 x_34591 y_1375 zero_85)))
(declare-fun modstructural_1 (Int Int Int) Bool)
(assert (forall ((x_34628 Int) (x_34596 Int) (y_1376 Int))
	(=> (go_1 x_34628 x_34596 zero_85 y_1376) (modstructural_1 x_34628 x_34596 y_1376))))
(declare-fun drop_36 (list_150 Int list_150) Bool)
(assert (forall ((x_34630 list_150) (z_1275 Int) (xs_406 list_150) (z_1274 Int))
	(=> (and (>= z_1274 0) (drop_36 x_34630 z_1274 xs_406)) (drop_36 x_34630 (succ_83 z_1274) (cons_150 z_1275 xs_406)))))
(assert (forall ((z_1274 Int))
	(drop_36 nil_169 z_1274 nil_169)))
(assert (forall ((z Int) (x_34633 list_150))
	(=> (<= z 0) (drop_36 x_34633 z x_34633))))
(declare-fun x_34598 (list_150 list_150 list_150) Bool)
(assert (forall ((x_34635 list_150) (z_1276 Int) (xs_407 list_150) (y_1378 list_150))
	(=> (x_34598 x_34635 xs_407 y_1378) (x_34598 (cons_150 z_1276 x_34635) (cons_150 z_1276 xs_407) y_1378))))
(assert (forall ((x_34636 list_150))
	(x_34598 x_34636 nil_169 x_34636)))
(declare-fun rotate_3 (list_150 Int list_150) Bool)
(assert (forall ((x_34637 list_150) (x_34638 list_150) (z_1278 Int) (xs_408 list_150) (z_1277 Int))
	(=> (and (>= z_1277 0) (x_34598 x_34638 xs_408 (cons_150 z_1278 nil_169)) (rotate_3 x_34637 z_1277 x_34638)) (rotate_3 x_34637 (succ_83 z_1277) (cons_150 z_1278 xs_408)))))
(assert (forall ((z_1277 Int))
	(=> (>= z_1277 0) (rotate_3 nil_169 (succ_83 z_1277) nil_169))))
(assert (forall ((z Int) (x_34641 list_150))
	(=> (<= z 0) (rotate_3 x_34641 z x_34641))))
(assert (forall ((x_34642 Int) (x_34643 Int) (x_34644 Int) (x_34645 Int) (x_34601 Int) (y_1380 Int) (z_1279 Int))
	(=> (and (distinct x_34643 x_34645) (plus_77 x_34642 y_1380 z_1279) (plus_77 x_34643 x_34601 x_34642) (plus_77 x_34644 x_34601 y_1380) (plus_77 x_34645 x_34644 z_1279)) false)))
(assert (forall ((x_34646 Int) (x_34647 Int) (x_34602 Int) (y_1381 Int))
	(=> (and (distinct x_34646 x_34647) (plus_77 x_34646 x_34602 y_1381) (plus_77 x_34647 y_1381 x_34602)) false)))
(assert (forall ((x_34648 Int) (x_34603 Int))
	(=> (and (distinct x_34648 x_34603) (plus_77 x_34648 x_34603 zero_85)) false)))
(assert (forall ((x_34649 Int) (x_34604 Int))
	(=> (and (distinct x_34649 x_34604) (plus_77 x_34649 zero_85 x_34604)) false)))
(assert (forall ((x_34650 list_150) (x_34651 Int) (x_34652 Int) (x_34653 list_150) (x_34654 Int) (x_34655 Int) (x_34656 list_150) (x_34657 list_150) (n_75 Int) (xs_409 list_150))
	(=> (and (diseqlist_150 x_34650 x_34657) (rotate_3 x_34650 n_75 xs_409) (length_22 x_34651 xs_409) (modstructural_1 x_34652 n_75 x_34651) (drop_36 x_34653 x_34652 xs_409) (length_22 x_34654 xs_409) (modstructural_1 x_34655 n_75 x_34654) (take_34 x_34656 x_34655 xs_409) (x_34598 x_34657 x_34653 x_34656)) false)))
(check-sat)