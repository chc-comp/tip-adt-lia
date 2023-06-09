(set-logic HORN)
(declare-datatypes ((Bool_433 0)) (((false_433) (true_433))))
(declare-fun diseqBool_216 (Bool_433 Bool_433) Bool)
(declare-fun isfalse_216 (Bool_433) Bool)
(declare-fun istrue_216 (Bool_433) Bool)
(assert (isfalse_216 false_433))
(assert (istrue_216 true_433))
(assert (diseqBool_216 false_433 true_433))
(assert (diseqBool_216 true_433 false_433))
(declare-fun and_439 (Bool_433 Bool_433 Bool_433) Bool)
(declare-fun or_451 (Bool_433 Bool_433 Bool_433) Bool)
(declare-fun hence_433 (Bool_433 Bool_433 Bool_433) Bool)
(declare-fun not_438 (Bool_433 Bool_433) Bool)
(assert (and_439 false_433 false_433 false_433))
(assert (and_439 false_433 true_433 false_433))
(assert (and_439 false_433 false_433 true_433))
(assert (and_439 true_433 true_433 true_433))
(assert (or_451 false_433 false_433 false_433))
(assert (or_451 true_433 true_433 false_433))
(assert (or_451 true_433 false_433 true_433))
(assert (or_451 true_433 true_433 true_433))
(assert (hence_433 true_433 false_433 false_433))
(assert (hence_433 false_433 true_433 false_433))
(assert (hence_433 true_433 false_433 true_433))
(assert (hence_433 true_433 true_433 true_433))
(assert (not_438 true_433 false_433))
(assert (not_438 false_433 true_433))
(declare-datatypes ((list_381 0)) (((nil_437) (cons_375 (head_750 Bool_433) (tail_756 list_381)))))
(declare-fun diseqlist_375 (list_381 list_381) Bool)
(declare-fun head_753 (Bool_433 list_381) Bool)
(declare-fun tail_759 (list_381 list_381) Bool)
(declare-fun isnil_437 (list_381) Bool)
(declare-fun iscons_375 (list_381) Bool)
(assert (forall ((x_124953 Bool_433) (x_124954 list_381))
	(head_753 x_124953 (cons_375 x_124953 x_124954))))
(assert (forall ((x_124953 Bool_433) (x_124954 list_381))
	(tail_759 x_124954 (cons_375 x_124953 x_124954))))
(assert (isnil_437 nil_437))
(assert (forall ((x_124956 Bool_433) (x_124957 list_381))
	(iscons_375 (cons_375 x_124956 x_124957))))
(assert (forall ((x_124958 Bool_433) (x_124959 list_381))
	(diseqlist_375 nil_437 (cons_375 x_124958 x_124959))))
(assert (forall ((x_124960 Bool_433) (x_124961 list_381))
	(diseqlist_375 (cons_375 x_124960 x_124961) nil_437)))
(assert (forall ((x_124962 Bool_433) (x_124963 list_381) (x_124964 Bool_433) (x_124965 list_381))
	(=> (diseqBool_216 x_124962 x_124964) (diseqlist_375 (cons_375 x_124962 x_124963) (cons_375 x_124964 x_124965)))))
(assert (forall ((x_124962 Bool_433) (x_124963 list_381) (x_124964 Bool_433) (x_124965 list_381))
	(=> (diseqlist_375 x_124963 x_124965) (diseqlist_375 (cons_375 x_124962 x_124963) (cons_375 x_124964 x_124965)))))
(declare-datatypes ((T_36 0)) (((A_118) (B_128) (C_72))))
(declare-fun diseqT_32 (T_36 T_36) Bool)
(declare-fun isA_39 (T_36) Bool)
(declare-fun isB_39 (T_36) Bool)
(declare-fun isC_40 (T_36) Bool)
(assert (isA_39 A_118))
(assert (isB_39 B_128))
(assert (isC_40 C_72))
(assert (diseqT_32 A_118 B_128))
(assert (diseqT_32 A_118 C_72))
(assert (diseqT_32 B_128 A_118))
(assert (diseqT_32 C_72 A_118))
(assert (diseqT_32 B_128 C_72))
(assert (diseqT_32 C_72 B_128))
(declare-datatypes ((list_382 0)) (((nil_438) (cons_376 (head_751 T_36) (tail_757 list_382)))))
(declare-fun diseqlist_376 (list_382 list_382) Bool)
(declare-fun head_754 (T_36 list_382) Bool)
(declare-fun tail_760 (list_382 list_382) Bool)
(declare-fun isnil_438 (list_382) Bool)
(declare-fun iscons_376 (list_382) Bool)
(assert (forall ((x_124970 T_36) (x_124971 list_382))
	(head_754 x_124970 (cons_376 x_124970 x_124971))))
(assert (forall ((x_124970 T_36) (x_124971 list_382))
	(tail_760 x_124971 (cons_376 x_124970 x_124971))))
(assert (isnil_438 nil_438))
(assert (forall ((x_124973 T_36) (x_124974 list_382))
	(iscons_376 (cons_376 x_124973 x_124974))))
(assert (forall ((x_124975 T_36) (x_124976 list_382))
	(diseqlist_376 nil_438 (cons_376 x_124975 x_124976))))
(assert (forall ((x_124977 T_36) (x_124978 list_382))
	(diseqlist_376 (cons_376 x_124977 x_124978) nil_438)))
(assert (forall ((x_124979 T_36) (x_124980 list_382) (x_124981 T_36) (x_124982 list_382))
	(=> (diseqT_32 x_124979 x_124981) (diseqlist_376 (cons_376 x_124979 x_124980) (cons_376 x_124981 x_124982)))))
(assert (forall ((x_124979 T_36) (x_124980 list_382) (x_124981 T_36) (x_124982 list_382))
	(=> (diseqlist_376 x_124980 x_124982) (diseqlist_376 (cons_376 x_124979 x_124980) (cons_376 x_124981 x_124982)))))
(declare-datatypes ((pair_196 0)) (((pair_197 (projpair_392 list_382) (projpair_393 list_382)))))
(declare-fun diseqpair_98 (pair_196 pair_196) Bool)
(declare-fun projpair_394 (list_382 pair_196) Bool)
(declare-fun projpair_395 (list_382 pair_196) Bool)
(declare-fun ispair_98 (pair_196) Bool)
(assert (forall ((x_124983 list_382) (x_124984 list_382))
	(projpair_394 x_124983 (pair_197 x_124983 x_124984))))
(assert (forall ((x_124983 list_382) (x_124984 list_382))
	(projpair_395 x_124984 (pair_197 x_124983 x_124984))))
(assert (forall ((x_124986 list_382) (x_124987 list_382))
	(ispair_98 (pair_197 x_124986 x_124987))))
(assert (forall ((x_124988 list_382) (x_124989 list_382) (x_124990 list_382) (x_124991 list_382))
	(=> (diseqlist_376 x_124988 x_124990) (diseqpair_98 (pair_197 x_124988 x_124989) (pair_197 x_124990 x_124991)))))
(assert (forall ((x_124988 list_382) (x_124989 list_382) (x_124990 list_382) (x_124991 list_382))
	(=> (diseqlist_376 x_124989 x_124991) (diseqpair_98 (pair_197 x_124988 x_124989) (pair_197 x_124990 x_124991)))))
(declare-datatypes ((list_383 0)) (((nil_439) (cons_377 (head_752 pair_196) (tail_758 list_383)))))
(declare-fun diseqlist_377 (list_383 list_383) Bool)
(declare-fun head_755 (pair_196 list_383) Bool)
(declare-fun tail_761 (list_383 list_383) Bool)
(declare-fun isnil_439 (list_383) Bool)
(declare-fun iscons_377 (list_383) Bool)
(assert (forall ((x_124993 pair_196) (x_124994 list_383))
	(head_755 x_124993 (cons_377 x_124993 x_124994))))
(assert (forall ((x_124993 pair_196) (x_124994 list_383))
	(tail_761 x_124994 (cons_377 x_124993 x_124994))))
(assert (isnil_439 nil_439))
(assert (forall ((x_124996 pair_196) (x_124997 list_383))
	(iscons_377 (cons_377 x_124996 x_124997))))
(assert (forall ((x_124998 pair_196) (x_124999 list_383))
	(diseqlist_377 nil_439 (cons_377 x_124998 x_124999))))
(assert (forall ((x_125000 pair_196) (x_125001 list_383))
	(diseqlist_377 (cons_377 x_125000 x_125001) nil_439)))
(assert (forall ((x_125002 pair_196) (x_125003 list_383) (x_125004 pair_196) (x_125005 list_383))
	(=> (diseqpair_98 x_125002 x_125004) (diseqlist_377 (cons_377 x_125002 x_125003) (cons_377 x_125004 x_125005)))))
(assert (forall ((x_125002 pair_196) (x_125003 list_383) (x_125004 pair_196) (x_125005 list_383))
	(=> (diseqlist_377 x_125003 x_125005) (diseqlist_377 (cons_377 x_125002 x_125003) (cons_377 x_125004 x_125005)))))
(declare-datatypes ((R_637 0)) (((Nil_440) (Eps_92) (Atom_46 (projAtom_92 T_36)) (x_124857 (proj_332 R_637) (proj_333 R_637)) (x_124858 (proj_334 R_637) (proj_335 R_637)) (Star_46 (projStar_92 R_637)))))
(declare-fun diseqR_46 (R_637 R_637) Bool)
(declare-fun projAtom_93 (T_36 R_637) Bool)
(declare-fun proj_336 (R_637 R_637) Bool)
(declare-fun proj_337 (R_637 R_637) Bool)
(declare-fun proj_338 (R_637 R_637) Bool)
(declare-fun proj_339 (R_637 R_637) Bool)
(declare-fun projStar_93 (R_637 R_637) Bool)
(declare-fun isNil_440 (R_637) Bool)
(declare-fun isEps_46 (R_637) Bool)
(declare-fun isAtom_46 (R_637) Bool)
(declare-fun isx_98 (R_637) Bool)
(declare-fun isx_99 (R_637) Bool)
(declare-fun isStar_46 (R_637) Bool)
(assert (forall ((x_125008 T_36))
	(projAtom_93 x_125008 (Atom_46 x_125008))))
(assert (forall ((x_125010 R_637) (x_125011 R_637))
	(proj_336 x_125010 (x_124857 x_125010 x_125011))))
(assert (forall ((x_125010 R_637) (x_125011 R_637))
	(proj_337 x_125011 (x_124857 x_125010 x_125011))))
(assert (forall ((x_125013 R_637) (x_125014 R_637))
	(proj_338 x_125013 (x_124858 x_125013 x_125014))))
(assert (forall ((x_125013 R_637) (x_125014 R_637))
	(proj_339 x_125014 (x_124858 x_125013 x_125014))))
(assert (forall ((x_125016 R_637))
	(projStar_93 x_125016 (Star_46 x_125016))))
(assert (isNil_440 Nil_440))
(assert (isEps_46 Eps_92))
(assert (forall ((x_125018 T_36))
	(isAtom_46 (Atom_46 x_125018))))
(assert (forall ((x_125019 R_637) (x_125020 R_637))
	(isx_98 (x_124857 x_125019 x_125020))))
(assert (forall ((x_125021 R_637) (x_125022 R_637))
	(isx_99 (x_124858 x_125021 x_125022))))
(assert (forall ((x_125023 R_637))
	(isStar_46 (Star_46 x_125023))))
(assert (diseqR_46 Nil_440 Eps_92))
(assert (forall ((x_125024 T_36))
	(diseqR_46 Nil_440 (Atom_46 x_125024))))
(assert (forall ((x_125025 R_637) (x_125026 R_637))
	(diseqR_46 Nil_440 (x_124857 x_125025 x_125026))))
(assert (forall ((x_125027 R_637) (x_125028 R_637))
	(diseqR_46 Nil_440 (x_124858 x_125027 x_125028))))
(assert (forall ((x_125029 R_637))
	(diseqR_46 Nil_440 (Star_46 x_125029))))
(assert (diseqR_46 Eps_92 Nil_440))
(assert (forall ((x_125030 T_36))
	(diseqR_46 (Atom_46 x_125030) Nil_440)))
(assert (forall ((x_125031 R_637) (x_125032 R_637))
	(diseqR_46 (x_124857 x_125031 x_125032) Nil_440)))
(assert (forall ((x_125033 R_637) (x_125034 R_637))
	(diseqR_46 (x_124858 x_125033 x_125034) Nil_440)))
(assert (forall ((x_125035 R_637))
	(diseqR_46 (Star_46 x_125035) Nil_440)))
(assert (forall ((x_125036 T_36))
	(diseqR_46 Eps_92 (Atom_46 x_125036))))
(assert (forall ((x_125037 R_637) (x_125038 R_637))
	(diseqR_46 Eps_92 (x_124857 x_125037 x_125038))))
(assert (forall ((x_125039 R_637) (x_125040 R_637))
	(diseqR_46 Eps_92 (x_124858 x_125039 x_125040))))
(assert (forall ((x_125041 R_637))
	(diseqR_46 Eps_92 (Star_46 x_125041))))
(assert (forall ((x_125042 T_36))
	(diseqR_46 (Atom_46 x_125042) Eps_92)))
(assert (forall ((x_125043 R_637) (x_125044 R_637))
	(diseqR_46 (x_124857 x_125043 x_125044) Eps_92)))
(assert (forall ((x_125045 R_637) (x_125046 R_637))
	(diseqR_46 (x_124858 x_125045 x_125046) Eps_92)))
(assert (forall ((x_125047 R_637))
	(diseqR_46 (Star_46 x_125047) Eps_92)))
(assert (forall ((x_125048 T_36) (x_125049 R_637) (x_125050 R_637))
	(diseqR_46 (Atom_46 x_125048) (x_124857 x_125049 x_125050))))
(assert (forall ((x_125051 T_36) (x_125052 R_637) (x_125053 R_637))
	(diseqR_46 (Atom_46 x_125051) (x_124858 x_125052 x_125053))))
(assert (forall ((x_125054 T_36) (x_125055 R_637))
	(diseqR_46 (Atom_46 x_125054) (Star_46 x_125055))))
(assert (forall ((x_125056 R_637) (x_125057 R_637) (x_125058 T_36))
	(diseqR_46 (x_124857 x_125056 x_125057) (Atom_46 x_125058))))
(assert (forall ((x_125059 R_637) (x_125060 R_637) (x_125061 T_36))
	(diseqR_46 (x_124858 x_125059 x_125060) (Atom_46 x_125061))))
(assert (forall ((x_125062 R_637) (x_125063 T_36))
	(diseqR_46 (Star_46 x_125062) (Atom_46 x_125063))))
(assert (forall ((x_125064 R_637) (x_125065 R_637) (x_125066 R_637) (x_125067 R_637))
	(diseqR_46 (x_124857 x_125064 x_125065) (x_124858 x_125066 x_125067))))
(assert (forall ((x_125068 R_637) (x_125069 R_637) (x_125070 R_637))
	(diseqR_46 (x_124857 x_125068 x_125069) (Star_46 x_125070))))
(assert (forall ((x_125071 R_637) (x_125072 R_637) (x_125073 R_637) (x_125074 R_637))
	(diseqR_46 (x_124858 x_125071 x_125072) (x_124857 x_125073 x_125074))))
(assert (forall ((x_125075 R_637) (x_125076 R_637) (x_125077 R_637))
	(diseqR_46 (Star_46 x_125075) (x_124857 x_125076 x_125077))))
(assert (forall ((x_125078 R_637) (x_125079 R_637) (x_125080 R_637))
	(diseqR_46 (x_124858 x_125078 x_125079) (Star_46 x_125080))))
(assert (forall ((x_125081 R_637) (x_125082 R_637) (x_125083 R_637))
	(diseqR_46 (Star_46 x_125081) (x_124858 x_125082 x_125083))))
(assert (forall ((x_125084 T_36) (x_125085 T_36))
	(=> (diseqT_32 x_125084 x_125085) (diseqR_46 (Atom_46 x_125084) (Atom_46 x_125085)))))
(assert (forall ((x_125086 R_637) (x_125087 R_637) (x_125088 R_637) (x_125089 R_637))
	(=> (diseqR_46 x_125086 x_125088) (diseqR_46 (x_124857 x_125086 x_125087) (x_124857 x_125088 x_125089)))))
(assert (forall ((x_125086 R_637) (x_125087 R_637) (x_125088 R_637) (x_125089 R_637))
	(=> (diseqR_46 x_125087 x_125089) (diseqR_46 (x_124857 x_125086 x_125087) (x_124857 x_125088 x_125089)))))
(assert (forall ((x_125090 R_637) (x_125091 R_637) (x_125092 R_637) (x_125093 R_637))
	(=> (diseqR_46 x_125090 x_125092) (diseqR_46 (x_124858 x_125090 x_125091) (x_124858 x_125092 x_125093)))))
(assert (forall ((x_125090 R_637) (x_125091 R_637) (x_125092 R_637) (x_125093 R_637))
	(=> (diseqR_46 x_125091 x_125093) (diseqR_46 (x_124858 x_125090 x_125091) (x_124858 x_125092 x_125093)))))
(assert (forall ((x_125094 R_637) (x_125095 R_637))
	(=> (diseqR_46 x_125094 x_125095) (diseqR_46 (Star_46 x_125094) (Star_46 x_125095)))))
(declare-fun splits_10 (list_383 T_36 list_383) Bool)
(assert (forall ((x_124878 list_383) (bs_21 list_382) (cs_7 list_382) (x_124860 list_383) (x_124859 T_36))
	(=> (splits_10 x_124878 x_124859 x_124860) (splits_10 (cons_377 (pair_197 (cons_376 x_124859 bs_21) cs_7) x_124878) x_124859 (cons_377 (pair_197 bs_21 cs_7) x_124860)))))
(assert (forall ((x_124859 T_36))
	(splits_10 nil_439 x_124859 nil_439)))
(declare-fun splits_11 (list_383 list_382) Bool)
(assert (forall ((x_124881 list_383) (x_124882 list_383) (y_3140 T_36) (xs_874 list_382))
	(=> (and (splits_11 x_124881 xs_874) (splits_10 x_124882 y_3140 x_124881)) (splits_11 (cons_377 (pair_197 nil_438 (cons_376 y_3140 xs_874)) x_124882) (cons_376 y_3140 xs_874)))))
(assert (splits_11 (cons_377 (pair_197 nil_438 nil_438) nil_439) nil_438))
(declare-fun or_450 (Bool_433 list_381) Bool)
(assert (forall ((x_124884 Bool_433) (x_124885 Bool_433) (y_3141 Bool_433) (xs_875 list_381))
	(=> (and (or_450 x_124885 xs_875) (or_451 x_124884 y_3141 x_124885)) (or_450 x_124884 (cons_375 y_3141 xs_875)))))
(assert (or_450 false_433 nil_437))
(declare-fun eps_93 (Bool_433 R_637) Bool)
(assert (forall ((y_3142 R_637))
	(eps_93 true_433 (Star_46 y_3142))))
(assert (forall ((x_124888 Bool_433) (x_124889 Bool_433) (x_124890 Bool_433) (r_638 R_637) (q_354 R_637))
	(=> (and (eps_93 x_124889 r_638) (eps_93 x_124890 q_354) (and_439 x_124888 x_124889 x_124890)) (eps_93 x_124888 (x_124858 r_638 q_354)))))
(assert (forall ((x_124891 Bool_433) (x_124892 Bool_433) (x_124893 Bool_433) (p_585 R_637) (q_355 R_637))
	(=> (and (eps_93 x_124892 p_585) (eps_93 x_124893 q_355) (or_451 x_124891 x_124892 x_124893)) (eps_93 x_124891 (x_124857 p_585 q_355)))))
(assert (eps_93 true_433 Eps_92))
(assert (forall ((x_124864 R_637) (x_124876 T_36))
	(eps_93 false_433 (Atom_46 x_124876))))
(assert (forall ((x_124864 R_637))
	(eps_93 false_433 Nil_440)))
(declare-fun step_46 (R_637 R_637 T_36) Bool)
(assert (forall ((x_124898 R_637) (p_586 R_637) (y_3143 T_36))
	(=> (step_46 x_124898 p_586 y_3143) (step_46 (x_124858 x_124898 (Star_46 p_586)) (Star_46 p_586) y_3143))))
(assert (forall ((x_124901 R_637) (x_124902 R_637) (r_639 R_637) (q_356 R_637) (y_3143 T_36))
	(=> (and (step_46 x_124901 r_639 y_3143) (step_46 x_124902 q_356 y_3143) (eps_93 true_433 r_639)) (step_46 (x_124857 (x_124858 x_124901 q_356) x_124902) (x_124858 r_639 q_356) y_3143))))
(assert (forall ((x_124905 R_637) (r_639 R_637) (q_356 R_637) (y_3143 T_36))
	(=> (and (step_46 x_124905 r_639 y_3143) (eps_93 false_433 r_639)) (step_46 (x_124857 (x_124858 x_124905 q_356) Nil_440) (x_124858 r_639 q_356) y_3143))))
(assert (forall ((x_124907 R_637) (x_124908 R_637) (p_587 R_637) (q_357 R_637) (y_3143 T_36))
	(=> (and (step_46 x_124907 p_587 y_3143) (step_46 x_124908 q_357 y_3143)) (step_46 (x_124857 x_124907 x_124908) (x_124857 p_587 q_357) y_3143))))
(assert (forall ((b_129 T_36))
	(step_46 Eps_92 (Atom_46 b_129) b_129)))
(assert (forall ((b_129 T_36) (y_3143 T_36))
	(=> (diseqT_32 b_129 y_3143) (step_46 Nil_440 (Atom_46 b_129) y_3143))))
(assert (forall ((x_124866 R_637) (y_3143 T_36))
	(step_46 Nil_440 Eps_92 y_3143)))
(assert (forall ((x_124866 R_637) (y_3143 T_36))
	(step_46 Nil_440 Nil_440 y_3143)))
(declare-fun rec_32 (Bool_433 R_637 list_382) Bool)
(assert (forall ((x_124913 Bool_433) (x_124914 R_637) (z_2690 T_36) (xs_876 list_382) (x_124867 R_637))
	(=> (and (step_46 x_124914 x_124867 z_2690) (rec_32 x_124913 x_124914 xs_876)) (rec_32 x_124913 x_124867 (cons_376 z_2690 xs_876)))))
(assert (forall ((x_124916 Bool_433) (x_124867 R_637))
	(=> (eps_93 x_124916 x_124867) (rec_32 x_124916 x_124867 nil_438))))
(declare-fun reck_10 (Bool_433 R_637 list_382) Bool)
(declare-fun reck_11 (list_381 R_637 R_637 list_383) Bool)
(assert (forall ((x_124919 Bool_433) (x_124869 T_36) (x_124870 list_382) (p_588 R_637))
	(=> (and (rec_32 x_124919 (x_124858 p_588 (Star_46 p_588)) (cons_376 x_124869 x_124870)) (eps_93 false_433 p_588)) (reck_10 x_124919 (Star_46 p_588) (cons_376 x_124869 x_124870)))))
(assert (forall ((x_124869 T_36) (x_124870 list_382) (p_588 R_637))
	(=> (eps_93 true_433 p_588) (reck_10 false_433 (Star_46 p_588) (cons_376 x_124869 x_124870)))))
(assert (forall ((p_588 R_637))
	(reck_10 true_433 (Star_46 p_588) nil_438)))
(assert (forall ((x_124924 Bool_433) (x_124925 list_383) (x_124926 list_381) (r_640 R_637) (q_358 R_637) (y_3145 list_382))
	(=> (and (splits_11 x_124925 y_3145) (reck_11 x_124926 r_640 q_358 x_124925) (or_450 x_124924 x_124926)) (reck_10 x_124924 (x_124858 r_640 q_358) y_3145))))
(assert (forall ((x_124928 Bool_433) (x_124929 Bool_433) (x_124930 Bool_433) (p_589 R_637) (q_359 R_637) (y_3145 list_382))
	(=> (and (reck_10 x_124929 p_589 y_3145) (reck_10 x_124930 q_359 y_3145) (or_451 x_124928 x_124929 x_124930)) (reck_10 x_124928 (x_124857 p_589 q_359) y_3145))))
(assert (forall ((x_124872 T_36) (x_124873 list_382) (b_130 T_36) (c_73 T_36))
	(reck_10 false_433 (Atom_46 c_73) (cons_376 b_130 (cons_376 x_124872 x_124873)))))
(assert (forall ((b_130 T_36))
	(reck_10 true_433 (Atom_46 b_130) (cons_376 b_130 nil_438))))
(assert (forall ((b_130 T_36) (c_73 T_36))
	(=> (diseqT_32 c_73 b_130) (reck_10 false_433 (Atom_46 c_73) (cons_376 b_130 nil_438)))))
(assert (forall ((c_73 T_36))
	(reck_10 false_433 (Atom_46 c_73) nil_438)))
(assert (forall ((z_2691 T_36) (x_124874 list_382))
	(reck_10 false_433 Eps_92 (cons_376 z_2691 x_124874))))
(assert (reck_10 true_433 Eps_92 nil_438))
(assert (forall ((y_3145 list_382))
	(reck_10 false_433 Nil_440 y_3145)))
(assert (forall ((x_124948 Bool_433) (x_124939 Bool_433) (x_124940 Bool_433) (x_124941 list_381) (l_59 list_382) (r_641 list_382) (z_2692 list_383) (p_590 R_637) (q_360 R_637))
	(=> (and (reck_10 x_124939 p_590 l_59) (rec_32 x_124940 q_360 r_641) (reck_11 x_124941 p_590 q_360 z_2692) (and_439 x_124948 x_124939 x_124940)) (reck_11 (cons_375 x_124948 x_124941) p_590 q_360 (cons_377 (pair_197 l_59 r_641) z_2692)))))
(assert (forall ((p_590 R_637) (q_360 R_637))
	(reck_11 nil_437 p_590 q_360 nil_439)))
(assert (forall ((p_591 R_637))
	(=> (and (reck_10 true_433 p_591 (cons_376 A_118 (cons_376 A_118 (cons_376 B_128 (cons_376 B_128 nil_438)))))) false)))
(check-sat)
