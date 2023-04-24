(set-logic HORN)
(declare-datatypes ((Bool_112 0)) (((false_112) (true_112))))
(declare-fun diseqBool_51 (Bool_112 Bool_112) Bool)
(declare-fun isfalse_51 (Bool_112) Bool)
(declare-fun istrue_51 (Bool_112) Bool)
(assert (isfalse_51 false_112))
(assert (istrue_51 true_112))
(assert (diseqBool_51 false_112 true_112))
(assert (diseqBool_51 true_112 false_112))
(declare-fun and_112 (Bool_112 Bool_112 Bool_112) Bool)
(declare-fun or_113 (Bool_112 Bool_112 Bool_112) Bool)
(declare-fun hence_112 (Bool_112 Bool_112 Bool_112) Bool)
(declare-fun not_112 (Bool_112 Bool_112) Bool)
(assert (and_112 false_112 false_112 false_112))
(assert (and_112 false_112 true_112 false_112))
(assert (and_112 false_112 false_112 true_112))
(assert (and_112 true_112 true_112 true_112))
(assert (or_113 false_112 false_112 false_112))
(assert (or_113 true_112 true_112 false_112))
(assert (or_113 true_112 false_112 true_112))
(assert (or_113 true_112 true_112 true_112))
(assert (hence_112 true_112 false_112 false_112))
(assert (hence_112 false_112 true_112 false_112))
(assert (hence_112 true_112 false_112 true_112))
(assert (hence_112 true_112 true_112 true_112))
(assert (not_112 true_112 false_112))
(assert (not_112 false_112 true_112))
(declare-datatypes ((A_20 0)) (((X_12732) (Y_566))))
(declare-fun diseqA_3 (A_20 A_20) Bool)
(declare-fun isX_3 (A_20) Bool)
(declare-fun isY_3 (A_20) Bool)
(assert (isX_3 X_12732))
(assert (isY_3 Y_566))
(assert (diseqA_3 X_12732 Y_566))
(assert (diseqA_3 Y_566 X_12732))
(declare-datatypes ((R_126 0)) (((Nil_89) (Eps_6) (Atom_3 (projAtom_6 A_20)) (Plus_19 (projPlus_12 R_126) (projPlus_13 R_126)) (Seq_6 (projSeq_12 R_126) (projSeq_13 R_126)) (Star_3 (projStar_6 R_126)))))
(declare-fun diseqR_3 (R_126 R_126) Bool)
(declare-fun projAtom_7 (A_20 R_126) Bool)
(declare-fun projPlus_14 (R_126 R_126) Bool)
(declare-fun projPlus_15 (R_126 R_126) Bool)
(declare-fun projSeq_14 (R_126 R_126) Bool)
(declare-fun projSeq_15 (R_126 R_126) Bool)
(declare-fun projStar_7 (R_126 R_126) Bool)
(declare-fun isNil_89 (R_126) Bool)
(declare-fun isEps_3 (R_126) Bool)
(declare-fun isAtom_3 (R_126) Bool)
(declare-fun isPlus_3 (R_126) Bool)
(declare-fun isSeq_3 (R_126) Bool)
(declare-fun isStar_3 (R_126) Bool)
(assert (forall ((x_14820 A_20))
	(projAtom_7 x_14820 (Atom_3 x_14820))))
(assert (forall ((x_14822 R_126) (x_14823 R_126))
	(projPlus_14 x_14822 (Plus_19 x_14822 x_14823))))
(assert (forall ((x_14822 R_126) (x_14823 R_126))
	(projPlus_15 x_14823 (Plus_19 x_14822 x_14823))))
(assert (forall ((x_14825 R_126) (x_14826 R_126))
	(projSeq_14 x_14825 (Seq_6 x_14825 x_14826))))
(assert (forall ((x_14825 R_126) (x_14826 R_126))
	(projSeq_15 x_14826 (Seq_6 x_14825 x_14826))))
(assert (forall ((x_14828 R_126))
	(projStar_7 x_14828 (Star_3 x_14828))))
(assert (isNil_89 Nil_89))
(assert (isEps_3 Eps_6))
(assert (forall ((x_14830 A_20))
	(isAtom_3 (Atom_3 x_14830))))
(assert (forall ((x_14831 R_126) (x_14832 R_126))
	(isPlus_3 (Plus_19 x_14831 x_14832))))
(assert (forall ((x_14833 R_126) (x_14834 R_126))
	(isSeq_3 (Seq_6 x_14833 x_14834))))
(assert (forall ((x_14835 R_126))
	(isStar_3 (Star_3 x_14835))))
(assert (diseqR_3 Nil_89 Eps_6))
(assert (forall ((x_14836 A_20))
	(diseqR_3 Nil_89 (Atom_3 x_14836))))
(assert (forall ((x_14837 R_126) (x_14838 R_126))
	(diseqR_3 Nil_89 (Plus_19 x_14837 x_14838))))
(assert (forall ((x_14839 R_126) (x_14840 R_126))
	(diseqR_3 Nil_89 (Seq_6 x_14839 x_14840))))
(assert (forall ((x_14841 R_126))
	(diseqR_3 Nil_89 (Star_3 x_14841))))
(assert (diseqR_3 Eps_6 Nil_89))
(assert (forall ((x_14842 A_20))
	(diseqR_3 (Atom_3 x_14842) Nil_89)))
(assert (forall ((x_14843 R_126) (x_14844 R_126))
	(diseqR_3 (Plus_19 x_14843 x_14844) Nil_89)))
(assert (forall ((x_14845 R_126) (x_14846 R_126))
	(diseqR_3 (Seq_6 x_14845 x_14846) Nil_89)))
(assert (forall ((x_14847 R_126))
	(diseqR_3 (Star_3 x_14847) Nil_89)))
(assert (forall ((x_14848 A_20))
	(diseqR_3 Eps_6 (Atom_3 x_14848))))
(assert (forall ((x_14849 R_126) (x_14850 R_126))
	(diseqR_3 Eps_6 (Plus_19 x_14849 x_14850))))
(assert (forall ((x_14851 R_126) (x_14852 R_126))
	(diseqR_3 Eps_6 (Seq_6 x_14851 x_14852))))
(assert (forall ((x_14853 R_126))
	(diseqR_3 Eps_6 (Star_3 x_14853))))
(assert (forall ((x_14854 A_20))
	(diseqR_3 (Atom_3 x_14854) Eps_6)))
(assert (forall ((x_14855 R_126) (x_14856 R_126))
	(diseqR_3 (Plus_19 x_14855 x_14856) Eps_6)))
(assert (forall ((x_14857 R_126) (x_14858 R_126))
	(diseqR_3 (Seq_6 x_14857 x_14858) Eps_6)))
(assert (forall ((x_14859 R_126))
	(diseqR_3 (Star_3 x_14859) Eps_6)))
(assert (forall ((x_14860 A_20) (x_14861 R_126) (x_14862 R_126))
	(diseqR_3 (Atom_3 x_14860) (Plus_19 x_14861 x_14862))))
(assert (forall ((x_14863 A_20) (x_14864 R_126) (x_14865 R_126))
	(diseqR_3 (Atom_3 x_14863) (Seq_6 x_14864 x_14865))))
(assert (forall ((x_14866 A_20) (x_14867 R_126))
	(diseqR_3 (Atom_3 x_14866) (Star_3 x_14867))))
(assert (forall ((x_14868 R_126) (x_14869 R_126) (x_14870 A_20))
	(diseqR_3 (Plus_19 x_14868 x_14869) (Atom_3 x_14870))))
(assert (forall ((x_14871 R_126) (x_14872 R_126) (x_14873 A_20))
	(diseqR_3 (Seq_6 x_14871 x_14872) (Atom_3 x_14873))))
(assert (forall ((x_14874 R_126) (x_14875 A_20))
	(diseqR_3 (Star_3 x_14874) (Atom_3 x_14875))))
(assert (forall ((x_14876 R_126) (x_14877 R_126) (x_14878 R_126) (x_14879 R_126))
	(diseqR_3 (Plus_19 x_14876 x_14877) (Seq_6 x_14878 x_14879))))
(assert (forall ((x_14880 R_126) (x_14881 R_126) (x_14882 R_126))
	(diseqR_3 (Plus_19 x_14880 x_14881) (Star_3 x_14882))))
(assert (forall ((x_14883 R_126) (x_14884 R_126) (x_14885 R_126) (x_14886 R_126))
	(diseqR_3 (Seq_6 x_14883 x_14884) (Plus_19 x_14885 x_14886))))
(assert (forall ((x_14887 R_126) (x_14888 R_126) (x_14889 R_126))
	(diseqR_3 (Star_3 x_14887) (Plus_19 x_14888 x_14889))))
(assert (forall ((x_14890 R_126) (x_14891 R_126) (x_14892 R_126))
	(diseqR_3 (Seq_6 x_14890 x_14891) (Star_3 x_14892))))
(assert (forall ((x_14893 R_126) (x_14894 R_126) (x_14895 R_126))
	(diseqR_3 (Star_3 x_14893) (Seq_6 x_14894 x_14895))))
(assert (forall ((x_14896 A_20) (x_14897 A_20))
	(=> (diseqA_3 x_14896 x_14897) (diseqR_3 (Atom_3 x_14896) (Atom_3 x_14897)))))
(assert (forall ((x_14898 R_126) (x_14899 R_126) (x_14900 R_126) (x_14901 R_126))
	(=> (diseqR_3 x_14898 x_14900) (diseqR_3 (Plus_19 x_14898 x_14899) (Plus_19 x_14900 x_14901)))))
(assert (forall ((x_14898 R_126) (x_14899 R_126) (x_14900 R_126) (x_14901 R_126))
	(=> (diseqR_3 x_14899 x_14901) (diseqR_3 (Plus_19 x_14898 x_14899) (Plus_19 x_14900 x_14901)))))
(assert (forall ((x_14902 R_126) (x_14903 R_126) (x_14904 R_126) (x_14905 R_126))
	(=> (diseqR_3 x_14902 x_14904) (diseqR_3 (Seq_6 x_14902 x_14903) (Seq_6 x_14904 x_14905)))))
(assert (forall ((x_14902 R_126) (x_14903 R_126) (x_14904 R_126) (x_14905 R_126))
	(=> (diseqR_3 x_14903 x_14905) (diseqR_3 (Seq_6 x_14902 x_14903) (Seq_6 x_14904 x_14905)))))
(assert (forall ((x_14906 R_126) (x_14907 R_126))
	(=> (diseqR_3 x_14906 x_14907) (diseqR_3 (Star_3 x_14906) (Star_3 x_14907)))))
(declare-datatypes ((list_84 0)) (((nil_90) (cons_84 (head_168 A_20) (tail_168 list_84)))))
(declare-fun diseqlist_84 (list_84 list_84) Bool)
(declare-fun head_169 (A_20 list_84) Bool)
(declare-fun tail_169 (list_84 list_84) Bool)
(declare-fun isnil_90 (list_84) Bool)
(declare-fun iscons_84 (list_84) Bool)
(assert (forall ((x_14909 A_20) (x_14910 list_84))
	(head_169 x_14909 (cons_84 x_14909 x_14910))))
(assert (forall ((x_14909 A_20) (x_14910 list_84))
	(tail_169 x_14910 (cons_84 x_14909 x_14910))))
(assert (isnil_90 nil_90))
(assert (forall ((x_14912 A_20) (x_14913 list_84))
	(iscons_84 (cons_84 x_14912 x_14913))))
(assert (forall ((x_14914 A_20) (x_14915 list_84))
	(diseqlist_84 nil_90 (cons_84 x_14914 x_14915))))
(assert (forall ((x_14916 A_20) (x_14917 list_84))
	(diseqlist_84 (cons_84 x_14916 x_14917) nil_90)))
(assert (forall ((x_14918 A_20) (x_14919 list_84) (x_14920 A_20) (x_14921 list_84))
	(=> (diseqA_3 x_14918 x_14920) (diseqlist_84 (cons_84 x_14918 x_14919) (cons_84 x_14920 x_14921)))))
(assert (forall ((x_14918 A_20) (x_14919 list_84) (x_14920 A_20) (x_14921 list_84))
	(=> (diseqlist_84 x_14919 x_14921) (diseqlist_84 (cons_84 x_14918 x_14919) (cons_84 x_14920 x_14921)))))
(declare-fun seq_7 (R_126 R_126 R_126) Bool)
(assert (forall ((y_567 R_126))
	(seq_7 Nil_89 Nil_89 y_567)))
(assert (forall ((x_12734 R_126) (x_12976 A_20))
	(seq_7 Nil_89 (Atom_3 x_12976) Nil_89)))
(assert (forall ((x_12734 R_126))
	(seq_7 Nil_89 Eps_6 Nil_89)))
(assert (forall ((x_12734 R_126) (x_12977 R_126) (x_12978 R_126))
	(seq_7 Nil_89 (Plus_19 x_12977 x_12978) Nil_89)))
(assert (forall ((x_12734 R_126) (x_12979 R_126) (x_12980 R_126))
	(seq_7 Nil_89 (Seq_6 x_12979 x_12980) Nil_89)))
(assert (forall ((x_12734 R_126) (x_12981 R_126))
	(seq_7 Nil_89 (Star_3 x_12981) Nil_89)))
(assert (forall ((x_12735 R_126) (x_12790 A_20) (x_12734 R_126))
	(seq_7 (Atom_3 x_12790) Eps_6 (Atom_3 x_12790))))
(assert (forall ((x_12735 R_126) (x_12734 R_126))
	(seq_7 Eps_6 Eps_6 Eps_6)))
(assert (forall ((x_12735 R_126) (x_12791 R_126) (x_12792 R_126) (x_12734 R_126))
	(seq_7 (Plus_19 x_12791 x_12792) Eps_6 (Plus_19 x_12791 x_12792))))
(assert (forall ((x_12735 R_126) (x_12793 R_126) (x_12794 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 x_12793 x_12794) Eps_6 (Seq_6 x_12793 x_12794))))
(assert (forall ((x_12735 R_126) (x_12795 R_126) (x_12734 R_126))
	(seq_7 (Star_3 x_12795) Eps_6 (Star_3 x_12795))))
(assert (forall ((x_12736 R_126) (x_12754 A_20) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Atom_3 x_12754) (Atom_3 x_12754) Eps_6)))
(assert (forall ((x_12736 R_126) (x_12755 R_126) (x_12756 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Plus_19 x_12755 x_12756) (Plus_19 x_12755 x_12756) Eps_6)))
(assert (forall ((x_12736 R_126) (x_12757 R_126) (x_12758 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 x_12757 x_12758) (Seq_6 x_12757 x_12758) Eps_6)))
(assert (forall ((x_12736 R_126) (x_12759 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Star_3 x_12759) (Star_3 x_12759) Eps_6)))
(assert (forall ((x_12737 R_126) (x_12748 A_20) (x_12736 R_126) (x_12760 A_20) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Atom_3 x_12760) (Atom_3 x_12748)) (Atom_3 x_12760) (Atom_3 x_12748))))
(assert (forall ((x_12737 R_126) (x_12748 A_20) (x_12736 R_126) (x_12761 R_126) (x_12762 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Plus_19 x_12761 x_12762) (Atom_3 x_12748)) (Plus_19 x_12761 x_12762) (Atom_3 x_12748))))
(assert (forall ((x_12737 R_126) (x_12748 A_20) (x_12736 R_126) (x_12763 R_126) (x_12764 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Seq_6 x_12763 x_12764) (Atom_3 x_12748)) (Seq_6 x_12763 x_12764) (Atom_3 x_12748))))
(assert (forall ((x_12737 R_126) (x_12748 A_20) (x_12736 R_126) (x_12765 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Star_3 x_12765) (Atom_3 x_12748)) (Star_3 x_12765) (Atom_3 x_12748))))
(assert (forall ((x_12737 R_126) (x_12749 R_126) (x_12750 R_126) (x_12736 R_126) (x_12772 A_20) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Atom_3 x_12772) (Plus_19 x_12749 x_12750)) (Atom_3 x_12772) (Plus_19 x_12749 x_12750))))
(assert (forall ((x_12737 R_126) (x_12749 R_126) (x_12750 R_126) (x_12736 R_126) (x_12773 R_126) (x_12774 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Plus_19 x_12773 x_12774) (Plus_19 x_12749 x_12750)) (Plus_19 x_12773 x_12774) (Plus_19 x_12749 x_12750))))
(assert (forall ((x_12737 R_126) (x_12749 R_126) (x_12750 R_126) (x_12736 R_126) (x_12775 R_126) (x_12776 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Seq_6 x_12775 x_12776) (Plus_19 x_12749 x_12750)) (Seq_6 x_12775 x_12776) (Plus_19 x_12749 x_12750))))
(assert (forall ((x_12737 R_126) (x_12749 R_126) (x_12750 R_126) (x_12736 R_126) (x_12777 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Star_3 x_12777) (Plus_19 x_12749 x_12750)) (Star_3 x_12777) (Plus_19 x_12749 x_12750))))
(assert (forall ((x_12737 R_126) (x_12751 R_126) (x_12752 R_126) (x_12736 R_126) (x_12778 A_20) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Atom_3 x_12778) (Seq_6 x_12751 x_12752)) (Atom_3 x_12778) (Seq_6 x_12751 x_12752))))
(assert (forall ((x_12737 R_126) (x_12751 R_126) (x_12752 R_126) (x_12736 R_126) (x_12779 R_126) (x_12780 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Plus_19 x_12779 x_12780) (Seq_6 x_12751 x_12752)) (Plus_19 x_12779 x_12780) (Seq_6 x_12751 x_12752))))
(assert (forall ((x_12737 R_126) (x_12751 R_126) (x_12752 R_126) (x_12736 R_126) (x_12781 R_126) (x_12782 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Seq_6 x_12781 x_12782) (Seq_6 x_12751 x_12752)) (Seq_6 x_12781 x_12782) (Seq_6 x_12751 x_12752))))
(assert (forall ((x_12737 R_126) (x_12751 R_126) (x_12752 R_126) (x_12736 R_126) (x_12783 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Star_3 x_12783) (Seq_6 x_12751 x_12752)) (Star_3 x_12783) (Seq_6 x_12751 x_12752))))
(assert (forall ((x_12737 R_126) (x_12753 R_126) (x_12736 R_126) (x_12784 A_20) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Atom_3 x_12784) (Star_3 x_12753)) (Atom_3 x_12784) (Star_3 x_12753))))
(assert (forall ((x_12737 R_126) (x_12753 R_126) (x_12736 R_126) (x_12785 R_126) (x_12786 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Plus_19 x_12785 x_12786) (Star_3 x_12753)) (Plus_19 x_12785 x_12786) (Star_3 x_12753))))
(assert (forall ((x_12737 R_126) (x_12753 R_126) (x_12736 R_126) (x_12787 R_126) (x_12788 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Seq_6 x_12787 x_12788) (Star_3 x_12753)) (Seq_6 x_12787 x_12788) (Star_3 x_12753))))
(assert (forall ((x_12737 R_126) (x_12753 R_126) (x_12736 R_126) (x_12789 R_126) (x_12735 R_126) (x_12734 R_126))
	(seq_7 (Seq_6 (Star_3 x_12789) (Star_3 x_12753)) (Star_3 x_12789) (Star_3 x_12753))))
(declare-fun plus_20 (R_126 R_126 R_126) Bool)
(assert (forall ((x_14736 R_126))
	(plus_20 x_14736 Nil_89 x_14736)))
(assert (forall ((x_12739 R_126) (x_13918 A_20))
	(plus_20 (Atom_3 x_13918) (Atom_3 x_13918) Nil_89)))
(assert (forall ((x_12739 R_126))
	(plus_20 Eps_6 Eps_6 Nil_89)))
(assert (forall ((x_12739 R_126) (x_13919 R_126) (x_13920 R_126))
	(plus_20 (Plus_19 x_13919 x_13920) (Plus_19 x_13919 x_13920) Nil_89)))
(assert (forall ((x_12739 R_126) (x_13921 R_126) (x_13922 R_126))
	(plus_20 (Seq_6 x_13921 x_13922) (Seq_6 x_13921 x_13922) Nil_89)))
(assert (forall ((x_12739 R_126) (x_13923 R_126))
	(plus_20 (Star_3 x_13923) (Star_3 x_13923) Nil_89)))
(assert (forall ((x_12740 R_126) (x_13912 A_20) (x_12739 R_126) (x_13924 A_20))
	(plus_20 (Plus_19 (Atom_3 x_13924) (Atom_3 x_13912)) (Atom_3 x_13924) (Atom_3 x_13912))))
(assert (forall ((x_12740 R_126) (x_13912 A_20) (x_12739 R_126))
	(plus_20 (Plus_19 Eps_6 (Atom_3 x_13912)) Eps_6 (Atom_3 x_13912))))
(assert (forall ((x_12740 R_126) (x_13912 A_20) (x_12739 R_126) (x_13925 R_126) (x_13926 R_126))
	(plus_20 (Plus_19 (Plus_19 x_13925 x_13926) (Atom_3 x_13912)) (Plus_19 x_13925 x_13926) (Atom_3 x_13912))))
(assert (forall ((x_12740 R_126) (x_13912 A_20) (x_12739 R_126) (x_13927 R_126) (x_13928 R_126))
	(plus_20 (Plus_19 (Seq_6 x_13927 x_13928) (Atom_3 x_13912)) (Seq_6 x_13927 x_13928) (Atom_3 x_13912))))
(assert (forall ((x_12740 R_126) (x_13912 A_20) (x_12739 R_126) (x_13929 R_126))
	(plus_20 (Plus_19 (Star_3 x_13929) (Atom_3 x_13912)) (Star_3 x_13929) (Atom_3 x_13912))))
(assert (forall ((x_12740 R_126) (x_12739 R_126) (x_13930 A_20))
	(plus_20 (Plus_19 (Atom_3 x_13930) Eps_6) (Atom_3 x_13930) Eps_6)))
(assert (forall ((x_12740 R_126) (x_12739 R_126))
	(plus_20 (Plus_19 Eps_6 Eps_6) Eps_6 Eps_6)))
(assert (forall ((x_12740 R_126) (x_12739 R_126) (x_13931 R_126) (x_13932 R_126))
	(plus_20 (Plus_19 (Plus_19 x_13931 x_13932) Eps_6) (Plus_19 x_13931 x_13932) Eps_6)))
(assert (forall ((x_12740 R_126) (x_12739 R_126) (x_13933 R_126) (x_13934 R_126))
	(plus_20 (Plus_19 (Seq_6 x_13933 x_13934) Eps_6) (Seq_6 x_13933 x_13934) Eps_6)))
(assert (forall ((x_12740 R_126) (x_12739 R_126) (x_13935 R_126))
	(plus_20 (Plus_19 (Star_3 x_13935) Eps_6) (Star_3 x_13935) Eps_6)))
(assert (forall ((x_12740 R_126) (x_13913 R_126) (x_13914 R_126) (x_12739 R_126) (x_13936 A_20))
	(plus_20 (Plus_19 (Atom_3 x_13936) (Plus_19 x_13913 x_13914)) (Atom_3 x_13936) (Plus_19 x_13913 x_13914))))
(assert (forall ((x_12740 R_126) (x_13913 R_126) (x_13914 R_126) (x_12739 R_126))
	(plus_20 (Plus_19 Eps_6 (Plus_19 x_13913 x_13914)) Eps_6 (Plus_19 x_13913 x_13914))))
(assert (forall ((x_12740 R_126) (x_13913 R_126) (x_13914 R_126) (x_12739 R_126) (x_13937 R_126) (x_13938 R_126))
	(plus_20 (Plus_19 (Plus_19 x_13937 x_13938) (Plus_19 x_13913 x_13914)) (Plus_19 x_13937 x_13938) (Plus_19 x_13913 x_13914))))
(assert (forall ((x_12740 R_126) (x_13913 R_126) (x_13914 R_126) (x_12739 R_126) (x_13939 R_126) (x_13940 R_126))
	(plus_20 (Plus_19 (Seq_6 x_13939 x_13940) (Plus_19 x_13913 x_13914)) (Seq_6 x_13939 x_13940) (Plus_19 x_13913 x_13914))))
(assert (forall ((x_12740 R_126) (x_13913 R_126) (x_13914 R_126) (x_12739 R_126) (x_13941 R_126))
	(plus_20 (Plus_19 (Star_3 x_13941) (Plus_19 x_13913 x_13914)) (Star_3 x_13941) (Plus_19 x_13913 x_13914))))
(assert (forall ((x_12740 R_126) (x_13915 R_126) (x_13916 R_126) (x_12739 R_126) (x_13942 A_20))
	(plus_20 (Plus_19 (Atom_3 x_13942) (Seq_6 x_13915 x_13916)) (Atom_3 x_13942) (Seq_6 x_13915 x_13916))))
(assert (forall ((x_12740 R_126) (x_13915 R_126) (x_13916 R_126) (x_12739 R_126))
	(plus_20 (Plus_19 Eps_6 (Seq_6 x_13915 x_13916)) Eps_6 (Seq_6 x_13915 x_13916))))
(assert (forall ((x_12740 R_126) (x_13915 R_126) (x_13916 R_126) (x_12739 R_126) (x_13943 R_126) (x_13944 R_126))
	(plus_20 (Plus_19 (Plus_19 x_13943 x_13944) (Seq_6 x_13915 x_13916)) (Plus_19 x_13943 x_13944) (Seq_6 x_13915 x_13916))))
(assert (forall ((x_12740 R_126) (x_13915 R_126) (x_13916 R_126) (x_12739 R_126) (x_13945 R_126) (x_13946 R_126))
	(plus_20 (Plus_19 (Seq_6 x_13945 x_13946) (Seq_6 x_13915 x_13916)) (Seq_6 x_13945 x_13946) (Seq_6 x_13915 x_13916))))
(assert (forall ((x_12740 R_126) (x_13915 R_126) (x_13916 R_126) (x_12739 R_126) (x_13947 R_126))
	(plus_20 (Plus_19 (Star_3 x_13947) (Seq_6 x_13915 x_13916)) (Star_3 x_13947) (Seq_6 x_13915 x_13916))))
(assert (forall ((x_12740 R_126) (x_13917 R_126) (x_12739 R_126) (x_13948 A_20))
	(plus_20 (Plus_19 (Atom_3 x_13948) (Star_3 x_13917)) (Atom_3 x_13948) (Star_3 x_13917))))
(assert (forall ((x_12740 R_126) (x_13917 R_126) (x_12739 R_126))
	(plus_20 (Plus_19 Eps_6 (Star_3 x_13917)) Eps_6 (Star_3 x_13917))))
(assert (forall ((x_12740 R_126) (x_13917 R_126) (x_12739 R_126) (x_13949 R_126) (x_13950 R_126))
	(plus_20 (Plus_19 (Plus_19 x_13949 x_13950) (Star_3 x_13917)) (Plus_19 x_13949 x_13950) (Star_3 x_13917))))
(assert (forall ((x_12740 R_126) (x_13917 R_126) (x_12739 R_126) (x_13951 R_126) (x_13952 R_126))
	(plus_20 (Plus_19 (Seq_6 x_13951 x_13952) (Star_3 x_13917)) (Seq_6 x_13951 x_13952) (Star_3 x_13917))))
(assert (forall ((x_12740 R_126) (x_13917 R_126) (x_12739 R_126) (x_13953 R_126))
	(plus_20 (Plus_19 (Star_3 x_13953) (Star_3 x_13917)) (Star_3 x_13953) (Star_3 x_13917))))
(declare-fun eqA_3 (Bool_112 A_20 A_20) Bool)
(assert (eqA_3 true_112 Y_566 Y_566))
(assert (eqA_3 false_112 Y_566 X_12732))
(assert (eqA_3 false_112 X_12732 Y_566))
(assert (eqA_3 true_112 X_12732 X_12732))
(declare-fun eps_7 (Bool_112 R_126) Bool)
(assert (forall ((y_570 R_126))
	(eps_7 true_112 (Star_3 y_570))))
(assert (forall ((x_14772 Bool_112) (x_14773 Bool_112) (x_14774 Bool_112) (r_127 R_126) (q_19 R_126))
	(=> (and (eps_7 x_14773 r_127) (eps_7 x_14774 q_19) (and_112 x_14772 x_14773 x_14774)) (eps_7 x_14772 (Seq_6 r_127 q_19)))))
(assert (forall ((x_14775 Bool_112) (x_14776 Bool_112) (x_14777 Bool_112) (p_58 R_126) (q_20 R_126))
	(=> (and (eps_7 x_14776 p_58) (eps_7 x_14777 q_20) (or_113 x_14775 x_14776 x_14777)) (eps_7 x_14775 (Plus_19 p_58 q_20)))))
(assert (eps_7 true_112 Eps_6))
(assert (forall ((x_12743 R_126) (x_13954 A_20))
	(eps_7 false_112 (Atom_3 x_13954))))
(assert (forall ((x_12743 R_126))
	(eps_7 false_112 Nil_89)))
(declare-fun epsR_3 (R_126 R_126) Bool)
(assert (forall ((x_12744 R_126))
	(=> (eps_7 true_112 x_12744) (epsR_3 Eps_6 x_12744))))
(assert (forall ((x_12744 R_126))
	(=> (eps_7 false_112 x_12744) (epsR_3 Nil_89 x_12744))))
(declare-fun step_3 (R_126 R_126 A_20) Bool)
(assert (forall ((x_14785 R_126) (x_14786 R_126) (p_59 R_126) (y_571 A_20))
	(=> (and (step_3 x_14786 p_59 y_571) (seq_7 x_14785 x_14786 (Star_3 p_59))) (step_3 x_14785 (Star_3 p_59) y_571))))
(assert (forall ((x_14788 R_126) (x_14789 R_126) (x_14790 R_126) (x_14791 R_126) (x_14792 R_126) (x_14793 R_126) (r_128 R_126) (q_21 R_126) (y_571 A_20))
	(=> (and (step_3 x_14789 r_128 y_571) (seq_7 x_14790 x_14789 q_21) (epsR_3 x_14791 r_128) (step_3 x_14792 q_21 y_571) (seq_7 x_14793 x_14791 x_14792) (plus_20 x_14788 x_14790 x_14793)) (step_3 x_14788 (Seq_6 r_128 q_21) y_571))))
(assert (forall ((x_14795 R_126) (x_14796 R_126) (x_14797 R_126) (p_60 R_126) (q_22 R_126) (y_571 A_20))
	(=> (and (step_3 x_14796 p_60 y_571) (step_3 x_14797 q_22 y_571) (plus_20 x_14795 x_14796 x_14797)) (step_3 x_14795 (Plus_19 p_60 q_22) y_571))))
(assert (forall ((a_21 A_20) (y_571 A_20))
	(=> (eqA_3 true_112 a_21 y_571) (step_3 Eps_6 (Atom_3 a_21) y_571))))
(assert (forall ((a_21 A_20) (y_571 A_20))
	(=> (eqA_3 false_112 a_21 y_571) (step_3 Nil_89 (Atom_3 a_21) y_571))))
(assert (forall ((x_12746 R_126) (y_571 A_20))
	(step_3 Nil_89 Eps_6 y_571)))
(assert (forall ((x_12746 R_126) (y_571 A_20))
	(step_3 Nil_89 Nil_89 y_571)))
(declare-fun recognise_3 (Bool_112 R_126 list_84) Bool)
(assert (forall ((x_14805 Bool_112) (x_14806 R_126) (z_616 A_20) (xs_184 list_84) (x_12747 R_126))
	(=> (and (step_3 x_14806 x_12747 z_616) (recognise_3 x_14805 x_14806 xs_184)) (recognise_3 x_14805 x_12747 (cons_84 z_616 xs_184)))))
(assert (forall ((x_14808 Bool_112) (x_12747 R_126))
	(=> (eps_7 x_14808 x_12747) (recognise_3 x_14808 x_12747 nil_90))))
(assert (forall ((s_192 list_84))
	(=> (and (recognise_3 true_112 Nil_89 s_192)) false)))
(check-sat)
