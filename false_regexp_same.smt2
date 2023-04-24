(set-logic HORN)
(declare-datatypes ((Bool_417 0)) (((false_417) (true_417))))
(declare-fun diseqBool_203 (Bool_417 Bool_417) Bool)
(declare-fun isfalse_203 (Bool_417) Bool)
(declare-fun istrue_203 (Bool_417) Bool)
(assert (isfalse_203 false_417))
(assert (istrue_203 true_417))
(assert (diseqBool_203 false_417 true_417))
(assert (diseqBool_203 true_417 false_417))
(declare-fun and_421 (Bool_417 Bool_417 Bool_417) Bool)
(declare-fun or_432 (Bool_417 Bool_417 Bool_417) Bool)
(declare-fun hence_417 (Bool_417 Bool_417 Bool_417) Bool)
(declare-fun not_422 (Bool_417 Bool_417) Bool)
(assert (and_421 false_417 false_417 false_417))
(assert (and_421 false_417 true_417 false_417))
(assert (and_421 false_417 false_417 true_417))
(assert (and_421 true_417 true_417 true_417))
(assert (or_432 false_417 false_417 false_417))
(assert (or_432 true_417 true_417 false_417))
(assert (or_432 true_417 false_417 true_417))
(assert (or_432 true_417 true_417 true_417))
(assert (hence_417 true_417 false_417 false_417))
(assert (hence_417 false_417 true_417 false_417))
(assert (hence_417 true_417 false_417 true_417))
(assert (hence_417 true_417 true_417 true_417))
(assert (not_422 true_417 false_417))
(assert (not_422 false_417 true_417))
(declare-datatypes ((list_352 0)) (((nil_402) (cons_347 (head_694 Bool_417) (tail_699 list_352)))))
(declare-fun diseqlist_347 (list_352 list_352) Bool)
(declare-fun head_697 (Bool_417 list_352) Bool)
(declare-fun tail_702 (list_352 list_352) Bool)
(declare-fun isnil_402 (list_352) Bool)
(declare-fun iscons_347 (list_352) Bool)
(assert (forall ((x_106469 Bool_417) (x_106470 list_352))
	(head_697 x_106469 (cons_347 x_106469 x_106470))))
(assert (forall ((x_106469 Bool_417) (x_106470 list_352))
	(tail_702 x_106470 (cons_347 x_106469 x_106470))))
(assert (isnil_402 nil_402))
(assert (forall ((x_106472 Bool_417) (x_106473 list_352))
	(iscons_347 (cons_347 x_106472 x_106473))))
(assert (forall ((x_106474 Bool_417) (x_106475 list_352))
	(diseqlist_347 nil_402 (cons_347 x_106474 x_106475))))
(assert (forall ((x_106476 Bool_417) (x_106477 list_352))
	(diseqlist_347 (cons_347 x_106476 x_106477) nil_402)))
(assert (forall ((x_106478 Bool_417) (x_106479 list_352) (x_106480 Bool_417) (x_106481 list_352))
	(=> (diseqBool_203 x_106478 x_106480) (diseqlist_347 (cons_347 x_106478 x_106479) (cons_347 x_106480 x_106481)))))
(assert (forall ((x_106478 Bool_417) (x_106479 list_352) (x_106480 Bool_417) (x_106481 list_352))
	(=> (diseqlist_347 x_106479 x_106481) (diseqlist_347 (cons_347 x_106478 x_106479) (cons_347 x_106480 x_106481)))))
(declare-datatypes ((T_26 0)) (((A_105) (B_109) (C_59))))
(declare-fun diseqT_25 (T_26 T_26) Bool)
(declare-fun isA_32 (T_26) Bool)
(declare-fun isB_32 (T_26) Bool)
(declare-fun isC_33 (T_26) Bool)
(assert (isA_32 A_105))
(assert (isB_32 B_109))
(assert (isC_33 C_59))
(assert (diseqT_25 A_105 B_109))
(assert (diseqT_25 A_105 C_59))
(assert (diseqT_25 B_109 A_105))
(assert (diseqT_25 C_59 A_105))
(assert (diseqT_25 B_109 C_59))
(assert (diseqT_25 C_59 B_109))
(declare-datatypes ((list_353 0)) (((nil_403) (cons_348 (head_695 T_26) (tail_700 list_353)))))
(declare-fun diseqlist_348 (list_353 list_353) Bool)
(declare-fun head_698 (T_26 list_353) Bool)
(declare-fun tail_703 (list_353 list_353) Bool)
(declare-fun isnil_403 (list_353) Bool)
(declare-fun iscons_348 (list_353) Bool)
(assert (forall ((x_106486 T_26) (x_106487 list_353))
	(head_698 x_106486 (cons_348 x_106486 x_106487))))
(assert (forall ((x_106486 T_26) (x_106487 list_353))
	(tail_703 x_106487 (cons_348 x_106486 x_106487))))
(assert (isnil_403 nil_403))
(assert (forall ((x_106489 T_26) (x_106490 list_353))
	(iscons_348 (cons_348 x_106489 x_106490))))
(assert (forall ((x_106491 T_26) (x_106492 list_353))
	(diseqlist_348 nil_403 (cons_348 x_106491 x_106492))))
(assert (forall ((x_106493 T_26) (x_106494 list_353))
	(diseqlist_348 (cons_348 x_106493 x_106494) nil_403)))
(assert (forall ((x_106495 T_26) (x_106496 list_353) (x_106497 T_26) (x_106498 list_353))
	(=> (diseqT_25 x_106495 x_106497) (diseqlist_348 (cons_348 x_106495 x_106496) (cons_348 x_106497 x_106498)))))
(assert (forall ((x_106495 T_26) (x_106496 list_353) (x_106497 T_26) (x_106498 list_353))
	(=> (diseqlist_348 x_106496 x_106498) (diseqlist_348 (cons_348 x_106495 x_106496) (cons_348 x_106497 x_106498)))))
(declare-datatypes ((pair_150 0)) (((pair_151 (projpair_300 list_353) (projpair_301 list_353)))))
(declare-fun diseqpair_75 (pair_150 pair_150) Bool)
(declare-fun projpair_302 (list_353 pair_150) Bool)
(declare-fun projpair_303 (list_353 pair_150) Bool)
(declare-fun ispair_75 (pair_150) Bool)
(assert (forall ((x_106499 list_353) (x_106500 list_353))
	(projpair_302 x_106499 (pair_151 x_106499 x_106500))))
(assert (forall ((x_106499 list_353) (x_106500 list_353))
	(projpair_303 x_106500 (pair_151 x_106499 x_106500))))
(assert (forall ((x_106502 list_353) (x_106503 list_353))
	(ispair_75 (pair_151 x_106502 x_106503))))
(assert (forall ((x_106504 list_353) (x_106505 list_353) (x_106506 list_353) (x_106507 list_353))
	(=> (diseqlist_348 x_106504 x_106506) (diseqpair_75 (pair_151 x_106504 x_106505) (pair_151 x_106506 x_106507)))))
(assert (forall ((x_106504 list_353) (x_106505 list_353) (x_106506 list_353) (x_106507 list_353))
	(=> (diseqlist_348 x_106505 x_106507) (diseqpair_75 (pair_151 x_106504 x_106505) (pair_151 x_106506 x_106507)))))
(declare-datatypes ((list_354 0)) (((nil_404) (cons_349 (head_696 pair_150) (tail_701 list_354)))))
(declare-fun diseqlist_349 (list_354 list_354) Bool)
(declare-fun head_699 (pair_150 list_354) Bool)
(declare-fun tail_704 (list_354 list_354) Bool)
(declare-fun isnil_404 (list_354) Bool)
(declare-fun iscons_349 (list_354) Bool)
(assert (forall ((x_106509 pair_150) (x_106510 list_354))
	(head_699 x_106509 (cons_349 x_106509 x_106510))))
(assert (forall ((x_106509 pair_150) (x_106510 list_354))
	(tail_704 x_106510 (cons_349 x_106509 x_106510))))
(assert (isnil_404 nil_404))
(assert (forall ((x_106512 pair_150) (x_106513 list_354))
	(iscons_349 (cons_349 x_106512 x_106513))))
(assert (forall ((x_106514 pair_150) (x_106515 list_354))
	(diseqlist_349 nil_404 (cons_349 x_106514 x_106515))))
(assert (forall ((x_106516 pair_150) (x_106517 list_354))
	(diseqlist_349 (cons_349 x_106516 x_106517) nil_404)))
(assert (forall ((x_106518 pair_150) (x_106519 list_354) (x_106520 pair_150) (x_106521 list_354))
	(=> (diseqpair_75 x_106518 x_106520) (diseqlist_349 (cons_349 x_106518 x_106519) (cons_349 x_106520 x_106521)))))
(assert (forall ((x_106518 pair_150) (x_106519 list_354) (x_106520 pair_150) (x_106521 list_354))
	(=> (diseqlist_349 x_106519 x_106521) (diseqlist_349 (cons_349 x_106518 x_106519) (cons_349 x_106520 x_106521)))))
(declare-datatypes ((R_582 0)) (((Nil_405) (Eps_78) (Atom_39 (projAtom_78 T_26)) (x_106352 (proj_264 R_582) (proj_265 R_582)) (x_106353 (proj_266 R_582) (proj_267 R_582)) (Star_39 (projStar_78 R_582)))))
(declare-fun diseqR_39 (R_582 R_582) Bool)
(declare-fun projAtom_79 (T_26 R_582) Bool)
(declare-fun proj_268 (R_582 R_582) Bool)
(declare-fun proj_269 (R_582 R_582) Bool)
(declare-fun proj_270 (R_582 R_582) Bool)
(declare-fun proj_271 (R_582 R_582) Bool)
(declare-fun projStar_79 (R_582 R_582) Bool)
(declare-fun isNil_405 (R_582) Bool)
(declare-fun isEps_39 (R_582) Bool)
(declare-fun isAtom_39 (R_582) Bool)
(declare-fun isx_81 (R_582) Bool)
(declare-fun isx_82 (R_582) Bool)
(declare-fun isStar_39 (R_582) Bool)
(assert (forall ((x_106524 T_26))
	(projAtom_79 x_106524 (Atom_39 x_106524))))
(assert (forall ((x_106526 R_582) (x_106527 R_582))
	(proj_268 x_106526 (x_106352 x_106526 x_106527))))
(assert (forall ((x_106526 R_582) (x_106527 R_582))
	(proj_269 x_106527 (x_106352 x_106526 x_106527))))
(assert (forall ((x_106529 R_582) (x_106530 R_582))
	(proj_270 x_106529 (x_106353 x_106529 x_106530))))
(assert (forall ((x_106529 R_582) (x_106530 R_582))
	(proj_271 x_106530 (x_106353 x_106529 x_106530))))
(assert (forall ((x_106532 R_582))
	(projStar_79 x_106532 (Star_39 x_106532))))
(assert (isNil_405 Nil_405))
(assert (isEps_39 Eps_78))
(assert (forall ((x_106534 T_26))
	(isAtom_39 (Atom_39 x_106534))))
(assert (forall ((x_106535 R_582) (x_106536 R_582))
	(isx_81 (x_106352 x_106535 x_106536))))
(assert (forall ((x_106537 R_582) (x_106538 R_582))
	(isx_82 (x_106353 x_106537 x_106538))))
(assert (forall ((x_106539 R_582))
	(isStar_39 (Star_39 x_106539))))
(assert (diseqR_39 Nil_405 Eps_78))
(assert (forall ((x_106540 T_26))
	(diseqR_39 Nil_405 (Atom_39 x_106540))))
(assert (forall ((x_106541 R_582) (x_106542 R_582))
	(diseqR_39 Nil_405 (x_106352 x_106541 x_106542))))
(assert (forall ((x_106543 R_582) (x_106544 R_582))
	(diseqR_39 Nil_405 (x_106353 x_106543 x_106544))))
(assert (forall ((x_106545 R_582))
	(diseqR_39 Nil_405 (Star_39 x_106545))))
(assert (diseqR_39 Eps_78 Nil_405))
(assert (forall ((x_106546 T_26))
	(diseqR_39 (Atom_39 x_106546) Nil_405)))
(assert (forall ((x_106547 R_582) (x_106548 R_582))
	(diseqR_39 (x_106352 x_106547 x_106548) Nil_405)))
(assert (forall ((x_106549 R_582) (x_106550 R_582))
	(diseqR_39 (x_106353 x_106549 x_106550) Nil_405)))
(assert (forall ((x_106551 R_582))
	(diseqR_39 (Star_39 x_106551) Nil_405)))
(assert (forall ((x_106552 T_26))
	(diseqR_39 Eps_78 (Atom_39 x_106552))))
(assert (forall ((x_106553 R_582) (x_106554 R_582))
	(diseqR_39 Eps_78 (x_106352 x_106553 x_106554))))
(assert (forall ((x_106555 R_582) (x_106556 R_582))
	(diseqR_39 Eps_78 (x_106353 x_106555 x_106556))))
(assert (forall ((x_106557 R_582))
	(diseqR_39 Eps_78 (Star_39 x_106557))))
(assert (forall ((x_106558 T_26))
	(diseqR_39 (Atom_39 x_106558) Eps_78)))
(assert (forall ((x_106559 R_582) (x_106560 R_582))
	(diseqR_39 (x_106352 x_106559 x_106560) Eps_78)))
(assert (forall ((x_106561 R_582) (x_106562 R_582))
	(diseqR_39 (x_106353 x_106561 x_106562) Eps_78)))
(assert (forall ((x_106563 R_582))
	(diseqR_39 (Star_39 x_106563) Eps_78)))
(assert (forall ((x_106564 T_26) (x_106565 R_582) (x_106566 R_582))
	(diseqR_39 (Atom_39 x_106564) (x_106352 x_106565 x_106566))))
(assert (forall ((x_106567 T_26) (x_106568 R_582) (x_106569 R_582))
	(diseqR_39 (Atom_39 x_106567) (x_106353 x_106568 x_106569))))
(assert (forall ((x_106570 T_26) (x_106571 R_582))
	(diseqR_39 (Atom_39 x_106570) (Star_39 x_106571))))
(assert (forall ((x_106572 R_582) (x_106573 R_582) (x_106574 T_26))
	(diseqR_39 (x_106352 x_106572 x_106573) (Atom_39 x_106574))))
(assert (forall ((x_106575 R_582) (x_106576 R_582) (x_106577 T_26))
	(diseqR_39 (x_106353 x_106575 x_106576) (Atom_39 x_106577))))
(assert (forall ((x_106578 R_582) (x_106579 T_26))
	(diseqR_39 (Star_39 x_106578) (Atom_39 x_106579))))
(assert (forall ((x_106580 R_582) (x_106581 R_582) (x_106582 R_582) (x_106583 R_582))
	(diseqR_39 (x_106352 x_106580 x_106581) (x_106353 x_106582 x_106583))))
(assert (forall ((x_106584 R_582) (x_106585 R_582) (x_106586 R_582))
	(diseqR_39 (x_106352 x_106584 x_106585) (Star_39 x_106586))))
(assert (forall ((x_106587 R_582) (x_106588 R_582) (x_106589 R_582) (x_106590 R_582))
	(diseqR_39 (x_106353 x_106587 x_106588) (x_106352 x_106589 x_106590))))
(assert (forall ((x_106591 R_582) (x_106592 R_582) (x_106593 R_582))
	(diseqR_39 (Star_39 x_106591) (x_106352 x_106592 x_106593))))
(assert (forall ((x_106594 R_582) (x_106595 R_582) (x_106596 R_582))
	(diseqR_39 (x_106353 x_106594 x_106595) (Star_39 x_106596))))
(assert (forall ((x_106597 R_582) (x_106598 R_582) (x_106599 R_582))
	(diseqR_39 (Star_39 x_106597) (x_106353 x_106598 x_106599))))
(assert (forall ((x_106600 T_26) (x_106601 T_26))
	(=> (diseqT_25 x_106600 x_106601) (diseqR_39 (Atom_39 x_106600) (Atom_39 x_106601)))))
(assert (forall ((x_106602 R_582) (x_106603 R_582) (x_106604 R_582) (x_106605 R_582))
	(=> (diseqR_39 x_106602 x_106604) (diseqR_39 (x_106352 x_106602 x_106603) (x_106352 x_106604 x_106605)))))
(assert (forall ((x_106602 R_582) (x_106603 R_582) (x_106604 R_582) (x_106605 R_582))
	(=> (diseqR_39 x_106603 x_106605) (diseqR_39 (x_106352 x_106602 x_106603) (x_106352 x_106604 x_106605)))))
(assert (forall ((x_106606 R_582) (x_106607 R_582) (x_106608 R_582) (x_106609 R_582))
	(=> (diseqR_39 x_106606 x_106608) (diseqR_39 (x_106353 x_106606 x_106607) (x_106353 x_106608 x_106609)))))
(assert (forall ((x_106606 R_582) (x_106607 R_582) (x_106608 R_582) (x_106609 R_582))
	(=> (diseqR_39 x_106607 x_106609) (diseqR_39 (x_106353 x_106606 x_106607) (x_106353 x_106608 x_106609)))))
(assert (forall ((x_106610 R_582) (x_106611 R_582))
	(=> (diseqR_39 x_106610 x_106611) (diseqR_39 (Star_39 x_106610) (Star_39 x_106611)))))
(declare-fun splits_6 (list_354 T_26 list_354) Bool)
(assert (forall ((x_106376 list_354) (bs_17 list_353) (cs_4 list_353) (x_106355 list_354) (x_106354 T_26))
	(=> (splits_6 x_106376 x_106354 x_106355) (splits_6 (cons_349 (pair_151 (cons_348 x_106354 bs_17) cs_4) x_106376) x_106354 (cons_349 (pair_151 bs_17 cs_4) x_106355)))))
(assert (forall ((x_106354 T_26))
	(splits_6 nil_404 x_106354 nil_404)))
(declare-fun splits_7 (list_354 list_353) Bool)
(assert (forall ((x_106379 list_354) (x_106380 list_354) (y_2882 T_26) (xs_837 list_353))
	(=> (and (splits_7 x_106379 xs_837) (splits_6 x_106380 y_2882 x_106379)) (splits_7 (cons_349 (pair_151 nil_403 (cons_348 y_2882 xs_837)) x_106380) (cons_348 y_2882 xs_837)))))
(assert (splits_7 (cons_349 (pair_151 nil_403 nil_403) nil_404) nil_403))
(declare-fun or_431 (Bool_417 list_352) Bool)
(assert (forall ((x_106382 Bool_417) (x_106383 Bool_417) (y_2883 Bool_417) (xs_838 list_352))
	(=> (and (or_431 x_106383 xs_838) (or_432 x_106382 y_2883 x_106383)) (or_431 x_106382 (cons_347 y_2883 xs_838)))))
(assert (or_431 false_417 nil_402))
(declare-fun eps_79 (Bool_417 R_582) Bool)
(assert (forall ((y_2884 R_582))
	(eps_79 true_417 (Star_39 y_2884))))
(assert (forall ((x_106386 Bool_417) (x_106387 Bool_417) (x_106388 Bool_417) (r_583 R_582) (q_290 R_582))
	(=> (and (eps_79 x_106387 r_583) (eps_79 x_106388 q_290) (and_421 x_106386 x_106387 x_106388)) (eps_79 x_106386 (x_106353 r_583 q_290)))))
(assert (forall ((x_106389 Bool_417) (x_106390 Bool_417) (x_106391 Bool_417) (p_536 R_582) (q_291 R_582))
	(=> (and (eps_79 x_106390 p_536) (eps_79 x_106391 q_291) (or_432 x_106389 x_106390 x_106391)) (eps_79 x_106389 (x_106352 p_536 q_291)))))
(assert (eps_79 true_417 Eps_78))
(assert (forall ((x_106359 R_582) (x_106373 T_26))
	(eps_79 false_417 (Atom_39 x_106373))))
(assert (forall ((x_106359 R_582))
	(eps_79 false_417 Nil_405)))
(declare-fun okay_2 (Bool_417 R_582) Bool)
(assert (forall ((x_106459 Bool_417) (x_106395 Bool_417) (x_106396 Bool_417) (x_106397 Bool_417) (p_537 R_582))
	(=> (and (okay_2 x_106396 p_537) (eps_79 x_106397 p_537) (not_422 x_106459 x_106397) (and_421 x_106395 x_106396 x_106459)) (okay_2 x_106395 (Star_39 p_537)))))
(assert (forall ((x_106398 Bool_417) (x_106399 Bool_417) (x_106400 Bool_417) (r_584 R_582) (q_292 R_582))
	(=> (and (okay_2 x_106399 r_584) (okay_2 x_106400 q_292) (and_421 x_106398 x_106399 x_106400)) (okay_2 x_106398 (x_106353 r_584 q_292)))))
(assert (forall ((x_106401 Bool_417) (x_106402 Bool_417) (x_106403 Bool_417) (p_538 R_582) (q_293 R_582))
	(=> (and (okay_2 x_106402 p_538) (okay_2 x_106403 q_293) (and_421 x_106401 x_106402 x_106403)) (okay_2 x_106401 (x_106352 p_538 q_293)))))
(assert (forall ((x_106361 R_582) (x_106374 T_26))
	(okay_2 true_417 (Atom_39 x_106374))))
(assert (forall ((x_106361 R_582))
	(okay_2 true_417 Eps_78)))
(assert (forall ((x_106361 R_582))
	(okay_2 true_417 Nil_405)))
(declare-fun step_39 (R_582 R_582 T_26) Bool)
(assert (forall ((x_106408 R_582) (p_539 R_582) (y_2885 T_26))
	(=> (step_39 x_106408 p_539 y_2885) (step_39 (x_106353 x_106408 (Star_39 p_539)) (Star_39 p_539) y_2885))))
(assert (forall ((x_106411 R_582) (x_106412 R_582) (r_585 R_582) (q_294 R_582) (y_2885 T_26))
	(=> (and (step_39 x_106411 r_585 y_2885) (step_39 x_106412 q_294 y_2885) (eps_79 true_417 r_585)) (step_39 (x_106352 (x_106353 x_106411 q_294) x_106412) (x_106353 r_585 q_294) y_2885))))
(assert (forall ((x_106415 R_582) (r_585 R_582) (q_294 R_582) (y_2885 T_26))
	(=> (and (step_39 x_106415 r_585 y_2885) (eps_79 false_417 r_585)) (step_39 (x_106352 (x_106353 x_106415 q_294) Nil_405) (x_106353 r_585 q_294) y_2885))))
(assert (forall ((x_106417 R_582) (x_106418 R_582) (p_540 R_582) (q_295 R_582) (y_2885 T_26))
	(=> (and (step_39 x_106417 p_540 y_2885) (step_39 x_106418 q_295 y_2885)) (step_39 (x_106352 x_106417 x_106418) (x_106352 p_540 q_295) y_2885))))
(assert (forall ((b_110 T_26))
	(step_39 Eps_78 (Atom_39 b_110) b_110)))
(assert (forall ((b_110 T_26) (y_2885 T_26))
	(=> (diseqT_25 b_110 y_2885) (step_39 Nil_405 (Atom_39 b_110) y_2885))))
(assert (forall ((x_106363 R_582) (y_2885 T_26))
	(step_39 Nil_405 Eps_78 y_2885)))
(assert (forall ((x_106363 R_582) (y_2885 T_26))
	(step_39 Nil_405 Nil_405 y_2885)))
(declare-fun rec_25 (Bool_417 R_582 list_353) Bool)
(assert (forall ((x_106423 Bool_417) (x_106424 R_582) (z_2522 T_26) (xs_839 list_353) (x_106364 R_582))
	(=> (and (step_39 x_106424 x_106364 z_2522) (rec_25 x_106423 x_106424 xs_839)) (rec_25 x_106423 x_106364 (cons_348 z_2522 xs_839)))))
(assert (forall ((x_106426 Bool_417) (x_106364 R_582))
	(=> (eps_79 x_106426 x_106364) (rec_25 x_106426 x_106364 nil_403))))
(declare-fun reck_6 (Bool_417 R_582 list_353) Bool)
(declare-fun reck_7 (list_352 R_582 R_582 list_354) Bool)
(assert (forall ((x_106429 Bool_417) (x_106366 T_26) (x_106367 list_353) (p_541 R_582))
	(=> (and (rec_25 x_106429 (x_106353 p_541 (Star_39 p_541)) (cons_348 x_106366 x_106367)) (eps_79 false_417 p_541)) (reck_6 x_106429 (Star_39 p_541) (cons_348 x_106366 x_106367)))))
(assert (forall ((x_106366 T_26) (x_106367 list_353) (p_541 R_582))
	(=> (eps_79 true_417 p_541) (reck_6 false_417 (Star_39 p_541) (cons_348 x_106366 x_106367)))))
(assert (forall ((p_541 R_582))
	(reck_6 true_417 (Star_39 p_541) nil_403)))
(assert (forall ((x_106434 Bool_417) (x_106435 list_354) (x_106436 list_352) (r_586 R_582) (q_296 R_582) (y_2887 list_353))
	(=> (and (splits_7 x_106435 y_2887) (reck_7 x_106436 r_586 q_296 x_106435) (or_431 x_106434 x_106436)) (reck_6 x_106434 (x_106353 r_586 q_296) y_2887))))
(assert (forall ((x_106438 Bool_417) (x_106439 Bool_417) (x_106440 Bool_417) (p_542 R_582) (q_297 R_582) (y_2887 list_353))
	(=> (and (reck_6 x_106439 p_542 y_2887) (reck_6 x_106440 q_297 y_2887) (or_432 x_106438 x_106439 x_106440)) (reck_6 x_106438 (x_106352 p_542 q_297) y_2887))))
(assert (forall ((x_106369 T_26) (x_106370 list_353) (b_111 T_26) (c_60 T_26))
	(reck_6 false_417 (Atom_39 c_60) (cons_348 b_111 (cons_348 x_106369 x_106370)))))
(assert (forall ((b_111 T_26))
	(reck_6 true_417 (Atom_39 b_111) (cons_348 b_111 nil_403))))
(assert (forall ((b_111 T_26) (c_60 T_26))
	(=> (diseqT_25 c_60 b_111) (reck_6 false_417 (Atom_39 c_60) (cons_348 b_111 nil_403)))))
(assert (forall ((c_60 T_26))
	(reck_6 false_417 (Atom_39 c_60) nil_403)))
(assert (forall ((z_2523 T_26) (x_106371 list_353))
	(reck_6 false_417 Eps_78 (cons_348 z_2523 x_106371))))
(assert (reck_6 true_417 Eps_78 nil_403))
(assert (forall ((y_2887 list_353))
	(reck_6 false_417 Nil_405 y_2887)))
(assert (forall ((x_106464 Bool_417) (x_106449 Bool_417) (x_106450 Bool_417) (x_106451 list_352) (l_55 list_353) (r_587 list_353) (z_2524 list_354) (p_543 R_582) (q_298 R_582))
	(=> (and (reck_6 x_106449 p_543 l_55) (rec_25 x_106450 q_298 r_587) (reck_7 x_106451 p_543 q_298 z_2524) (and_421 x_106464 x_106449 x_106450)) (reck_7 (cons_347 x_106464 x_106451) p_543 q_298 (cons_349 (pair_151 l_55 r_587) z_2524)))))
(assert (forall ((p_543 R_582) (q_298 R_582))
	(reck_7 nil_402 p_543 q_298 nil_404)))
(assert (forall ((x_106453 Bool_417) (x_106454 Bool_417) (p_544 R_582) (s_589 list_353))
	(=> (and (diseqBool_203 x_106453 x_106454) (okay_2 true_417 p_544) (rec_25 x_106453 p_544 s_589) (reck_6 x_106454 p_544 s_589)) false)))
(check-sat)
