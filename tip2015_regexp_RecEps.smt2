(set-logic HORN)
(declare-datatypes ((Bool_226 0)) (((false_226) (true_226))))
(declare-fun diseqBool_102 (Bool_226 Bool_226) Bool)
(declare-fun isfalse_102 (Bool_226) Bool)
(declare-fun istrue_102 (Bool_226) Bool)
(assert (isfalse_102 false_226))
(assert (istrue_102 true_226))
(assert (diseqBool_102 false_226 true_226))
(assert (diseqBool_102 true_226 false_226))
(declare-fun and_226 (Bool_226 Bool_226 Bool_226) Bool)
(declare-fun or_230 (Bool_226 Bool_226 Bool_226) Bool)
(declare-fun hence_226 (Bool_226 Bool_226 Bool_226) Bool)
(declare-fun not_229 (Bool_226 Bool_226) Bool)
(assert (and_226 false_226 false_226 false_226))
(assert (and_226 false_226 true_226 false_226))
(assert (and_226 false_226 false_226 true_226))
(assert (and_226 true_226 true_226 true_226))
(assert (or_230 false_226 false_226 false_226))
(assert (or_230 true_226 true_226 false_226))
(assert (or_230 true_226 false_226 true_226))
(assert (or_230 true_226 true_226 true_226))
(assert (hence_226 true_226 false_226 false_226))
(assert (hence_226 false_226 true_226 false_226))
(assert (hence_226 true_226 false_226 true_226))
(assert (hence_226 true_226 true_226 true_226))
(assert (not_229 true_226 false_226))
(assert (not_229 false_226 true_226))
(declare-datatypes ((A_41 0)) (((X_37631) (Y_1453))))
(declare-fun diseqA_10 (A_41 A_41) Bool)
(declare-fun isX_13 (A_41) Bool)
(declare-fun isY_10 (A_41) Bool)
(assert (isX_13 X_37631))
(assert (isY_10 Y_1453))
(assert (diseqA_10 X_37631 Y_1453))
(assert (diseqA_10 Y_1453 X_37631))
(declare-datatypes ((R_276 0)) (((Nil_174) (Eps_20) (Atom_10 (projAtom_20 A_41)) (Plus_86 (projPlus_40 R_276) (projPlus_41 R_276)) (Seq_20 (projSeq_40 R_276) (projSeq_41 R_276)) (Star_10 (projStar_20 R_276)))))
(declare-fun diseqR_10 (R_276 R_276) Bool)
(declare-fun projAtom_21 (A_41 R_276) Bool)
(declare-fun projPlus_42 (R_276 R_276) Bool)
(declare-fun projPlus_43 (R_276 R_276) Bool)
(declare-fun projSeq_42 (R_276 R_276) Bool)
(declare-fun projSeq_43 (R_276 R_276) Bool)
(declare-fun projStar_21 (R_276 R_276) Bool)
(declare-fun isNil_174 (R_276) Bool)
(declare-fun isEps_10 (R_276) Bool)
(declare-fun isAtom_10 (R_276) Bool)
(declare-fun isPlus_10 (R_276) Bool)
(declare-fun isSeq_10 (R_276) Bool)
(declare-fun isStar_10 (R_276) Bool)
(assert (forall ((x_39721 A_41))
	(projAtom_21 x_39721 (Atom_10 x_39721))))
(assert (forall ((x_39723 R_276) (x_39724 R_276))
	(projPlus_42 x_39723 (Plus_86 x_39723 x_39724))))
(assert (forall ((x_39723 R_276) (x_39724 R_276))
	(projPlus_43 x_39724 (Plus_86 x_39723 x_39724))))
(assert (forall ((x_39726 R_276) (x_39727 R_276))
	(projSeq_42 x_39726 (Seq_20 x_39726 x_39727))))
(assert (forall ((x_39726 R_276) (x_39727 R_276))
	(projSeq_43 x_39727 (Seq_20 x_39726 x_39727))))
(assert (forall ((x_39729 R_276))
	(projStar_21 x_39729 (Star_10 x_39729))))
(assert (isNil_174 Nil_174))
(assert (isEps_10 Eps_20))
(assert (forall ((x_39731 A_41))
	(isAtom_10 (Atom_10 x_39731))))
(assert (forall ((x_39732 R_276) (x_39733 R_276))
	(isPlus_10 (Plus_86 x_39732 x_39733))))
(assert (forall ((x_39734 R_276) (x_39735 R_276))
	(isSeq_10 (Seq_20 x_39734 x_39735))))
(assert (forall ((x_39736 R_276))
	(isStar_10 (Star_10 x_39736))))
(assert (diseqR_10 Nil_174 Eps_20))
(assert (forall ((x_39737 A_41))
	(diseqR_10 Nil_174 (Atom_10 x_39737))))
(assert (forall ((x_39738 R_276) (x_39739 R_276))
	(diseqR_10 Nil_174 (Plus_86 x_39738 x_39739))))
(assert (forall ((x_39740 R_276) (x_39741 R_276))
	(diseqR_10 Nil_174 (Seq_20 x_39740 x_39741))))
(assert (forall ((x_39742 R_276))
	(diseqR_10 Nil_174 (Star_10 x_39742))))
(assert (diseqR_10 Eps_20 Nil_174))
(assert (forall ((x_39743 A_41))
	(diseqR_10 (Atom_10 x_39743) Nil_174)))
(assert (forall ((x_39744 R_276) (x_39745 R_276))
	(diseqR_10 (Plus_86 x_39744 x_39745) Nil_174)))
(assert (forall ((x_39746 R_276) (x_39747 R_276))
	(diseqR_10 (Seq_20 x_39746 x_39747) Nil_174)))
(assert (forall ((x_39748 R_276))
	(diseqR_10 (Star_10 x_39748) Nil_174)))
(assert (forall ((x_39749 A_41))
	(diseqR_10 Eps_20 (Atom_10 x_39749))))
(assert (forall ((x_39750 R_276) (x_39751 R_276))
	(diseqR_10 Eps_20 (Plus_86 x_39750 x_39751))))
(assert (forall ((x_39752 R_276) (x_39753 R_276))
	(diseqR_10 Eps_20 (Seq_20 x_39752 x_39753))))
(assert (forall ((x_39754 R_276))
	(diseqR_10 Eps_20 (Star_10 x_39754))))
(assert (forall ((x_39755 A_41))
	(diseqR_10 (Atom_10 x_39755) Eps_20)))
(assert (forall ((x_39756 R_276) (x_39757 R_276))
	(diseqR_10 (Plus_86 x_39756 x_39757) Eps_20)))
(assert (forall ((x_39758 R_276) (x_39759 R_276))
	(diseqR_10 (Seq_20 x_39758 x_39759) Eps_20)))
(assert (forall ((x_39760 R_276))
	(diseqR_10 (Star_10 x_39760) Eps_20)))
(assert (forall ((x_39761 A_41) (x_39762 R_276) (x_39763 R_276))
	(diseqR_10 (Atom_10 x_39761) (Plus_86 x_39762 x_39763))))
(assert (forall ((x_39764 A_41) (x_39765 R_276) (x_39766 R_276))
	(diseqR_10 (Atom_10 x_39764) (Seq_20 x_39765 x_39766))))
(assert (forall ((x_39767 A_41) (x_39768 R_276))
	(diseqR_10 (Atom_10 x_39767) (Star_10 x_39768))))
(assert (forall ((x_39769 R_276) (x_39770 R_276) (x_39771 A_41))
	(diseqR_10 (Plus_86 x_39769 x_39770) (Atom_10 x_39771))))
(assert (forall ((x_39772 R_276) (x_39773 R_276) (x_39774 A_41))
	(diseqR_10 (Seq_20 x_39772 x_39773) (Atom_10 x_39774))))
(assert (forall ((x_39775 R_276) (x_39776 A_41))
	(diseqR_10 (Star_10 x_39775) (Atom_10 x_39776))))
(assert (forall ((x_39777 R_276) (x_39778 R_276) (x_39779 R_276) (x_39780 R_276))
	(diseqR_10 (Plus_86 x_39777 x_39778) (Seq_20 x_39779 x_39780))))
(assert (forall ((x_39781 R_276) (x_39782 R_276) (x_39783 R_276))
	(diseqR_10 (Plus_86 x_39781 x_39782) (Star_10 x_39783))))
(assert (forall ((x_39784 R_276) (x_39785 R_276) (x_39786 R_276) (x_39787 R_276))
	(diseqR_10 (Seq_20 x_39784 x_39785) (Plus_86 x_39786 x_39787))))
(assert (forall ((x_39788 R_276) (x_39789 R_276) (x_39790 R_276))
	(diseqR_10 (Star_10 x_39788) (Plus_86 x_39789 x_39790))))
(assert (forall ((x_39791 R_276) (x_39792 R_276) (x_39793 R_276))
	(diseqR_10 (Seq_20 x_39791 x_39792) (Star_10 x_39793))))
(assert (forall ((x_39794 R_276) (x_39795 R_276) (x_39796 R_276))
	(diseqR_10 (Star_10 x_39794) (Seq_20 x_39795 x_39796))))
(assert (forall ((x_39797 A_41) (x_39798 A_41))
	(=> (diseqA_10 x_39797 x_39798) (diseqR_10 (Atom_10 x_39797) (Atom_10 x_39798)))))
(assert (forall ((x_39799 R_276) (x_39800 R_276) (x_39801 R_276) (x_39802 R_276))
	(=> (diseqR_10 x_39799 x_39801) (diseqR_10 (Plus_86 x_39799 x_39800) (Plus_86 x_39801 x_39802)))))
(assert (forall ((x_39799 R_276) (x_39800 R_276) (x_39801 R_276) (x_39802 R_276))
	(=> (diseqR_10 x_39800 x_39802) (diseqR_10 (Plus_86 x_39799 x_39800) (Plus_86 x_39801 x_39802)))))
(assert (forall ((x_39803 R_276) (x_39804 R_276) (x_39805 R_276) (x_39806 R_276))
	(=> (diseqR_10 x_39803 x_39805) (diseqR_10 (Seq_20 x_39803 x_39804) (Seq_20 x_39805 x_39806)))))
(assert (forall ((x_39803 R_276) (x_39804 R_276) (x_39805 R_276) (x_39806 R_276))
	(=> (diseqR_10 x_39804 x_39806) (diseqR_10 (Seq_20 x_39803 x_39804) (Seq_20 x_39805 x_39806)))))
(assert (forall ((x_39807 R_276) (x_39808 R_276))
	(=> (diseqR_10 x_39807 x_39808) (diseqR_10 (Star_10 x_39807) (Star_10 x_39808)))))
(declare-datatypes ((list_154 0)) (((nil_175) (cons_154 (head_308 A_41) (tail_308 list_154)))))
(declare-fun diseqlist_154 (list_154 list_154) Bool)
(declare-fun head_309 (A_41 list_154) Bool)
(declare-fun tail_309 (list_154 list_154) Bool)
(declare-fun isnil_175 (list_154) Bool)
(declare-fun iscons_154 (list_154) Bool)
(assert (forall ((x_39810 A_41) (x_39811 list_154))
	(head_309 x_39810 (cons_154 x_39810 x_39811))))
(assert (forall ((x_39810 A_41) (x_39811 list_154))
	(tail_309 x_39811 (cons_154 x_39810 x_39811))))
(assert (isnil_175 nil_175))
(assert (forall ((x_39813 A_41) (x_39814 list_154))
	(iscons_154 (cons_154 x_39813 x_39814))))
(assert (forall ((x_39815 A_41) (x_39816 list_154))
	(diseqlist_154 nil_175 (cons_154 x_39815 x_39816))))
(assert (forall ((x_39817 A_41) (x_39818 list_154))
	(diseqlist_154 (cons_154 x_39817 x_39818) nil_175)))
(assert (forall ((x_39819 A_41) (x_39820 list_154) (x_39821 A_41) (x_39822 list_154))
	(=> (diseqA_10 x_39819 x_39821) (diseqlist_154 (cons_154 x_39819 x_39820) (cons_154 x_39821 x_39822)))))
(assert (forall ((x_39819 A_41) (x_39820 list_154) (x_39821 A_41) (x_39822 list_154))
	(=> (diseqlist_154 x_39820 x_39822) (diseqlist_154 (cons_154 x_39819 x_39820) (cons_154 x_39821 x_39822)))))
(declare-fun seq_21 (R_276 R_276 R_276) Bool)
(assert (forall ((y_1454 R_276))
	(seq_21 Nil_174 Nil_174 y_1454)))
(assert (forall ((x_37633 R_276) (x_37876 A_41))
	(seq_21 Nil_174 (Atom_10 x_37876) Nil_174)))
(assert (forall ((x_37633 R_276))
	(seq_21 Nil_174 Eps_20 Nil_174)))
(assert (forall ((x_37633 R_276) (x_37877 R_276) (x_37878 R_276))
	(seq_21 Nil_174 (Plus_86 x_37877 x_37878) Nil_174)))
(assert (forall ((x_37633 R_276) (x_37879 R_276) (x_37880 R_276))
	(seq_21 Nil_174 (Seq_20 x_37879 x_37880) Nil_174)))
(assert (forall ((x_37633 R_276) (x_37881 R_276))
	(seq_21 Nil_174 (Star_10 x_37881) Nil_174)))
(assert (forall ((x_37634 R_276) (x_37690 A_41) (x_37633 R_276))
	(seq_21 (Atom_10 x_37690) Eps_20 (Atom_10 x_37690))))
(assert (forall ((x_37634 R_276) (x_37633 R_276))
	(seq_21 Eps_20 Eps_20 Eps_20)))
(assert (forall ((x_37634 R_276) (x_37691 R_276) (x_37692 R_276) (x_37633 R_276))
	(seq_21 (Plus_86 x_37691 x_37692) Eps_20 (Plus_86 x_37691 x_37692))))
(assert (forall ((x_37634 R_276) (x_37693 R_276) (x_37694 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 x_37693 x_37694) Eps_20 (Seq_20 x_37693 x_37694))))
(assert (forall ((x_37634 R_276) (x_37695 R_276) (x_37633 R_276))
	(seq_21 (Star_10 x_37695) Eps_20 (Star_10 x_37695))))
(assert (forall ((x_37635 R_276) (x_37654 A_41) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Atom_10 x_37654) (Atom_10 x_37654) Eps_20)))
(assert (forall ((x_37635 R_276) (x_37655 R_276) (x_37656 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Plus_86 x_37655 x_37656) (Plus_86 x_37655 x_37656) Eps_20)))
(assert (forall ((x_37635 R_276) (x_37657 R_276) (x_37658 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 x_37657 x_37658) (Seq_20 x_37657 x_37658) Eps_20)))
(assert (forall ((x_37635 R_276) (x_37659 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Star_10 x_37659) (Star_10 x_37659) Eps_20)))
(assert (forall ((x_37636 R_276) (x_37648 A_41) (x_37635 R_276) (x_37660 A_41) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Atom_10 x_37660) (Atom_10 x_37648)) (Atom_10 x_37660) (Atom_10 x_37648))))
(assert (forall ((x_37636 R_276) (x_37648 A_41) (x_37635 R_276) (x_37661 R_276) (x_37662 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Plus_86 x_37661 x_37662) (Atom_10 x_37648)) (Plus_86 x_37661 x_37662) (Atom_10 x_37648))))
(assert (forall ((x_37636 R_276) (x_37648 A_41) (x_37635 R_276) (x_37663 R_276) (x_37664 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Seq_20 x_37663 x_37664) (Atom_10 x_37648)) (Seq_20 x_37663 x_37664) (Atom_10 x_37648))))
(assert (forall ((x_37636 R_276) (x_37648 A_41) (x_37635 R_276) (x_37665 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Star_10 x_37665) (Atom_10 x_37648)) (Star_10 x_37665) (Atom_10 x_37648))))
(assert (forall ((x_37636 R_276) (x_37649 R_276) (x_37650 R_276) (x_37635 R_276) (x_37672 A_41) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Atom_10 x_37672) (Plus_86 x_37649 x_37650)) (Atom_10 x_37672) (Plus_86 x_37649 x_37650))))
(assert (forall ((x_37636 R_276) (x_37649 R_276) (x_37650 R_276) (x_37635 R_276) (x_37673 R_276) (x_37674 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Plus_86 x_37673 x_37674) (Plus_86 x_37649 x_37650)) (Plus_86 x_37673 x_37674) (Plus_86 x_37649 x_37650))))
(assert (forall ((x_37636 R_276) (x_37649 R_276) (x_37650 R_276) (x_37635 R_276) (x_37675 R_276) (x_37676 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Seq_20 x_37675 x_37676) (Plus_86 x_37649 x_37650)) (Seq_20 x_37675 x_37676) (Plus_86 x_37649 x_37650))))
(assert (forall ((x_37636 R_276) (x_37649 R_276) (x_37650 R_276) (x_37635 R_276) (x_37677 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Star_10 x_37677) (Plus_86 x_37649 x_37650)) (Star_10 x_37677) (Plus_86 x_37649 x_37650))))
(assert (forall ((x_37636 R_276) (x_37651 R_276) (x_37652 R_276) (x_37635 R_276) (x_37678 A_41) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Atom_10 x_37678) (Seq_20 x_37651 x_37652)) (Atom_10 x_37678) (Seq_20 x_37651 x_37652))))
(assert (forall ((x_37636 R_276) (x_37651 R_276) (x_37652 R_276) (x_37635 R_276) (x_37679 R_276) (x_37680 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Plus_86 x_37679 x_37680) (Seq_20 x_37651 x_37652)) (Plus_86 x_37679 x_37680) (Seq_20 x_37651 x_37652))))
(assert (forall ((x_37636 R_276) (x_37651 R_276) (x_37652 R_276) (x_37635 R_276) (x_37681 R_276) (x_37682 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Seq_20 x_37681 x_37682) (Seq_20 x_37651 x_37652)) (Seq_20 x_37681 x_37682) (Seq_20 x_37651 x_37652))))
(assert (forall ((x_37636 R_276) (x_37651 R_276) (x_37652 R_276) (x_37635 R_276) (x_37683 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Star_10 x_37683) (Seq_20 x_37651 x_37652)) (Star_10 x_37683) (Seq_20 x_37651 x_37652))))
(assert (forall ((x_37636 R_276) (x_37653 R_276) (x_37635 R_276) (x_37684 A_41) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Atom_10 x_37684) (Star_10 x_37653)) (Atom_10 x_37684) (Star_10 x_37653))))
(assert (forall ((x_37636 R_276) (x_37653 R_276) (x_37635 R_276) (x_37685 R_276) (x_37686 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Plus_86 x_37685 x_37686) (Star_10 x_37653)) (Plus_86 x_37685 x_37686) (Star_10 x_37653))))
(assert (forall ((x_37636 R_276) (x_37653 R_276) (x_37635 R_276) (x_37687 R_276) (x_37688 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Seq_20 x_37687 x_37688) (Star_10 x_37653)) (Seq_20 x_37687 x_37688) (Star_10 x_37653))))
(assert (forall ((x_37636 R_276) (x_37653 R_276) (x_37635 R_276) (x_37689 R_276) (x_37634 R_276) (x_37633 R_276))
	(seq_21 (Seq_20 (Star_10 x_37689) (Star_10 x_37653)) (Star_10 x_37689) (Star_10 x_37653))))
(declare-fun plus_87 (R_276 R_276 R_276) Bool)
(assert (forall ((x_39636 R_276))
	(plus_87 x_39636 Nil_174 x_39636)))
(assert (forall ((x_37638 R_276) (x_38818 A_41))
	(plus_87 (Atom_10 x_38818) (Atom_10 x_38818) Nil_174)))
(assert (forall ((x_37638 R_276))
	(plus_87 Eps_20 Eps_20 Nil_174)))
(assert (forall ((x_37638 R_276) (x_38819 R_276) (x_38820 R_276))
	(plus_87 (Plus_86 x_38819 x_38820) (Plus_86 x_38819 x_38820) Nil_174)))
(assert (forall ((x_37638 R_276) (x_38821 R_276) (x_38822 R_276))
	(plus_87 (Seq_20 x_38821 x_38822) (Seq_20 x_38821 x_38822) Nil_174)))
(assert (forall ((x_37638 R_276) (x_38823 R_276))
	(plus_87 (Star_10 x_38823) (Star_10 x_38823) Nil_174)))
(assert (forall ((x_37639 R_276) (x_38812 A_41) (x_37638 R_276) (x_38824 A_41))
	(plus_87 (Plus_86 (Atom_10 x_38824) (Atom_10 x_38812)) (Atom_10 x_38824) (Atom_10 x_38812))))
(assert (forall ((x_37639 R_276) (x_38812 A_41) (x_37638 R_276))
	(plus_87 (Plus_86 Eps_20 (Atom_10 x_38812)) Eps_20 (Atom_10 x_38812))))
(assert (forall ((x_37639 R_276) (x_38812 A_41) (x_37638 R_276) (x_38825 R_276) (x_38826 R_276))
	(plus_87 (Plus_86 (Plus_86 x_38825 x_38826) (Atom_10 x_38812)) (Plus_86 x_38825 x_38826) (Atom_10 x_38812))))
(assert (forall ((x_37639 R_276) (x_38812 A_41) (x_37638 R_276) (x_38827 R_276) (x_38828 R_276))
	(plus_87 (Plus_86 (Seq_20 x_38827 x_38828) (Atom_10 x_38812)) (Seq_20 x_38827 x_38828) (Atom_10 x_38812))))
(assert (forall ((x_37639 R_276) (x_38812 A_41) (x_37638 R_276) (x_38829 R_276))
	(plus_87 (Plus_86 (Star_10 x_38829) (Atom_10 x_38812)) (Star_10 x_38829) (Atom_10 x_38812))))
(assert (forall ((x_37639 R_276) (x_37638 R_276) (x_38830 A_41))
	(plus_87 (Plus_86 (Atom_10 x_38830) Eps_20) (Atom_10 x_38830) Eps_20)))
(assert (forall ((x_37639 R_276) (x_37638 R_276))
	(plus_87 (Plus_86 Eps_20 Eps_20) Eps_20 Eps_20)))
(assert (forall ((x_37639 R_276) (x_37638 R_276) (x_38831 R_276) (x_38832 R_276))
	(plus_87 (Plus_86 (Plus_86 x_38831 x_38832) Eps_20) (Plus_86 x_38831 x_38832) Eps_20)))
(assert (forall ((x_37639 R_276) (x_37638 R_276) (x_38833 R_276) (x_38834 R_276))
	(plus_87 (Plus_86 (Seq_20 x_38833 x_38834) Eps_20) (Seq_20 x_38833 x_38834) Eps_20)))
(assert (forall ((x_37639 R_276) (x_37638 R_276) (x_38835 R_276))
	(plus_87 (Plus_86 (Star_10 x_38835) Eps_20) (Star_10 x_38835) Eps_20)))
(assert (forall ((x_37639 R_276) (x_38813 R_276) (x_38814 R_276) (x_37638 R_276) (x_38836 A_41))
	(plus_87 (Plus_86 (Atom_10 x_38836) (Plus_86 x_38813 x_38814)) (Atom_10 x_38836) (Plus_86 x_38813 x_38814))))
(assert (forall ((x_37639 R_276) (x_38813 R_276) (x_38814 R_276) (x_37638 R_276))
	(plus_87 (Plus_86 Eps_20 (Plus_86 x_38813 x_38814)) Eps_20 (Plus_86 x_38813 x_38814))))
(assert (forall ((x_37639 R_276) (x_38813 R_276) (x_38814 R_276) (x_37638 R_276) (x_38837 R_276) (x_38838 R_276))
	(plus_87 (Plus_86 (Plus_86 x_38837 x_38838) (Plus_86 x_38813 x_38814)) (Plus_86 x_38837 x_38838) (Plus_86 x_38813 x_38814))))
(assert (forall ((x_37639 R_276) (x_38813 R_276) (x_38814 R_276) (x_37638 R_276) (x_38839 R_276) (x_38840 R_276))
	(plus_87 (Plus_86 (Seq_20 x_38839 x_38840) (Plus_86 x_38813 x_38814)) (Seq_20 x_38839 x_38840) (Plus_86 x_38813 x_38814))))
(assert (forall ((x_37639 R_276) (x_38813 R_276) (x_38814 R_276) (x_37638 R_276) (x_38841 R_276))
	(plus_87 (Plus_86 (Star_10 x_38841) (Plus_86 x_38813 x_38814)) (Star_10 x_38841) (Plus_86 x_38813 x_38814))))
(assert (forall ((x_37639 R_276) (x_38815 R_276) (x_38816 R_276) (x_37638 R_276) (x_38842 A_41))
	(plus_87 (Plus_86 (Atom_10 x_38842) (Seq_20 x_38815 x_38816)) (Atom_10 x_38842) (Seq_20 x_38815 x_38816))))
(assert (forall ((x_37639 R_276) (x_38815 R_276) (x_38816 R_276) (x_37638 R_276))
	(plus_87 (Plus_86 Eps_20 (Seq_20 x_38815 x_38816)) Eps_20 (Seq_20 x_38815 x_38816))))
(assert (forall ((x_37639 R_276) (x_38815 R_276) (x_38816 R_276) (x_37638 R_276) (x_38843 R_276) (x_38844 R_276))
	(plus_87 (Plus_86 (Plus_86 x_38843 x_38844) (Seq_20 x_38815 x_38816)) (Plus_86 x_38843 x_38844) (Seq_20 x_38815 x_38816))))
(assert (forall ((x_37639 R_276) (x_38815 R_276) (x_38816 R_276) (x_37638 R_276) (x_38845 R_276) (x_38846 R_276))
	(plus_87 (Plus_86 (Seq_20 x_38845 x_38846) (Seq_20 x_38815 x_38816)) (Seq_20 x_38845 x_38846) (Seq_20 x_38815 x_38816))))
(assert (forall ((x_37639 R_276) (x_38815 R_276) (x_38816 R_276) (x_37638 R_276) (x_38847 R_276))
	(plus_87 (Plus_86 (Star_10 x_38847) (Seq_20 x_38815 x_38816)) (Star_10 x_38847) (Seq_20 x_38815 x_38816))))
(assert (forall ((x_37639 R_276) (x_38817 R_276) (x_37638 R_276) (x_38848 A_41))
	(plus_87 (Plus_86 (Atom_10 x_38848) (Star_10 x_38817)) (Atom_10 x_38848) (Star_10 x_38817))))
(assert (forall ((x_37639 R_276) (x_38817 R_276) (x_37638 R_276))
	(plus_87 (Plus_86 Eps_20 (Star_10 x_38817)) Eps_20 (Star_10 x_38817))))
(assert (forall ((x_37639 R_276) (x_38817 R_276) (x_37638 R_276) (x_38849 R_276) (x_38850 R_276))
	(plus_87 (Plus_86 (Plus_86 x_38849 x_38850) (Star_10 x_38817)) (Plus_86 x_38849 x_38850) (Star_10 x_38817))))
(assert (forall ((x_37639 R_276) (x_38817 R_276) (x_37638 R_276) (x_38851 R_276) (x_38852 R_276))
	(plus_87 (Plus_86 (Seq_20 x_38851 x_38852) (Star_10 x_38817)) (Seq_20 x_38851 x_38852) (Star_10 x_38817))))
(assert (forall ((x_37639 R_276) (x_38817 R_276) (x_37638 R_276) (x_38853 R_276))
	(plus_87 (Plus_86 (Star_10 x_38853) (Star_10 x_38817)) (Star_10 x_38853) (Star_10 x_38817))))
(declare-fun eqA_10 (Bool_226 A_41 A_41) Bool)
(assert (eqA_10 true_226 Y_1453 Y_1453))
(assert (eqA_10 false_226 Y_1453 X_37631))
(assert (eqA_10 false_226 X_37631 Y_1453))
(assert (eqA_10 true_226 X_37631 X_37631))
(declare-fun eps_21 (Bool_226 R_276) Bool)
(assert (forall ((y_1457 R_276))
	(eps_21 true_226 (Star_10 y_1457))))
(assert (forall ((x_39672 Bool_226) (x_39673 Bool_226) (x_39674 Bool_226) (r_277 R_276) (q_85 R_276))
	(=> (and (eps_21 x_39673 r_277) (eps_21 x_39674 q_85) (and_226 x_39672 x_39673 x_39674)) (eps_21 x_39672 (Seq_20 r_277 q_85)))))
(assert (forall ((x_39675 Bool_226) (x_39676 Bool_226) (x_39677 Bool_226) (p_251 R_276) (q_86 R_276))
	(=> (and (eps_21 x_39676 p_251) (eps_21 x_39677 q_86) (or_230 x_39675 x_39676 x_39677)) (eps_21 x_39675 (Plus_86 p_251 q_86)))))
(assert (eps_21 true_226 Eps_20))
(assert (forall ((x_37642 R_276) (x_38854 A_41))
	(eps_21 false_226 (Atom_10 x_38854))))
(assert (forall ((x_37642 R_276))
	(eps_21 false_226 Nil_174)))
(declare-fun epsR_10 (R_276 R_276) Bool)
(assert (forall ((x_37643 R_276))
	(=> (eps_21 true_226 x_37643) (epsR_10 Eps_20 x_37643))))
(assert (forall ((x_37643 R_276))
	(=> (eps_21 false_226 x_37643) (epsR_10 Nil_174 x_37643))))
(declare-fun step_10 (R_276 R_276 A_41) Bool)
(assert (forall ((x_39685 R_276) (x_39686 R_276) (p_252 R_276) (y_1458 A_41))
	(=> (and (step_10 x_39686 p_252 y_1458) (seq_21 x_39685 x_39686 (Star_10 p_252))) (step_10 x_39685 (Star_10 p_252) y_1458))))
(assert (forall ((x_39688 R_276) (x_39689 R_276) (x_39690 R_276) (x_39691 R_276) (x_39692 R_276) (x_39693 R_276) (r_278 R_276) (q_87 R_276) (y_1458 A_41))
	(=> (and (step_10 x_39689 r_278 y_1458) (seq_21 x_39690 x_39689 q_87) (epsR_10 x_39691 r_278) (step_10 x_39692 q_87 y_1458) (seq_21 x_39693 x_39691 x_39692) (plus_87 x_39688 x_39690 x_39693)) (step_10 x_39688 (Seq_20 r_278 q_87) y_1458))))
(assert (forall ((x_39695 R_276) (x_39696 R_276) (x_39697 R_276) (p_253 R_276) (q_88 R_276) (y_1458 A_41))
	(=> (and (step_10 x_39696 p_253 y_1458) (step_10 x_39697 q_88 y_1458) (plus_87 x_39695 x_39696 x_39697)) (step_10 x_39695 (Plus_86 p_253 q_88) y_1458))))
(assert (forall ((a_42 A_41) (y_1458 A_41))
	(=> (eqA_10 true_226 a_42 y_1458) (step_10 Eps_20 (Atom_10 a_42) y_1458))))
(assert (forall ((a_42 A_41) (y_1458 A_41))
	(=> (eqA_10 false_226 a_42 y_1458) (step_10 Nil_174 (Atom_10 a_42) y_1458))))
(assert (forall ((x_37645 R_276) (y_1458 A_41))
	(step_10 Nil_174 Eps_20 y_1458)))
(assert (forall ((x_37645 R_276) (y_1458 A_41))
	(step_10 Nil_174 Nil_174 y_1458)))
(declare-fun recognise_10 (Bool_226 R_276 list_154) Bool)
(assert (forall ((x_39705 Bool_226) (x_39706 R_276) (z_1339 A_41) (xs_429 list_154) (x_37646 R_276))
	(=> (and (step_10 x_39706 x_37646 z_1339) (recognise_10 x_39705 x_39706 xs_429)) (recognise_10 x_39705 x_37646 (cons_154 z_1339 xs_429)))))
(assert (forall ((x_39708 Bool_226) (x_37646 R_276))
	(=> (eps_21 x_39708 x_37646) (recognise_10 x_39708 x_37646 nil_175))))
(assert (forall ((x_37647 A_41) (y_1460 list_154))
	(=> (and (recognise_10 true_226 Eps_20 (cons_154 x_37647 y_1460))) false)))
(assert (=> (and (recognise_10 false_226 Eps_20 nil_175)) false))
(check-sat)
