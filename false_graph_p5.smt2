(set-logic HORN)
(define-fun Z_2800 () Int 0)
(define-fun S_643 ((x Int)) Int (+ x 1))
(declare-fun unS_899 (Int Int) Bool)
(declare-fun isZ_579 (Int) Bool)
(declare-fun isS_579 (Int) Bool)
(assert (forall ((x_127656 Int))
	(unS_899 x_127656 (S_643 x_127656))))
(assert (isZ_579 Z_2800))
(assert (forall ((x_127658 Int))
	(isS_579 (S_643 x_127658))))
(declare-fun add_484 (Int Int Int) Bool)
(declare-fun minus_470 (Int Int Int) Bool)
(declare-fun mult_450 (Int Int Int) Bool)
(declare-fun div_449 (Int Int Int) Bool)
(declare-fun mod_451 (Int Int Int) Bool)
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (+ x y)) (add_484 z x y))))
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (- x y)) (minus_470 z x y))))
(assert (forall ((y_3270 Int))
	(mult_450 Z_2800 Z_2800 y_3270)))
(assert (forall ((x_127644 Int) (y_3270 Int) (r_679 Int) (z_2801 Int))
	(=> (and (mult_450 r_679 x_127644 y_3270) (add_484 z_2801 r_679 y_3270)) (mult_450 z_2801 (S_643 x_127644) y_3270))))
(assert (forall ((x_127644 Int) (y_3270 Int))
	(=> (< x_127644 y_3270) (div_449 Z_2800 x_127644 y_3270))))
(assert (forall ((x_127644 Int) (y_3270 Int) (r_679 Int) (z_2801 Int))
	(=> (and (>= x_127644 y_3270) (minus_470 z_2801 x_127644 y_3270) (div_449 r_679 z_2801 y_3270)) (div_449 (S_643 r_679) x_127644 y_3270))))
(assert (forall ((x_127644 Int) (y_3270 Int))
	(=> (< x_127644 y_3270) (mod_451 x_127644 x_127644 y_3270))))
(assert (forall ((x_127644 Int) (y_3270 Int) (r_679 Int) (z_2801 Int))
	(=> (and (>= x_127644 y_3270) (minus_470 z_2801 x_127644 y_3270) (mod_451 r_679 z_2801 y_3270)) (mod_451 r_679 x_127644 y_3270))))
(declare-datatypes ((Bool_449 0)) (((false_449) (true_449))))
(declare-fun diseqBool_225 (Bool_449 Bool_449) Bool)
(declare-fun isfalse_225 (Bool_449) Bool)
(declare-fun istrue_225 (Bool_449) Bool)
(assert (isfalse_225 false_449))
(assert (istrue_225 true_449))
(assert (diseqBool_225 false_449 true_449))
(assert (diseqBool_225 true_449 false_449))
(declare-fun and_457 (Bool_449 Bool_449 Bool_449) Bool)
(declare-fun or_471 (Bool_449 Bool_449 Bool_449) Bool)
(declare-fun hence_449 (Bool_449 Bool_449 Bool_449) Bool)
(declare-fun not_454 (Bool_449 Bool_449) Bool)
(assert (and_457 false_449 false_449 false_449))
(assert (and_457 false_449 true_449 false_449))
(assert (and_457 false_449 false_449 true_449))
(assert (and_457 true_449 true_449 true_449))
(assert (or_471 false_449 false_449 false_449))
(assert (or_471 true_449 true_449 false_449))
(assert (or_471 true_449 false_449 true_449))
(assert (or_471 true_449 true_449 true_449))
(assert (hence_449 true_449 false_449 false_449))
(assert (hence_449 false_449 true_449 false_449))
(assert (hence_449 true_449 false_449 true_449))
(assert (hence_449 true_449 true_449 true_449))
(assert (not_454 true_449 false_449))
(assert (not_454 false_449 true_449))
(declare-datatypes ((pair_210 0)) (((pair_211 (projpair_420 Int) (projpair_421 Int)))))
(declare-fun diseqpair_105 (pair_210 pair_210) Bool)
(declare-fun projpair_422 (Int pair_210) Bool)
(declare-fun projpair_423 (Int pair_210) Bool)
(declare-fun ispair_105 (pair_210) Bool)
(assert (forall ((x_127665 Int) (x_127666 Int))
	(projpair_422 x_127665 (pair_211 x_127665 x_127666))))
(assert (forall ((x_127665 Int) (x_127666 Int))
	(projpair_423 x_127666 (pair_211 x_127665 x_127666))))
(assert (forall ((x_127668 Int) (x_127669 Int))
	(ispair_105 (pair_211 x_127668 x_127669))))
(assert (forall ((x_127670 Int) (x_127671 Int) (x_127672 Int) (x_127673 Int))
	(=> (distinct x_127670 x_127672) (diseqpair_105 (pair_211 x_127670 x_127671) (pair_211 x_127672 x_127673)))))
(assert (forall ((x_127670 Int) (x_127671 Int) (x_127672 Int) (x_127673 Int))
	(=> (distinct x_127671 x_127673) (diseqpair_105 (pair_211 x_127670 x_127671) (pair_211 x_127672 x_127673)))))
(declare-datatypes ((list_413 0)) (((nil_475) (cons_407 (head_814 Bool_449) (tail_820 list_413)))))
(declare-fun diseqlist_407 (list_413 list_413) Bool)
(declare-fun head_818 (Bool_449 list_413) Bool)
(declare-fun tail_824 (list_413 list_413) Bool)
(declare-fun isnil_475 (list_413) Bool)
(declare-fun iscons_407 (list_413) Bool)
(assert (forall ((x_127675 Bool_449) (x_127676 list_413))
	(head_818 x_127675 (cons_407 x_127675 x_127676))))
(assert (forall ((x_127675 Bool_449) (x_127676 list_413))
	(tail_824 x_127676 (cons_407 x_127675 x_127676))))
(assert (isnil_475 nil_475))
(assert (forall ((x_127678 Bool_449) (x_127679 list_413))
	(iscons_407 (cons_407 x_127678 x_127679))))
(assert (forall ((x_127680 Bool_449) (x_127681 list_413))
	(diseqlist_407 nil_475 (cons_407 x_127680 x_127681))))
(assert (forall ((x_127682 Bool_449) (x_127683 list_413))
	(diseqlist_407 (cons_407 x_127682 x_127683) nil_475)))
(assert (forall ((x_127684 Bool_449) (x_127685 list_413) (x_127686 Bool_449) (x_127687 list_413))
	(=> (diseqBool_225 x_127684 x_127686) (diseqlist_407 (cons_407 x_127684 x_127685) (cons_407 x_127686 x_127687)))))
(assert (forall ((x_127684 Bool_449) (x_127685 list_413) (x_127686 Bool_449) (x_127687 list_413))
	(=> (diseqlist_407 x_127685 x_127687) (diseqlist_407 (cons_407 x_127684 x_127685) (cons_407 x_127686 x_127687)))))
(declare-datatypes ((list_414 0)) (((nil_476) (cons_408 (head_815 Int) (tail_821 list_414)))))
(declare-fun diseqlist_408 (list_414 list_414) Bool)
(declare-fun head_819 (Int list_414) Bool)
(declare-fun tail_825 (list_414 list_414) Bool)
(declare-fun isnil_476 (list_414) Bool)
(declare-fun iscons_408 (list_414) Bool)
(assert (forall ((x_127689 Int) (x_127690 list_414))
	(head_819 x_127689 (cons_408 x_127689 x_127690))))
(assert (forall ((x_127689 Int) (x_127690 list_414))
	(tail_825 x_127690 (cons_408 x_127689 x_127690))))
(assert (isnil_476 nil_476))
(assert (forall ((x_127692 Int) (x_127693 list_414))
	(iscons_408 (cons_408 x_127692 x_127693))))
(assert (forall ((x_127694 Int) (x_127695 list_414))
	(diseqlist_408 nil_476 (cons_408 x_127694 x_127695))))
(assert (forall ((x_127696 Int) (x_127697 list_414))
	(diseqlist_408 (cons_408 x_127696 x_127697) nil_476)))
(assert (forall ((x_127698 Int) (x_127699 list_414) (x_127700 Int) (x_127701 list_414))
	(=> (distinct x_127698 x_127700) (diseqlist_408 (cons_408 x_127698 x_127699) (cons_408 x_127700 x_127701)))))
(assert (forall ((x_127698 Int) (x_127699 list_414) (x_127700 Int) (x_127701 list_414))
	(=> (diseqlist_408 x_127699 x_127701) (diseqlist_408 (cons_408 x_127698 x_127699) (cons_408 x_127700 x_127701)))))
(declare-datatypes ((list_415 0)) (((nil_477) (cons_409 (head_816 pair_210) (tail_822 list_415)))))
(declare-fun diseqlist_409 (list_415 list_415) Bool)
(declare-fun head_820 (pair_210 list_415) Bool)
(declare-fun tail_826 (list_415 list_415) Bool)
(declare-fun isnil_477 (list_415) Bool)
(declare-fun iscons_409 (list_415) Bool)
(assert (forall ((x_127703 pair_210) (x_127704 list_415))
	(head_820 x_127703 (cons_409 x_127703 x_127704))))
(assert (forall ((x_127703 pair_210) (x_127704 list_415))
	(tail_826 x_127704 (cons_409 x_127703 x_127704))))
(assert (isnil_477 nil_477))
(assert (forall ((x_127706 pair_210) (x_127707 list_415))
	(iscons_409 (cons_409 x_127706 x_127707))))
(assert (forall ((x_127708 pair_210) (x_127709 list_415))
	(diseqlist_409 nil_477 (cons_409 x_127708 x_127709))))
(assert (forall ((x_127710 pair_210) (x_127711 list_415))
	(diseqlist_409 (cons_409 x_127710 x_127711) nil_477)))
(assert (forall ((x_127712 pair_210) (x_127713 list_415) (x_127714 pair_210) (x_127715 list_415))
	(=> (diseqpair_105 x_127712 x_127714) (diseqlist_409 (cons_409 x_127712 x_127713) (cons_409 x_127714 x_127715)))))
(assert (forall ((x_127712 pair_210) (x_127713 list_415) (x_127714 pair_210) (x_127715 list_415))
	(=> (diseqlist_409 x_127713 x_127715) (diseqlist_409 (cons_409 x_127712 x_127713) (cons_409 x_127714 x_127715)))))
(declare-datatypes ((list_416 0)) (((nil_478) (cons_410 (head_817 list_415) (tail_823 list_416)))))
(declare-fun diseqlist_410 (list_416 list_416) Bool)
(declare-fun head_821 (list_415 list_416) Bool)
(declare-fun tail_827 (list_416 list_416) Bool)
(declare-fun isnil_478 (list_416) Bool)
(declare-fun iscons_410 (list_416) Bool)
(assert (forall ((x_127717 list_415) (x_127718 list_416))
	(head_821 x_127717 (cons_410 x_127717 x_127718))))
(assert (forall ((x_127717 list_415) (x_127718 list_416))
	(tail_827 x_127718 (cons_410 x_127717 x_127718))))
(assert (isnil_478 nil_478))
(assert (forall ((x_127720 list_415) (x_127721 list_416))
	(iscons_410 (cons_410 x_127720 x_127721))))
(assert (forall ((x_127722 list_415) (x_127723 list_416))
	(diseqlist_410 nil_478 (cons_410 x_127722 x_127723))))
(assert (forall ((x_127724 list_415) (x_127725 list_416))
	(diseqlist_410 (cons_410 x_127724 x_127725) nil_478)))
(assert (forall ((x_127726 list_415) (x_127727 list_416) (x_127728 list_415) (x_127729 list_416))
	(=> (diseqlist_409 x_127726 x_127728) (diseqlist_410 (cons_410 x_127726 x_127727) (cons_410 x_127728 x_127729)))))
(assert (forall ((x_127726 list_415) (x_127727 list_416) (x_127728 list_415) (x_127729 list_416))
	(=> (diseqlist_410 x_127727 x_127729) (diseqlist_410 (cons_410 x_127726 x_127727) (cons_410 x_127728 x_127729)))))
(declare-datatypes ((Maybe_27 0)) (((Nothing_27) (Just_27 (projJust_54 Int)))))
(declare-fun diseqMaybe_27 (Maybe_27 Maybe_27) Bool)
(declare-fun projJust_55 (Int Maybe_27) Bool)
(declare-fun isNothing_27 (Maybe_27) Bool)
(declare-fun isJust_27 (Maybe_27) Bool)
(assert (forall ((x_127731 Int))
	(projJust_55 x_127731 (Just_27 x_127731))))
(assert (isNothing_27 Nothing_27))
(assert (forall ((x_127733 Int))
	(isJust_27 (Just_27 x_127733))))
(assert (forall ((x_127734 Int))
	(diseqMaybe_27 Nothing_27 (Just_27 x_127734))))
(assert (forall ((x_127735 Int))
	(diseqMaybe_27 (Just_27 x_127735) Nothing_27)))
(assert (forall ((x_127736 Int) (x_127737 Int))
	(=> (distinct x_127736 x_127737) (diseqMaybe_27 (Just_27 x_127736) (Just_27 x_127737)))))
(declare-fun primEnumFromTo_14 (list_414 Int Int) Bool)
(assert (forall ((x_127559 Int) (y_3259 Int))
	(=> (> x_127559 y_3259) (primEnumFromTo_14 nil_476 x_127559 y_3259))))
(assert (forall ((x_127645 Int) (x_127576 list_414) (x_127559 Int) (y_3259 Int))
	(=> (and (<= x_127559 y_3259) (primEnumFromTo_14 x_127576 x_127645 y_3259) (add_484 x_127645 (S_643 Z_2800) x_127559)) (primEnumFromTo_14 (cons_408 x_127559 x_127576) x_127559 y_3259))))
(declare-fun petersen_28 (list_415 Int list_414) Bool)
(assert (forall ((x_127646 Int) (x_127578 list_415) (z_2793 Int) (x_127561 list_414) (x_127560 Int))
	(=> (and (petersen_28 x_127578 x_127560 x_127561) (add_484 x_127646 x_127560 z_2793)) (petersen_28 (cons_409 (pair_211 z_2793 x_127646) x_127578) x_127560 (cons_408 z_2793 x_127561)))))
(assert (forall ((x_127560 Int))
	(petersen_28 nil_477 x_127560 nil_476)))
(declare-fun petersen_29 (list_415 list_414) Bool)
(assert (forall ((x_127647 Int) (x_127581 list_415) (y_3261 Int) (z_2794 list_414))
	(=> (and (petersen_29 x_127581 z_2794) (add_484 x_127647 (S_643 Z_2800) y_3261)) (petersen_29 (cons_409 (pair_211 y_3261 x_127647) x_127581) (cons_408 y_3261 z_2794)))))
(assert (petersen_29 nil_477 nil_476))
(declare-fun petersen_30 (list_416 Int list_415) Bool)
(assert (forall ((x_127648 Int) (x_127649 Int) (x_127584 list_416) (u_33 Int) (v_34 Int) (x_127564 list_415) (x_127563 Int))
	(=> (and (petersen_30 x_127584 x_127563 x_127564) (add_484 x_127648 x_127563 u_33) (add_484 x_127649 x_127563 v_34)) (petersen_30 (cons_410 (cons_409 (pair_211 u_33 v_34) (cons_409 (pair_211 x_127648 x_127649) nil_477)) x_127584) x_127563 (cons_409 (pair_211 u_33 v_34) x_127564)))))
(assert (forall ((x_127563 Int))
	(petersen_30 nil_478 x_127563 nil_477)))
(declare-fun index_7 (Maybe_27 list_414 Int) Bool)
(assert (forall ((z_2796 Int) (xs_911 list_414))
	(index_7 (Just_27 z_2796) (cons_408 z_2796 xs_911) Z_2800)))
(assert (forall ((x_127650 Int) (x_127587 Maybe_27) (z_2796 Int) (xs_911 list_414) (y_3263 Int))
	(=> (and (distinct y_3263 Z_2800) (index_7 x_127587 xs_911 x_127650) (minus_470 x_127650 y_3263 (S_643 Z_2800))) (index_7 x_127587 (cons_408 z_2796 xs_911) y_3263))))
(assert (forall ((y_3263 Int))
	(index_7 Nothing_27 nil_476 y_3263)))
(declare-fun formula_11 (list_413 list_414) Bool)
(assert (forall ((x_127591 list_413) (y_3264 Int) (z_2797 list_414))
	(=> (and (< y_3264 (S_643 (S_643 (S_643 Z_2800)))) (formula_11 x_127591 z_2797)) (formula_11 (cons_407 true_449 x_127591) (cons_408 y_3264 z_2797)))))
(assert (forall ((x_127593 list_413) (y_3264 Int) (z_2797 list_414))
	(=> (and (>= y_3264 (S_643 (S_643 (S_643 Z_2800)))) (formula_11 x_127593 z_2797)) (formula_11 (cons_407 false_449 x_127593) (cons_408 y_3264 z_2797)))))
(assert (formula_11 nil_475 nil_476))
(declare-fun colouring_14 (list_413 list_414 list_415) Bool)
(assert (forall ((x_127598 list_413) (c_85 Int) (u_34 Int) (v_35 Int) (z_2798 list_415) (a_129 list_414))
	(=> (and (colouring_14 x_127598 a_129 z_2798) (index_7 (Just_27 c_85) a_129 v_35) (index_7 (Just_27 c_85) a_129 u_34)) (colouring_14 (cons_407 false_449 x_127598) a_129 (cons_409 (pair_211 u_34 v_35) z_2798)))))
(assert (forall ((x_127602 list_413) (c_86 Int) (c_85 Int) (u_34 Int) (v_35 Int) (z_2798 list_415) (a_129 list_414))
	(=> (and (distinct c_85 c_86) (colouring_14 x_127602 a_129 z_2798) (index_7 (Just_27 c_86) a_129 v_35) (index_7 (Just_27 c_85) a_129 u_34)) (colouring_14 (cons_407 true_449 x_127602) a_129 (cons_409 (pair_211 u_34 v_35) z_2798)))))
(assert (forall ((x_127606 list_413) (c_85 Int) (u_34 Int) (v_35 Int) (z_2798 list_415) (a_129 list_414))
	(=> (and (colouring_14 x_127606 a_129 z_2798) (index_7 Nothing_27 a_129 v_35) (index_7 (Just_27 c_85) a_129 u_34)) (colouring_14 (cons_407 false_449 x_127606) a_129 (cons_409 (pair_211 u_34 v_35) z_2798)))))
(assert (forall ((x_127609 list_413) (u_34 Int) (v_35 Int) (z_2798 list_415) (a_129 list_414))
	(=> (and (colouring_14 x_127609 a_129 z_2798) (index_7 Nothing_27 a_129 u_34)) (colouring_14 (cons_407 false_449 x_127609) a_129 (cons_409 (pair_211 u_34 v_35) z_2798)))))
(assert (forall ((a_129 list_414))
	(colouring_14 nil_475 a_129 nil_477)))
(declare-fun and_456 (Bool_449 list_413) Bool)
(assert (forall ((x_127611 Bool_449) (x_127612 Bool_449) (y_3266 Bool_449) (xs_912 list_413))
	(=> (and (and_456 x_127612 xs_912) (and_457 x_127611 y_3266 x_127612)) (and_456 x_127611 (cons_407 y_3266 xs_912)))))
(assert (and_456 true_449 nil_475))
(declare-fun colouring_15 (Bool_449 list_415 list_414) Bool)
(assert (forall ((x_127614 Bool_449) (x_127615 list_413) (x_127569 list_415) (y_3267 list_414))
	(=> (and (colouring_14 x_127615 y_3267 x_127569) (and_456 x_127614 x_127615)) (colouring_15 x_127614 x_127569 y_3267))))
(declare-fun x_127570 (list_415 list_415 list_415) Bool)
(assert (forall ((x_127618 list_415) (z_2799 pair_210) (xs_913 list_415) (y_3268 list_415))
	(=> (x_127570 x_127618 xs_913 y_3268) (x_127570 (cons_409 z_2799 x_127618) (cons_409 z_2799 xs_913) y_3268))))
(assert (forall ((x_127619 list_415))
	(x_127570 x_127619 nil_477 x_127619)))
(declare-fun concat_9 (list_415 list_416) Bool)
(assert (forall ((x_127620 list_415) (x_127621 list_415) (y_3269 list_415) (xs_914 list_416))
	(=> (and (concat_9 x_127621 xs_914) (x_127570 x_127620 y_3269 x_127621)) (concat_9 x_127620 (cons_410 y_3269 xs_914)))))
(assert (concat_9 nil_477 nil_478))
(declare-fun petersen_31 (list_415 Int) Bool)
(assert (petersen_31 nil_477 Z_2800))
(assert (forall ((x_127652 Int) (x_127651 Int) (x_127625 list_415) (x_127626 list_414) (x_127627 list_415) (x_127628 list_416) (x_127629 list_415) (x_127630 list_414) (x_127631 list_415) (x_127573 Int))
	(=> (and (distinct x_127573 Z_2800) (primEnumFromTo_14 x_127626 Z_2800 x_127651) (petersen_29 x_127627 x_127626) (petersen_30 x_127628 x_127573 (cons_409 (pair_211 x_127652 Z_2800) x_127627)) (concat_9 x_127629 x_127628) (primEnumFromTo_14 x_127630 Z_2800 x_127573) (petersen_28 x_127631 x_127573 x_127630) (x_127570 x_127625 x_127629 x_127631) (minus_470 x_127652 x_127573 (S_643 Z_2800)) (minus_470 x_127651 x_127573 (S_643 Z_2800))) (petersen_31 x_127625 x_127573))))
(assert (forall ((x_127654 Int) (x_127653 Int) (x_127641 list_413) (x_127633 list_414) (x_127634 list_415) (x_127635 list_416) (x_127636 list_415) (x_127637 list_414) (x_127638 list_415) (x_127639 list_415) (a_130 list_414))
	(=> (and true (formula_11 x_127641 a_130) (and_456 true_449 x_127641) (primEnumFromTo_14 x_127633 Z_2800 x_127653) (petersen_29 x_127634 x_127633) (petersen_30 x_127635 (S_643 (S_643 (S_643 (S_643 (S_643 Z_2800))))) (cons_409 (pair_211 x_127654 Z_2800) x_127634)) (concat_9 x_127636 x_127635) (primEnumFromTo_14 x_127637 Z_2800 (S_643 (S_643 (S_643 (S_643 (S_643 Z_2800)))))) (petersen_28 x_127638 (S_643 (S_643 (S_643 (S_643 (S_643 Z_2800))))) x_127637) (x_127570 x_127639 x_127636 x_127638) (colouring_15 true_449 x_127639 a_130) (minus_470 x_127654 (S_643 (S_643 (S_643 (S_643 (S_643 Z_2800))))) (S_643 Z_2800)) (minus_470 x_127653 (S_643 (S_643 (S_643 (S_643 (S_643 Z_2800))))) (S_643 Z_2800))) false)))
(check-sat)