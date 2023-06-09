(set-logic HORN)
(declare-datatypes ((Bool_244 0)) (((false_244) (true_244))))
(declare-fun diseqBool_113 (Bool_244 Bool_244) Bool)
(declare-fun isfalse_113 (Bool_244) Bool)
(declare-fun istrue_113 (Bool_244) Bool)
(assert (isfalse_113 false_244))
(assert (istrue_113 true_244))
(assert (diseqBool_113 false_244 true_244))
(assert (diseqBool_113 true_244 false_244))
(declare-fun and_244 (Bool_244 Bool_244 Bool_244) Bool)
(declare-fun or_249 (Bool_244 Bool_244 Bool_244) Bool)
(declare-fun hence_244 (Bool_244 Bool_244 Bool_244) Bool)
(declare-fun not_247 (Bool_244 Bool_244) Bool)
(assert (and_244 false_244 false_244 false_244))
(assert (and_244 false_244 true_244 false_244))
(assert (and_244 false_244 false_244 true_244))
(assert (and_244 true_244 true_244 true_244))
(assert (or_249 false_244 false_244 false_244))
(assert (or_249 true_244 true_244 false_244))
(assert (or_249 true_244 false_244 true_244))
(assert (or_249 true_244 true_244 true_244))
(assert (hence_244 true_244 false_244 false_244))
(assert (hence_244 false_244 true_244 false_244))
(assert (hence_244 true_244 false_244 true_244))
(assert (hence_244 true_244 true_244 true_244))
(assert (not_247 true_244 false_244))
(assert (not_247 false_244 true_244))
(declare-datatypes ((It_4 0)) (((A_48) (B_28) (C_16))))
(declare-fun diseqIt_4 (It_4 It_4) Bool)
(declare-fun isA_6 (It_4) Bool)
(declare-fun isB_6 (It_4) Bool)
(declare-fun isC_6 (It_4) Bool)
(assert (isA_6 A_48))
(assert (isB_6 B_28))
(assert (isC_6 C_16))
(assert (diseqIt_4 A_48 B_28))
(assert (diseqIt_4 A_48 C_16))
(assert (diseqIt_4 B_28 A_48))
(assert (diseqIt_4 C_16 A_48))
(assert (diseqIt_4 B_28 C_16))
(assert (diseqIt_4 C_16 B_28))
(declare-datatypes ((list_176 0)) (((nil_201) (cons_176 (head_352 It_4) (tail_352 list_176)))))
(declare-fun diseqlist_176 (list_176 list_176) Bool)
(declare-fun head_353 (It_4 list_176) Bool)
(declare-fun tail_353 (list_176 list_176) Bool)
(declare-fun isnil_201 (list_176) Bool)
(declare-fun iscons_176 (list_176) Bool)
(assert (forall ((x_45739 It_4) (x_45740 list_176))
	(head_353 x_45739 (cons_176 x_45739 x_45740))))
(assert (forall ((x_45739 It_4) (x_45740 list_176))
	(tail_353 x_45740 (cons_176 x_45739 x_45740))))
(assert (isnil_201 nil_201))
(assert (forall ((x_45742 It_4) (x_45743 list_176))
	(iscons_176 (cons_176 x_45742 x_45743))))
(assert (forall ((x_45744 It_4) (x_45745 list_176))
	(diseqlist_176 nil_201 (cons_176 x_45744 x_45745))))
(assert (forall ((x_45746 It_4) (x_45747 list_176))
	(diseqlist_176 (cons_176 x_45746 x_45747) nil_201)))
(assert (forall ((x_45748 It_4) (x_45749 list_176) (x_45750 It_4) (x_45751 list_176))
	(=> (diseqIt_4 x_45748 x_45750) (diseqlist_176 (cons_176 x_45748 x_45749) (cons_176 x_45750 x_45751)))))
(assert (forall ((x_45748 It_4) (x_45749 list_176) (x_45750 It_4) (x_45751 list_176))
	(=> (diseqlist_176 x_45749 x_45751) (diseqlist_176 (cons_176 x_45748 x_45749) (cons_176 x_45750 x_45751)))))
(declare-fun isPrefix_4 (Bool_244 list_176 list_176) Bool)
(assert (forall ((x_45714 Bool_244) (x_45703 It_4) (x_45704 list_176) (x_45702 list_176))
	(=> (isPrefix_4 x_45714 x_45702 x_45704) (isPrefix_4 x_45714 (cons_176 x_45703 x_45702) (cons_176 x_45703 x_45704)))))
(assert (forall ((x_45703 It_4) (x_45704 list_176) (z_1455 It_4) (x_45702 list_176))
	(=> (diseqIt_4 z_1455 x_45703) (isPrefix_4 false_244 (cons_176 z_1455 x_45702) (cons_176 x_45703 x_45704)))))
(assert (forall ((z_1455 It_4) (x_45702 list_176))
	(isPrefix_4 false_244 (cons_176 z_1455 x_45702) nil_201)))
(assert (forall ((y_1614 list_176))
	(isPrefix_4 true_244 nil_201 y_1614)))
(declare-fun isRelaxedPrefix_4 (Bool_244 list_176 list_176) Bool)
(assert (forall ((x_45719 Bool_244) (x_45709 It_4) (x_45710 list_176) (x_45707 It_4) (x_45708 list_176))
	(=> (isRelaxedPrefix_4 x_45719 (cons_176 x_45707 x_45708) x_45710) (isRelaxedPrefix_4 x_45719 (cons_176 x_45709 (cons_176 x_45707 x_45708)) (cons_176 x_45709 x_45710)))))
(assert (forall ((x_45721 Bool_244) (x_45709 It_4) (x_45710 list_176) (x_45707 It_4) (x_45708 list_176) (z_1456 It_4))
	(=> (and (diseqIt_4 z_1456 x_45709) (isPrefix_4 x_45721 (cons_176 x_45707 x_45708) (cons_176 x_45709 x_45710))) (isRelaxedPrefix_4 x_45721 (cons_176 z_1456 (cons_176 x_45707 x_45708)) (cons_176 x_45709 x_45710)))))
(assert (forall ((x_45707 It_4) (x_45708 list_176) (z_1456 It_4))
	(isRelaxedPrefix_4 false_244 (cons_176 z_1456 (cons_176 x_45707 x_45708)) nil_201)))
(assert (forall ((z_1456 It_4) (y_1615 list_176))
	(isRelaxedPrefix_4 true_244 (cons_176 z_1456 nil_201) y_1615)))
(assert (forall ((y_1615 list_176))
	(isRelaxedPrefix_4 true_244 nil_201 y_1615)))
(declare-fun x_45711 (list_176 list_176 list_176) Bool)
(assert (forall ((x_45727 list_176) (z_1457 It_4) (xs_481 list_176) (y_1616 list_176))
	(=> (x_45711 x_45727 xs_481 y_1616) (x_45711 (cons_176 z_1457 x_45727) (cons_176 z_1457 xs_481) y_1616))))
(assert (forall ((x_45728 list_176))
	(x_45711 x_45728 nil_201 x_45728)))
(assert (forall ((x_45729 list_176) (x_45730 list_176) (x_45713 It_4) (xs_482 list_176) (ys_146 list_176))
	(=> (and (x_45711 x_45729 xs_482 (cons_176 x_45713 nil_201)) (x_45711 x_45730 xs_482 ys_146) (isRelaxedPrefix_4 false_244 x_45729 x_45730)) false)))
(check-sat)
