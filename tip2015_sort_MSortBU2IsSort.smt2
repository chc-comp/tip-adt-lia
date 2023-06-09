(set-logic HORN)
(define-fun Z_1453 () Int 0)
(define-fun S_343 ((x Int)) Int (+ x 1))
(declare-fun unS_487 (Int Int) Bool)
(declare-fun isZ_316 (Int) Bool)
(declare-fun isS_316 (Int) Bool)
(assert (forall ((x_45666 Int))
	(unS_487 x_45666 (S_343 x_45666))))
(assert (isZ_316 Z_1453))
(assert (forall ((x_45668 Int))
	(isS_316 (S_343 x_45668))))
(declare-fun add_260 (Int Int Int) Bool)
(declare-fun minus_258 (Int Int Int) Bool)
(declare-fun le_243 (Int Int) Bool)
(declare-fun ge_243 (Int Int) Bool)
(declare-fun lt_259 (Int Int) Bool)
(declare-fun gt_246 (Int Int) Bool)
(declare-fun mult_243 (Int Int Int) Bool)
(declare-fun div_243 (Int Int Int) Bool)
(declare-fun mod_245 (Int Int Int) Bool)
(assert (forall ((y_1613 Int))
	(add_260 y_1613 Z_1453 y_1613)))
(assert (forall ((x_45664 Int) (y_1613 Int) (r_304 Int))
	(=> (add_260 r_304 x_45664 y_1613) (add_260 (S_343 r_304) (S_343 x_45664) y_1613))))
(assert (forall ((y_1613 Int))
	(minus_258 Z_1453 Z_1453 y_1613)))
(assert (forall ((x_45664 Int) (y_1613 Int) (r_304 Int))
	(=> (minus_258 r_304 x_45664 y_1613) (minus_258 (S_343 r_304) (S_343 x_45664) y_1613))))
(assert (forall ((x Int) (y Int)) (=> (<= x y) (le_243 x y))))
(assert (forall ((y_1613 Int))
	(ge_243 y_1613 Z_1453)))
(assert (forall ((x_45664 Int) (y_1613 Int))
	(=> (ge_243 x_45664 y_1613) (ge_243 (S_343 x_45664) (S_343 y_1613)))))
(assert (forall ((y_1613 Int))
	(lt_259 Z_1453 (S_343 y_1613))))
(assert (forall ((x_45664 Int) (y_1613 Int))
	(=> (lt_259 x_45664 y_1613) (lt_259 (S_343 x_45664) (S_343 y_1613)))))
(assert (forall ((x Int) (y Int)) (=> (> x y) (gt_246 x y))))
(assert (forall ((y_1613 Int))
	(mult_243 Z_1453 Z_1453 y_1613)))
(assert (forall ((x_45664 Int) (y_1613 Int) (r_304 Int) (z_1454 Int))
	(=> (and (mult_243 r_304 x_45664 y_1613) (add_260 z_1454 r_304 y_1613)) (mult_243 z_1454 (S_343 x_45664) y_1613))))
(assert (forall ((x_45664 Int) (y_1613 Int))
	(=> (lt_259 x_45664 y_1613) (div_243 Z_1453 x_45664 y_1613))))
(assert (forall ((x_45664 Int) (y_1613 Int) (r_304 Int) (z_1454 Int))
	(=> (and (ge_243 x_45664 y_1613) (minus_258 z_1454 x_45664 y_1613) (div_243 r_304 z_1454 y_1613)) (div_243 (S_343 r_304) x_45664 y_1613))))
(assert (forall ((x_45664 Int) (y_1613 Int))
	(=> (lt_259 x_45664 y_1613) (mod_245 x_45664 x_45664 y_1613))))
(assert (forall ((x_45664 Int) (y_1613 Int) (r_304 Int) (z_1454 Int))
	(=> (and (ge_243 x_45664 y_1613) (minus_258 z_1454 x_45664 y_1613) (mod_245 r_304 z_1454 y_1613)) (mod_245 r_304 x_45664 y_1613))))
(declare-datatypes ((list_174 0)) (((nil_199) (cons_174 (head_348 Int) (tail_348 list_174)))))
(declare-fun diseqlist_174 (list_174 list_174) Bool)
(declare-fun head_350 (Int list_174) Bool)
(declare-fun tail_350 (list_174 list_174) Bool)
(declare-fun isnil_199 (list_174) Bool)
(declare-fun iscons_174 (list_174) Bool)
(assert (forall ((x_45674 Int) (x_45675 list_174))
	(head_350 x_45674 (cons_174 x_45674 x_45675))))
(assert (forall ((x_45674 Int) (x_45675 list_174))
	(tail_350 x_45675 (cons_174 x_45674 x_45675))))
(assert (isnil_199 nil_199))
(assert (forall ((x_45677 Int) (x_45678 list_174))
	(iscons_174 (cons_174 x_45677 x_45678))))
(assert (forall ((x_45679 Int) (x_45680 list_174))
	(diseqlist_174 nil_199 (cons_174 x_45679 x_45680))))
(assert (forall ((x_45681 Int) (x_45682 list_174))
	(diseqlist_174 (cons_174 x_45681 x_45682) nil_199)))
(assert (forall ((x_45683 Int) (x_45684 list_174) (x_45685 Int) (x_45686 list_174))
	(=> (distinct x_45683 x_45685) (diseqlist_174 (cons_174 x_45683 x_45684) (cons_174 x_45685 x_45686)))))
(assert (forall ((x_45683 Int) (x_45684 list_174) (x_45685 Int) (x_45686 list_174))
	(=> (diseqlist_174 x_45684 x_45686) (diseqlist_174 (cons_174 x_45683 x_45684) (cons_174 x_45685 x_45686)))))
(declare-datatypes ((list_175 0)) (((nil_200) (cons_175 (head_349 list_174) (tail_349 list_175)))))
(declare-fun diseqlist_175 (list_175 list_175) Bool)
(declare-fun head_351 (list_174 list_175) Bool)
(declare-fun tail_351 (list_175 list_175) Bool)
(declare-fun isnil_200 (list_175) Bool)
(declare-fun iscons_175 (list_175) Bool)
(assert (forall ((x_45688 list_174) (x_45689 list_175))
	(head_351 x_45688 (cons_175 x_45688 x_45689))))
(assert (forall ((x_45688 list_174) (x_45689 list_175))
	(tail_351 x_45689 (cons_175 x_45688 x_45689))))
(assert (isnil_200 nil_200))
(assert (forall ((x_45691 list_174) (x_45692 list_175))
	(iscons_175 (cons_175 x_45691 x_45692))))
(assert (forall ((x_45693 list_174) (x_45694 list_175))
	(diseqlist_175 nil_200 (cons_175 x_45693 x_45694))))
(assert (forall ((x_45695 list_174) (x_45696 list_175))
	(diseqlist_175 (cons_175 x_45695 x_45696) nil_200)))
(assert (forall ((x_45697 list_174) (x_45698 list_175) (x_45699 list_174) (x_45700 list_175))
	(=> (diseqlist_174 x_45697 x_45699) (diseqlist_175 (cons_175 x_45697 x_45698) (cons_175 x_45699 x_45700)))))
(assert (forall ((x_45697 list_174) (x_45698 list_175) (x_45699 list_174) (x_45700 list_175))
	(=> (diseqlist_175 x_45698 x_45700) (diseqlist_175 (cons_175 x_45697 x_45698) (cons_175 x_45699 x_45700)))))
(declare-fun risers_2 (list_175 list_174) Bool)
(assert (forall ((ys_144 list_174) (yss_2 list_175) (y_1607 Int) (xs_475 list_174) (y_1606 Int))
	(=> (and (le_243 y_1606 y_1607) (risers_2 (cons_175 ys_144 yss_2) (cons_174 y_1607 xs_475))) (risers_2 (cons_175 (cons_174 y_1606 ys_144) yss_2) (cons_174 y_1606 (cons_174 y_1607 xs_475))))))
(assert (forall ((x_45628 list_175) (y_1607 Int) (xs_475 list_174) (y_1606 Int))
	(=> (and (gt_246 y_1606 y_1607) (risers_2 x_45628 (cons_174 y_1607 xs_475))) (risers_2 (cons_175 (cons_174 y_1606 nil_199) x_45628) (cons_174 y_1606 (cons_174 y_1607 xs_475))))))
(assert (forall ((y_1607 Int) (xs_475 list_174) (y_1606 Int))
	(=> (and (le_243 y_1606 y_1607) (risers_2 nil_200 (cons_174 y_1607 xs_475))) (risers_2 nil_200 (cons_174 y_1606 (cons_174 y_1607 xs_475))))))
(assert (forall ((x_45632 list_175) (y_1607 Int) (xs_475 list_174) (y_1606 Int))
	(=> (and (gt_246 y_1606 y_1607) (risers_2 x_45632 (cons_174 y_1607 xs_475))) (risers_2 (cons_175 (cons_174 y_1606 nil_199) x_45632) (cons_174 y_1606 (cons_174 y_1607 xs_475))))))
(assert (forall ((y_1606 Int))
	(risers_2 (cons_175 (cons_174 y_1606 nil_199) nil_200) (cons_174 y_1606 nil_199))))
(assert (risers_2 nil_200 nil_199))
(declare-fun lmerge_9 (list_174 list_174 list_174) Bool)
(assert (forall ((x_45636 list_174) (x_45617 Int) (x_45618 list_174) (z_1450 Int) (x_45616 list_174))
	(=> (and (le_243 z_1450 x_45617) (lmerge_9 x_45636 x_45616 (cons_174 x_45617 x_45618))) (lmerge_9 (cons_174 z_1450 x_45636) (cons_174 z_1450 x_45616) (cons_174 x_45617 x_45618)))))
(assert (forall ((x_45638 list_174) (x_45617 Int) (x_45618 list_174) (z_1450 Int) (x_45616 list_174))
	(=> (and (gt_246 z_1450 x_45617) (lmerge_9 x_45638 (cons_174 z_1450 x_45616) x_45618)) (lmerge_9 (cons_174 x_45617 x_45638) (cons_174 z_1450 x_45616) (cons_174 x_45617 x_45618)))))
(assert (forall ((z_1450 Int) (x_45616 list_174))
	(lmerge_9 (cons_174 z_1450 x_45616) (cons_174 z_1450 x_45616) nil_199)))
(assert (forall ((x_45640 list_174))
	(lmerge_9 x_45640 nil_199 x_45640)))
(declare-fun pairwise_2 (list_175 list_175) Bool)
(assert (forall ((x_45642 list_174) (x_45643 list_175) (ys_145 list_174) (xss_4 list_175) (xs_476 list_174))
	(=> (and (lmerge_9 x_45642 xs_476 ys_145) (pairwise_2 x_45643 xss_4)) (pairwise_2 (cons_175 x_45642 x_45643) (cons_175 xs_476 (cons_175 ys_145 xss_4))))))
(assert (forall ((xs_476 list_174))
	(pairwise_2 (cons_175 xs_476 nil_200) (cons_175 xs_476 nil_200))))
(assert (pairwise_2 nil_200 nil_200))
(declare-fun mergingbu_2 (list_174 list_175) Bool)
(assert (forall ((x_45646 list_174) (x_45647 list_175) (z_1451 list_174) (x_45621 list_175) (xs_477 list_174))
	(=> (and (pairwise_2 x_45647 (cons_175 xs_477 (cons_175 z_1451 x_45621))) (mergingbu_2 x_45646 x_45647)) (mergingbu_2 x_45646 (cons_175 xs_477 (cons_175 z_1451 x_45621))))))
(assert (forall ((x_45649 list_174))
	(mergingbu_2 x_45649 (cons_175 x_45649 nil_200))))
(assert (mergingbu_2 nil_199 nil_200))
(declare-fun msortbu_2 (list_174 list_174) Bool)
(assert (forall ((x_45651 list_174) (x_45652 list_175) (x_45622 list_174))
	(=> (and (risers_2 x_45652 x_45622) (mergingbu_2 x_45651 x_45652)) (msortbu_2 x_45651 x_45622))))
(declare-fun insert_22 (list_174 Int list_174) Bool)
(assert (forall ((z_1452 Int) (xs_478 list_174) (x_45623 Int))
	(=> (le_243 x_45623 z_1452) (insert_22 (cons_174 x_45623 (cons_174 z_1452 xs_478)) x_45623 (cons_174 z_1452 xs_478)))))
(assert (forall ((x_45656 list_174) (z_1452 Int) (xs_478 list_174) (x_45623 Int))
	(=> (and (gt_246 x_45623 z_1452) (insert_22 x_45656 x_45623 xs_478)) (insert_22 (cons_174 z_1452 x_45656) x_45623 (cons_174 z_1452 xs_478)))))
(assert (forall ((x_45623 Int))
	(insert_22 (cons_174 x_45623 nil_199) x_45623 nil_199)))
(declare-fun isort_22 (list_174 list_174) Bool)
(assert (forall ((x_45658 list_174) (x_45659 list_174) (y_1612 Int) (xs_479 list_174))
	(=> (and (isort_22 x_45659 xs_479) (insert_22 x_45658 y_1612 x_45659)) (isort_22 x_45658 (cons_174 y_1612 xs_479)))))
(assert (isort_22 nil_199 nil_199))
(assert (forall ((x_45662 list_174) (x_45663 list_174) (xs_480 list_174))
	(=> (and (diseqlist_174 x_45662 x_45663) (msortbu_2 x_45662 xs_480) (isort_22 x_45663 xs_480)) false)))
(check-sat)
