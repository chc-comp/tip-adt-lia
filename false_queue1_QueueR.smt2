(set-logic HORN)
(define-fun Z_2580 () Int 0)
(define-fun S_596 ((x Int)) Int (+ x 1))
(declare-fun unS_841 (Int Int) Bool)
(declare-fun isZ_543 (Int) Bool)
(declare-fun isS_543 (Int) Bool)
(assert (forall ((x_107965 Int))
	(unS_841 x_107965 (S_596 x_107965))))
(assert (isZ_543 Z_2580))
(assert (forall ((x_107967 Int))
	(isS_543 (S_596 x_107967))))
(declare-fun add_450 (Int Int Int) Bool)
(declare-fun minus_441 (Int Int Int) Bool)
(declare-fun le_420 (Int Int) Bool)
(declare-fun ge_420 (Int Int) Bool)
(declare-fun lt_440 (Int Int) Bool)
(declare-fun gt_423 (Int Int) Bool)
(declare-fun mult_421 (Int Int Int) Bool)
(declare-fun div_420 (Int Int Int) Bool)
(declare-fun mod_422 (Int Int Int) Bool)
(assert (forall ((y_2971 Int))
	(add_450 y_2971 Z_2580 y_2971)))
(assert (forall ((x_107959 Int) (y_2971 Int) (r_596 Int))
	(=> (add_450 r_596 x_107959 y_2971) (add_450 (S_596 r_596) (S_596 x_107959) y_2971))))
(assert (forall ((y_2971 Int))
	(minus_441 Z_2580 Z_2580 y_2971)))
(assert (forall ((x_107959 Int) (y_2971 Int) (r_596 Int))
	(=> (minus_441 r_596 x_107959 y_2971) (minus_441 (S_596 r_596) (S_596 x_107959) y_2971))))
(assert (forall ((y_2971 Int))
	(le_420 Z_2580 y_2971)))
(assert (forall ((x_107959 Int) (y_2971 Int))
	(=> (le_420 x_107959 y_2971) (le_420 (S_596 x_107959) (S_596 y_2971)))))
(assert (forall ((y_2971 Int))
	(ge_420 y_2971 Z_2580)))
(assert (forall ((x_107959 Int) (y_2971 Int))
	(=> (ge_420 x_107959 y_2971) (ge_420 (S_596 x_107959) (S_596 y_2971)))))
(assert (forall ((y_2971 Int))
	(lt_440 Z_2580 (S_596 y_2971))))
(assert (forall ((x_107959 Int) (y_2971 Int))
	(=> (lt_440 x_107959 y_2971) (lt_440 (S_596 x_107959) (S_596 y_2971)))))
(assert (forall ((y_2971 Int))
	(gt_423 (S_596 y_2971) Z_2580)))
(assert (forall ((x_107959 Int) (y_2971 Int))
	(=> (gt_423 x_107959 y_2971) (gt_423 (S_596 x_107959) (S_596 y_2971)))))
(assert (forall ((y_2971 Int))
	(mult_421 Z_2580 Z_2580 y_2971)))
(assert (forall ((x_107959 Int) (y_2971 Int) (r_596 Int) (z_2581 Int))
	(=> (and (mult_421 r_596 x_107959 y_2971) (add_450 z_2581 r_596 y_2971)) (mult_421 z_2581 (S_596 x_107959) y_2971))))
(assert (forall ((x_107959 Int) (y_2971 Int))
	(=> (lt_440 x_107959 y_2971) (div_420 Z_2580 x_107959 y_2971))))
(assert (forall ((x_107959 Int) (y_2971 Int) (r_596 Int) (z_2581 Int))
	(=> (and (ge_420 x_107959 y_2971) (minus_441 z_2581 x_107959 y_2971) (div_420 r_596 z_2581 y_2971)) (div_420 (S_596 r_596) x_107959 y_2971))))
(assert (forall ((x_107959 Int) (y_2971 Int))
	(=> (lt_440 x_107959 y_2971) (mod_422 x_107959 x_107959 y_2971))))
(assert (forall ((x_107959 Int) (y_2971 Int) (r_596 Int) (z_2581 Int))
	(=> (and (ge_420 x_107959 y_2971) (minus_441 z_2581 x_107959 y_2971) (mod_422 r_596 z_2581 y_2971)) (mod_422 r_596 x_107959 y_2971))))
(declare-datatypes ((pair_164 0)) (((pair_165 (projpair_328 Int) (projpair_329 Int)))))
(declare-fun diseqpair_82 (pair_164 pair_164) Bool)
(declare-fun projpair_332 (Int pair_164) Bool)
(declare-fun projpair_333 (Int pair_164) Bool)
(declare-fun ispair_82 (pair_164) Bool)
(assert (forall ((x_107972 Int) (x_107973 Int))
	(projpair_332 x_107972 (pair_165 x_107972 x_107973))))
(assert (forall ((x_107972 Int) (x_107973 Int))
	(projpair_333 x_107973 (pair_165 x_107972 x_107973))))
(assert (forall ((x_107975 Int) (x_107976 Int))
	(ispair_82 (pair_165 x_107975 x_107976))))
(assert (forall ((x_107977 Int) (x_107978 Int) (x_107979 Int) (x_107980 Int))
	(=> (distinct x_107977 x_107979) (diseqpair_82 (pair_165 x_107977 x_107978) (pair_165 x_107979 x_107980)))))
(assert (forall ((x_107977 Int) (x_107978 Int) (x_107979 Int) (x_107980 Int))
	(=> (distinct x_107978 x_107980) (diseqpair_82 (pair_165 x_107977 x_107978) (pair_165 x_107979 x_107980)))))
(declare-datatypes ((list_358 0)) (((nil_409) (cons_353 (head_706 Int) (tail_711 list_358)))))
(declare-fun diseqlist_353 (list_358 list_358) Bool)
(declare-fun head_707 (Int list_358) Bool)
(declare-fun tail_713 (list_358 list_358) Bool)
(declare-fun isnil_409 (list_358) Bool)
(declare-fun iscons_353 (list_358) Bool)
(assert (forall ((x_107982 Int) (x_107983 list_358))
	(head_707 x_107982 (cons_353 x_107982 x_107983))))
(assert (forall ((x_107982 Int) (x_107983 list_358))
	(tail_713 x_107983 (cons_353 x_107982 x_107983))))
(assert (isnil_409 nil_409))
(assert (forall ((x_107985 Int) (x_107986 list_358))
	(iscons_353 (cons_353 x_107985 x_107986))))
(assert (forall ((x_107987 Int) (x_107988 list_358))
	(diseqlist_353 nil_409 (cons_353 x_107987 x_107988))))
(assert (forall ((x_107989 Int) (x_107990 list_358))
	(diseqlist_353 (cons_353 x_107989 x_107990) nil_409)))
(assert (forall ((x_107991 Int) (x_107992 list_358) (x_107993 Int) (x_107994 list_358))
	(=> (distinct x_107991 x_107993) (diseqlist_353 (cons_353 x_107991 x_107992) (cons_353 x_107993 x_107994)))))
(assert (forall ((x_107991 Int) (x_107992 list_358) (x_107993 Int) (x_107994 list_358))
	(=> (diseqlist_353 x_107992 x_107994) (diseqlist_353 (cons_353 x_107991 x_107992) (cons_353 x_107993 x_107994)))))
(declare-datatypes ((pair_166 0)) (((pair_167 (projpair_330 list_358) (projpair_331 list_358)))))
(declare-fun diseqpair_83 (pair_166 pair_166) Bool)
(declare-fun projpair_334 (list_358 pair_166) Bool)
(declare-fun projpair_335 (list_358 pair_166) Bool)
(declare-fun ispair_83 (pair_166) Bool)
(assert (forall ((x_107995 list_358) (x_107996 list_358))
	(projpair_334 x_107995 (pair_167 x_107995 x_107996))))
(assert (forall ((x_107995 list_358) (x_107996 list_358))
	(projpair_335 x_107996 (pair_167 x_107995 x_107996))))
(assert (forall ((x_107998 list_358) (x_107999 list_358))
	(ispair_83 (pair_167 x_107998 x_107999))))
(assert (forall ((x_108000 list_358) (x_108001 list_358) (x_108002 list_358) (x_108003 list_358))
	(=> (diseqlist_353 x_108000 x_108002) (diseqpair_83 (pair_167 x_108000 x_108001) (pair_167 x_108002 x_108003)))))
(assert (forall ((x_108000 list_358) (x_108001 list_358) (x_108002 list_358) (x_108003 list_358))
	(=> (diseqlist_353 x_108001 x_108003) (diseqpair_83 (pair_167 x_108000 x_108001) (pair_167 x_108002 x_108003)))))
(declare-datatypes ((Q_304 0)) (((Q_305 (projQ_20 list_358) (projQ_21 list_358)))))
(declare-fun diseqQ_5 (Q_304 Q_304) Bool)
(declare-fun projQ_22 (list_358 Q_304) Bool)
(declare-fun projQ_23 (list_358 Q_304) Bool)
(declare-fun isQ_7 (Q_304) Bool)
(assert (forall ((x_108004 list_358) (x_108005 list_358))
	(projQ_22 x_108004 (Q_305 x_108004 x_108005))))
(assert (forall ((x_108004 list_358) (x_108005 list_358))
	(projQ_23 x_108005 (Q_305 x_108004 x_108005))))
(assert (forall ((x_108007 list_358) (x_108008 list_358))
	(isQ_7 (Q_305 x_108007 x_108008))))
(assert (forall ((x_108009 list_358) (x_108010 list_358) (x_108011 list_358) (x_108012 list_358))
	(=> (diseqlist_353 x_108009 x_108011) (diseqQ_5 (Q_305 x_108009 x_108010) (Q_305 x_108011 x_108012)))))
(assert (forall ((x_108009 list_358) (x_108010 list_358) (x_108011 list_358) (x_108012 list_358))
	(=> (diseqlist_353 x_108010 x_108012) (diseqQ_5 (Q_305 x_108009 x_108010) (Q_305 x_108011 x_108012)))))
(declare-datatypes ((Maybe_19 0)) (((Nothing_19) (Just_19 (projJust_38 Int)))))
(declare-fun diseqMaybe_19 (Maybe_19 Maybe_19) Bool)
(declare-fun projJust_40 (Int Maybe_19) Bool)
(declare-fun isNothing_19 (Maybe_19) Bool)
(declare-fun isJust_19 (Maybe_19) Bool)
(assert (forall ((x_108014 Int))
	(projJust_40 x_108014 (Just_19 x_108014))))
(assert (isNothing_19 Nothing_19))
(assert (forall ((x_108016 Int))
	(isJust_19 (Just_19 x_108016))))
(assert (forall ((x_108017 Int))
	(diseqMaybe_19 Nothing_19 (Just_19 x_108017))))
(assert (forall ((x_108018 Int))
	(diseqMaybe_19 (Just_19 x_108018) Nothing_19)))
(assert (forall ((x_108019 Int) (x_108020 Int))
	(=> (distinct x_108019 x_108020) (diseqMaybe_19 (Just_19 x_108019) (Just_19 x_108020)))))
(declare-datatypes ((Maybe_20 0)) (((Nothing_20) (Just_20 (projJust_39 Q_304)))))
(declare-fun diseqMaybe_20 (Maybe_20 Maybe_20) Bool)
(declare-fun projJust_41 (Q_304 Maybe_20) Bool)
(declare-fun isNothing_20 (Maybe_20) Bool)
(declare-fun isJust_20 (Maybe_20) Bool)
(assert (forall ((x_108022 Q_304))
	(projJust_41 x_108022 (Just_20 x_108022))))
(assert (isNothing_20 Nothing_20))
(assert (forall ((x_108024 Q_304))
	(isJust_20 (Just_20 x_108024))))
(assert (forall ((x_108025 Q_304))
	(diseqMaybe_20 Nothing_20 (Just_20 x_108025))))
(assert (forall ((x_108026 Q_304))
	(diseqMaybe_20 (Just_20 x_108026) Nothing_20)))
(assert (forall ((x_108027 Q_304) (x_108028 Q_304))
	(=> (diseqQ_5 x_108027 x_108028) (diseqMaybe_20 (Just_20 x_108027) (Just_20 x_108028)))))
(declare-datatypes ((E_52 0)) (((Empty_14) (EnqL_10 (projEnqL_20 Int) (projEnqL_21 E_52)) (EnqR_10 (projEnqR_20 E_52) (projEnqR_21 Int)) (DeqL_10 (projDeqL_10 E_52)) (DeqR_10 (projDeqR_10 E_52)) (App_5 (projApp_20 E_52) (projApp_21 E_52)))))
(declare-fun diseqE_6 (E_52 E_52) Bool)
(declare-fun projEnqL_22 (Int E_52) Bool)
(declare-fun projEnqL_23 (E_52 E_52) Bool)
(declare-fun projEnqR_22 (E_52 E_52) Bool)
(declare-fun projEnqR_23 (Int E_52) Bool)
(declare-fun projDeqL_11 (E_52 E_52) Bool)
(declare-fun projDeqR_11 (E_52 E_52) Bool)
(declare-fun projApp_22 (E_52 E_52) Bool)
(declare-fun projApp_23 (E_52 E_52) Bool)
(declare-fun isEmpty_5 (E_52) Bool)
(declare-fun isEnqL_5 (E_52) Bool)
(declare-fun isEnqR_5 (E_52) Bool)
(declare-fun isDeqL_5 (E_52) Bool)
(declare-fun isDeqR_5 (E_52) Bool)
(declare-fun isApp_5 (E_52) Bool)
(assert (forall ((x_108030 Int) (x_108031 E_52))
	(projEnqL_22 x_108030 (EnqL_10 x_108030 x_108031))))
(assert (forall ((x_108030 Int) (x_108031 E_52))
	(projEnqL_23 x_108031 (EnqL_10 x_108030 x_108031))))
(assert (forall ((x_108033 E_52) (x_108034 Int))
	(projEnqR_22 x_108033 (EnqR_10 x_108033 x_108034))))
(assert (forall ((x_108033 E_52) (x_108034 Int))
	(projEnqR_23 x_108034 (EnqR_10 x_108033 x_108034))))
(assert (forall ((x_108036 E_52))
	(projDeqL_11 x_108036 (DeqL_10 x_108036))))
(assert (forall ((x_108038 E_52))
	(projDeqR_11 x_108038 (DeqR_10 x_108038))))
(assert (forall ((x_108040 E_52) (x_108041 E_52))
	(projApp_22 x_108040 (App_5 x_108040 x_108041))))
(assert (forall ((x_108040 E_52) (x_108041 E_52))
	(projApp_23 x_108041 (App_5 x_108040 x_108041))))
(assert (isEmpty_5 Empty_14))
(assert (forall ((x_108043 Int) (x_108044 E_52))
	(isEnqL_5 (EnqL_10 x_108043 x_108044))))
(assert (forall ((x_108045 E_52) (x_108046 Int))
	(isEnqR_5 (EnqR_10 x_108045 x_108046))))
(assert (forall ((x_108047 E_52))
	(isDeqL_5 (DeqL_10 x_108047))))
(assert (forall ((x_108048 E_52))
	(isDeqR_5 (DeqR_10 x_108048))))
(assert (forall ((x_108049 E_52) (x_108050 E_52))
	(isApp_5 (App_5 x_108049 x_108050))))
(assert (forall ((x_108051 Int) (x_108052 E_52))
	(diseqE_6 Empty_14 (EnqL_10 x_108051 x_108052))))
(assert (forall ((x_108053 E_52) (x_108054 Int))
	(diseqE_6 Empty_14 (EnqR_10 x_108053 x_108054))))
(assert (forall ((x_108055 E_52))
	(diseqE_6 Empty_14 (DeqL_10 x_108055))))
(assert (forall ((x_108056 E_52))
	(diseqE_6 Empty_14 (DeqR_10 x_108056))))
(assert (forall ((x_108057 E_52) (x_108058 E_52))
	(diseqE_6 Empty_14 (App_5 x_108057 x_108058))))
(assert (forall ((x_108059 Int) (x_108060 E_52))
	(diseqE_6 (EnqL_10 x_108059 x_108060) Empty_14)))
(assert (forall ((x_108061 E_52) (x_108062 Int))
	(diseqE_6 (EnqR_10 x_108061 x_108062) Empty_14)))
(assert (forall ((x_108063 E_52))
	(diseqE_6 (DeqL_10 x_108063) Empty_14)))
(assert (forall ((x_108064 E_52))
	(diseqE_6 (DeqR_10 x_108064) Empty_14)))
(assert (forall ((x_108065 E_52) (x_108066 E_52))
	(diseqE_6 (App_5 x_108065 x_108066) Empty_14)))
(assert (forall ((x_108067 Int) (x_108068 E_52) (x_108069 E_52) (x_108070 Int))
	(diseqE_6 (EnqL_10 x_108067 x_108068) (EnqR_10 x_108069 x_108070))))
(assert (forall ((x_108071 Int) (x_108072 E_52) (x_108073 E_52))
	(diseqE_6 (EnqL_10 x_108071 x_108072) (DeqL_10 x_108073))))
(assert (forall ((x_108074 Int) (x_108075 E_52) (x_108076 E_52))
	(diseqE_6 (EnqL_10 x_108074 x_108075) (DeqR_10 x_108076))))
(assert (forall ((x_108077 Int) (x_108078 E_52) (x_108079 E_52) (x_108080 E_52))
	(diseqE_6 (EnqL_10 x_108077 x_108078) (App_5 x_108079 x_108080))))
(assert (forall ((x_108081 E_52) (x_108082 Int) (x_108083 Int) (x_108084 E_52))
	(diseqE_6 (EnqR_10 x_108081 x_108082) (EnqL_10 x_108083 x_108084))))
(assert (forall ((x_108085 E_52) (x_108086 Int) (x_108087 E_52))
	(diseqE_6 (DeqL_10 x_108085) (EnqL_10 x_108086 x_108087))))
(assert (forall ((x_108088 E_52) (x_108089 Int) (x_108090 E_52))
	(diseqE_6 (DeqR_10 x_108088) (EnqL_10 x_108089 x_108090))))
(assert (forall ((x_108091 E_52) (x_108092 E_52) (x_108093 Int) (x_108094 E_52))
	(diseqE_6 (App_5 x_108091 x_108092) (EnqL_10 x_108093 x_108094))))
(assert (forall ((x_108095 E_52) (x_108096 Int) (x_108097 E_52))
	(diseqE_6 (EnqR_10 x_108095 x_108096) (DeqL_10 x_108097))))
(assert (forall ((x_108098 E_52) (x_108099 Int) (x_108100 E_52))
	(diseqE_6 (EnqR_10 x_108098 x_108099) (DeqR_10 x_108100))))
(assert (forall ((x_108101 E_52) (x_108102 Int) (x_108103 E_52) (x_108104 E_52))
	(diseqE_6 (EnqR_10 x_108101 x_108102) (App_5 x_108103 x_108104))))
(assert (forall ((x_108105 E_52) (x_108106 E_52) (x_108107 Int))
	(diseqE_6 (DeqL_10 x_108105) (EnqR_10 x_108106 x_108107))))
(assert (forall ((x_108108 E_52) (x_108109 E_52) (x_108110 Int))
	(diseqE_6 (DeqR_10 x_108108) (EnqR_10 x_108109 x_108110))))
(assert (forall ((x_108111 E_52) (x_108112 E_52) (x_108113 E_52) (x_108114 Int))
	(diseqE_6 (App_5 x_108111 x_108112) (EnqR_10 x_108113 x_108114))))
(assert (forall ((x_108115 E_52) (x_108116 E_52))
	(diseqE_6 (DeqL_10 x_108115) (DeqR_10 x_108116))))
(assert (forall ((x_108117 E_52) (x_108118 E_52) (x_108119 E_52))
	(diseqE_6 (DeqL_10 x_108117) (App_5 x_108118 x_108119))))
(assert (forall ((x_108120 E_52) (x_108121 E_52))
	(diseqE_6 (DeqR_10 x_108120) (DeqL_10 x_108121))))
(assert (forall ((x_108122 E_52) (x_108123 E_52) (x_108124 E_52))
	(diseqE_6 (App_5 x_108122 x_108123) (DeqL_10 x_108124))))
(assert (forall ((x_108125 E_52) (x_108126 E_52) (x_108127 E_52))
	(diseqE_6 (DeqR_10 x_108125) (App_5 x_108126 x_108127))))
(assert (forall ((x_108128 E_52) (x_108129 E_52) (x_108130 E_52))
	(diseqE_6 (App_5 x_108128 x_108129) (DeqR_10 x_108130))))
(assert (forall ((x_108131 Int) (x_108132 E_52) (x_108133 Int) (x_108134 E_52))
	(=> (distinct x_108131 x_108133) (diseqE_6 (EnqL_10 x_108131 x_108132) (EnqL_10 x_108133 x_108134)))))
(assert (forall ((x_108131 Int) (x_108132 E_52) (x_108133 Int) (x_108134 E_52))
	(=> (diseqE_6 x_108132 x_108134) (diseqE_6 (EnqL_10 x_108131 x_108132) (EnqL_10 x_108133 x_108134)))))
(assert (forall ((x_108135 E_52) (x_108136 Int) (x_108137 E_52) (x_108138 Int))
	(=> (diseqE_6 x_108135 x_108137) (diseqE_6 (EnqR_10 x_108135 x_108136) (EnqR_10 x_108137 x_108138)))))
(assert (forall ((x_108135 E_52) (x_108136 Int) (x_108137 E_52) (x_108138 Int))
	(=> (distinct x_108136 x_108138) (diseqE_6 (EnqR_10 x_108135 x_108136) (EnqR_10 x_108137 x_108138)))))
(assert (forall ((x_108139 E_52) (x_108140 E_52))
	(=> (diseqE_6 x_108139 x_108140) (diseqE_6 (DeqL_10 x_108139) (DeqL_10 x_108140)))))
(assert (forall ((x_108141 E_52) (x_108142 E_52))
	(=> (diseqE_6 x_108141 x_108142) (diseqE_6 (DeqR_10 x_108141) (DeqR_10 x_108142)))))
(assert (forall ((x_108143 E_52) (x_108144 E_52) (x_108145 E_52) (x_108146 E_52))
	(=> (diseqE_6 x_108143 x_108145) (diseqE_6 (App_5 x_108143 x_108144) (App_5 x_108145 x_108146)))))
(assert (forall ((x_108143 E_52) (x_108144 E_52) (x_108145 E_52) (x_108146 E_52))
	(=> (diseqE_6 x_108144 x_108146) (diseqE_6 (App_5 x_108143 x_108144) (App_5 x_108145 x_108146)))))
(declare-fun take_56 (list_358 Int list_358) Bool)
(assert (forall ((x_107785 Int) (y_2950 list_358))
	(=> (le_420 x_107785 Z_2580) (take_56 nil_409 x_107785 y_2950))))
(assert (forall ((x_107960 Int) (x_107835 list_358) (z_2566 Int) (xs_843 list_358) (x_107785 Int))
	(=> (and (gt_423 x_107785 Z_2580) (take_56 x_107835 x_107960 xs_843) (minus_441 x_107960 x_107785 (S_596 Z_2580))) (take_56 (cons_353 z_2566 x_107835) x_107785 (cons_353 z_2566 xs_843)))))
(assert (forall ((x_107785 Int) (y_2950 list_358))
	(=> (le_420 x_107785 Z_2580) (take_56 nil_409 x_107785 y_2950))))
(assert (forall ((x_107785 Int))
	(=> (gt_423 x_107785 Z_2580) (take_56 nil_409 x_107785 nil_409))))
(declare-fun tail_712 (list_358 list_358) Bool)
(assert (forall ((x_107838 list_358) (y_2951 Int))
	(tail_712 x_107838 (cons_353 y_2951 x_107838))))
(assert (tail_712 nil_409 nil_409))
(declare-fun length_66 (Int list_358) Bool)
(assert (forall ((x_107840 Int) (x_107841 Int) (y_2952 Int) (l_56 list_358))
	(=> (and (length_66 x_107841 l_56) (add_450 x_107840 (S_596 Z_2580) x_107841)) (length_66 x_107840 (cons_353 y_2952 l_56)))))
(assert (length_66 Z_2580 nil_409))
(declare-fun last_14 (Maybe_19 list_358) Bool)
(assert (forall ((x_107843 Maybe_19) (x_107789 Int) (x_107790 list_358) (y_2953 Int))
	(=> (last_14 x_107843 (cons_353 x_107789 x_107790)) (last_14 x_107843 (cons_353 y_2953 (cons_353 x_107789 x_107790))))))
(assert (forall ((y_2953 Int))
	(last_14 (Just_19 y_2953) (cons_353 y_2953 nil_409))))
(assert (last_14 Nothing_19 nil_409))
(declare-fun init_7 (list_358 list_358) Bool)
(assert (forall ((x_107848 list_358) (x_107792 Int) (x_107793 list_358) (y_2954 Int))
	(=> (init_7 x_107848 (cons_353 x_107792 x_107793)) (init_7 (cons_353 y_2954 x_107848) (cons_353 y_2954 (cons_353 x_107792 x_107793))))))
(assert (forall ((y_2954 Int))
	(init_7 nil_409 (cons_353 y_2954 nil_409))))
(assert (init_7 nil_409 nil_409))
(declare-fun fstR_2 (Maybe_19 Q_304) Bool)
(assert (forall ((x_107798 Int) (x_107799 list_358) (x_107796 Int) (y_2956 Int) (x_107795 list_358))
	(fstR_2 (Just_19 y_2956) (Q_305 (cons_353 x_107796 (cons_353 x_107798 x_107799)) (cons_353 y_2956 x_107795)))))
(assert (forall ((x_107800 Int) (x_107796 Int) (x_107795 list_358))
	(fstR_2 (Just_19 x_107800) (Q_305 (cons_353 x_107796 nil_409) (cons_353 x_107800 x_107795)))))
(assert (forall ((y_2956 Int) (x_107795 list_358))
	(fstR_2 (Just_19 y_2956) (Q_305 nil_409 (cons_353 y_2956 x_107795)))))
(assert (forall ((x_107798 Int) (x_107799 list_358) (x_107796 Int))
	(fstR_2 Nothing_19 (Q_305 (cons_353 x_107796 (cons_353 x_107798 x_107799)) nil_409))))
(assert (forall ((x_107796 Int))
	(fstR_2 (Just_19 x_107796) (Q_305 (cons_353 x_107796 nil_409) nil_409))))
(assert (fstR_2 Nothing_19 (Q_305 nil_409 nil_409)))
(declare-fun fromMaybe_10 (Int Int Maybe_19) Bool)
(assert (forall ((x_107859 Int) (x_107802 Int))
	(fromMaybe_10 x_107859 x_107802 (Just_19 x_107859))))
(assert (forall ((x_107802 Int))
	(fromMaybe_10 x_107802 x_107802 Nothing_19)))
(declare-fun fromMaybe_11 (Q_304 Q_304 Maybe_20) Bool)
(assert (forall ((x_107861 Q_304) (x_107803 Q_304))
	(fromMaybe_11 x_107861 x_107803 (Just_20 x_107861))))
(assert (forall ((x_107803 Q_304))
	(fromMaybe_11 x_107803 x_107803 Nothing_20)))
(declare-fun empty_15 (Q_304) Bool)
(assert (empty_15 (Q_305 nil_409 nil_409)))
(declare-fun drop_64 (list_358 Int list_358) Bool)
(assert (forall ((x_107864 list_358) (x_107804 Int))
	(=> (le_420 x_107804 Z_2580) (drop_64 x_107864 x_107804 x_107864))))
(assert (forall ((x_107962 Int) (x_107865 list_358) (z_2572 Int) (xs_845 list_358) (x_107804 Int))
	(=> (and (gt_423 x_107804 Z_2580) (drop_64 x_107865 x_107962 xs_845) (minus_441 x_107962 x_107804 (S_596 Z_2580))) (drop_64 x_107865 x_107804 (cons_353 z_2572 xs_845)))))
(assert (forall ((x_107867 list_358) (x_107804 Int))
	(=> (le_420 x_107804 Z_2580) (drop_64 x_107867 x_107804 x_107867))))
(assert (forall ((x_107804 Int))
	(=> (gt_423 x_107804 Z_2580) (drop_64 nil_409 x_107804 nil_409))))
(declare-fun halve_5 (pair_166 list_358) Bool)
(assert (forall ((x_107871 list_358) (x_107872 list_358) (x_107869 Int) (k_24 Int) (x_107805 list_358))
	(=> (and (take_56 x_107871 k_24 x_107805) (drop_64 x_107872 k_24 x_107805) (length_66 x_107869 x_107805) (div_420 k_24 x_107869 (S_596 (S_596 Z_2580)))) (halve_5 (pair_167 x_107871 x_107872) x_107805))))
(declare-fun x_107806 (list_358 list_358 list_358) Bool)
(assert (forall ((x_107874 list_358) (z_2573 Int) (xs_846 list_358) (y_2960 list_358))
	(=> (x_107806 x_107874 xs_846 y_2960) (x_107806 (cons_353 z_2573 x_107874) (cons_353 z_2573 xs_846) y_2960))))
(assert (forall ((x_107875 list_358))
	(x_107806 x_107875 nil_409 x_107875)))
(declare-fun list_359 (list_358 E_52) Bool)
(assert (forall ((x_107876 list_358) (x_107877 list_358) (x_107878 list_358) (a_108 E_52) (b_112 E_52))
	(=> (and (list_359 x_107877 a_108) (list_359 x_107878 b_112) (x_107806 x_107876 x_107877 x_107878)) (list_359 x_107876 (App_5 a_108 b_112)))))
(assert (forall ((x_107880 list_358) (x_107881 list_358) (e_53 E_52))
	(=> (and (list_359 x_107881 e_53) (init_7 x_107880 x_107881)) (list_359 x_107880 (DeqR_10 e_53)))))
(assert (forall ((x_107883 list_358) (x_107884 list_358) (e_54 E_52))
	(=> (and (list_359 x_107884 e_54) (tail_712 x_107883 x_107884)) (list_359 x_107883 (DeqL_10 e_54)))))
(assert (forall ((x_107886 list_358) (x_107887 list_358) (e_55 E_52) (z_2574 Int))
	(=> (and (list_359 x_107887 e_55) (x_107806 x_107886 x_107887 (cons_353 z_2574 nil_409))) (list_359 x_107886 (EnqR_10 e_55 z_2574)))))
(assert (forall ((x_107890 list_358) (y_2961 Int) (e_56 E_52))
	(=> (list_359 x_107890 e_56) (list_359 (cons_353 y_2961 x_107890) (EnqL_10 y_2961 e_56)))))
(assert (list_359 nil_409 Empty_14))
(declare-fun reverse_18 (list_358 list_358) Bool)
(assert (forall ((x_107892 list_358) (x_107893 list_358) (y_2962 Int) (xs_847 list_358))
	(=> (and (reverse_18 x_107893 xs_847) (x_107806 x_107892 x_107893 (cons_353 y_2962 nil_409))) (reverse_18 x_107892 (cons_353 y_2962 xs_847)))))
(assert (reverse_18 nil_409 nil_409))
(declare-fun enqL_11 (Q_304 Int Q_304) Bool)
(assert (forall ((z_2575 Int) (x_107811 list_358) (xs_848 list_358) (x_107810 Int))
	(enqL_11 (Q_305 (cons_353 x_107810 xs_848) (cons_353 z_2575 x_107811)) x_107810 (Q_305 xs_848 (cons_353 z_2575 x_107811)))))
(assert (forall ((x_107899 list_358) (as_15 list_358) (bs_18 list_358) (xs_848 list_358) (x_107810 Int))
	(=> (and (reverse_18 x_107899 bs_18) (halve_5 (pair_167 as_15 bs_18) (cons_353 x_107810 xs_848))) (enqL_11 (Q_305 as_15 x_107899) x_107810 (Q_305 xs_848 nil_409)))))
(declare-fun mkQ_5 (Q_304 list_358 list_358) Bool)
(assert (forall ((x_107814 Int) (x_107815 list_358) (z_2576 Int) (x_107813 list_358))
	(mkQ_5 (Q_305 (cons_353 z_2576 x_107813) (cons_353 x_107814 x_107815)) (cons_353 z_2576 x_107813) (cons_353 x_107814 x_107815))))
(assert (forall ((x_107903 list_358) (as_16 list_358) (cs_5 list_358) (z_2576 Int) (x_107813 list_358))
	(=> (and (reverse_18 x_107903 cs_5) (halve_5 (pair_167 as_16 cs_5) (cons_353 z_2576 x_107813))) (mkQ_5 (Q_305 as_16 x_107903) (cons_353 z_2576 x_107813) nil_409))))
(assert (forall ((x_107906 list_358) (as_17 list_358) (bs_19 list_358) (y_2964 list_358))
	(=> (and (reverse_18 x_107906 as_17) (halve_5 (pair_167 as_17 bs_19) y_2964)) (mkQ_5 (Q_305 x_107906 bs_19) nil_409 y_2964))))
(declare-fun x_107816 (Q_304 Q_304 Q_304) Bool)
(assert (forall ((x_107907 Q_304) (x_107908 list_358) (x_107909 list_358) (x_107910 list_358) (x_107911 list_358) (vs_9 list_358) (ws_5 list_358) (xs_849 list_358) (ys_233 list_358))
	(=> (and (reverse_18 x_107908 ys_233) (x_107806 x_107909 xs_849 x_107908) (reverse_18 x_107910 vs_9) (x_107806 x_107911 ws_5 x_107910) (mkQ_5 x_107907 x_107909 x_107911)) (x_107816 x_107907 (Q_305 xs_849 ys_233) (Q_305 vs_9 ws_5)))))
(declare-fun deqL_11 (Maybe_20 Q_304) Bool)
(assert (forall ((x_107914 Q_304) (x_107819 Int) (xs_850 list_358) (z_2577 list_358))
	(=> (mkQ_5 x_107914 xs_850 z_2577) (deqL_11 (Just_20 x_107914) (Q_305 (cons_353 x_107819 xs_850) z_2577)))))
(assert (forall ((x_107822 Int) (x_107823 list_358) (x_107820 Int))
	(deqL_11 Nothing_20 (Q_305 nil_409 (cons_353 x_107820 (cons_353 x_107822 x_107823))))))
(assert (forall ((x_107917 Q_304) (x_107820 Int))
	(=> (empty_15 x_107917) (deqL_11 (Just_20 x_107917) (Q_305 nil_409 (cons_353 x_107820 nil_409))))))
(assert (deqL_11 Nothing_20 (Q_305 nil_409 nil_409)))
(declare-fun deqR_11 (Maybe_20 Q_304) Bool)
(assert (forall ((x_107919 Q_304) (x_107827 Int) (x_107828 list_358) (x_107825 Int) (y_2968 Int) (ys_234 list_358))
	(=> (mkQ_5 x_107919 (cons_353 x_107825 (cons_353 x_107827 x_107828)) ys_234) (deqR_11 (Just_20 x_107919) (Q_305 (cons_353 x_107825 (cons_353 x_107827 x_107828)) (cons_353 y_2968 ys_234))))))
(assert (forall ((x_107921 Q_304) (x_107829 Int) (x_107830 list_358) (x_107825 Int))
	(=> (mkQ_5 x_107921 (cons_353 x_107825 nil_409) x_107830) (deqR_11 (Just_20 x_107921) (Q_305 (cons_353 x_107825 nil_409) (cons_353 x_107829 x_107830))))))
(assert (forall ((x_107926 Q_304) (y_2968 Int) (ys_234 list_358))
	(=> (mkQ_5 x_107926 nil_409 ys_234) (deqR_11 (Just_20 x_107926) (Q_305 nil_409 (cons_353 y_2968 ys_234))))))
(assert (forall ((x_107827 Int) (x_107828 list_358) (x_107825 Int))
	(deqR_11 Nothing_20 (Q_305 (cons_353 x_107825 (cons_353 x_107827 x_107828)) nil_409))))
(assert (forall ((x_107931 Q_304) (x_107825 Int))
	(=> (empty_15 x_107931) (deqR_11 (Just_20 x_107931) (Q_305 (cons_353 x_107825 nil_409) nil_409)))))
(assert (deqR_11 Nothing_20 (Q_305 nil_409 nil_409)))
(declare-fun enqR_11 (Q_304 Q_304 Int) Bool)
(assert (forall ((x_107933 Q_304) (xs_851 list_358) (ys_235 list_358) (y_2969 Int))
	(=> (mkQ_5 x_107933 xs_851 (cons_353 y_2969 ys_235)) (enqR_11 x_107933 (Q_305 xs_851 ys_235) y_2969))))
(declare-fun queue_5 (Q_304 E_52) Bool)
(assert (forall ((x_107935 Q_304) (x_107936 Q_304) (x_107937 Q_304) (a_109 E_52) (b_113 E_52))
	(=> (and (queue_5 x_107936 a_109) (queue_5 x_107937 b_113) (x_107816 x_107935 x_107936 x_107937)) (queue_5 x_107935 (App_5 a_109 b_113)))))
(assert (forall ((x_107940 Q_304) (x_107941 Maybe_20) (r_595 Q_304) (e_57 E_52))
	(=> (and (deqR_11 x_107941 r_595) (fromMaybe_11 x_107940 r_595 x_107941) (queue_5 r_595 e_57)) (queue_5 x_107940 (DeqR_10 e_57)))))
(assert (forall ((x_107944 Q_304) (x_107945 Maybe_20) (q_306 Q_304) (e_58 E_52))
	(=> (and (deqL_11 x_107945 q_306) (fromMaybe_11 x_107944 q_306 x_107945) (queue_5 q_306 e_58)) (queue_5 x_107944 (DeqL_10 e_58)))))
(assert (forall ((x_107947 Q_304) (x_107948 Q_304) (e_59 E_52) (z_2579 Int))
	(=> (and (queue_5 x_107948 e_59) (enqR_11 x_107947 x_107948 z_2579)) (queue_5 x_107947 (EnqR_10 e_59 z_2579)))))
(assert (forall ((x_107950 Q_304) (x_107951 Q_304) (y_2970 Int) (e_60 E_52))
	(=> (and (queue_5 x_107951 e_60) (enqL_11 x_107950 y_2970 x_107951)) (queue_5 x_107950 (EnqL_10 y_2970 e_60)))))
(assert (forall ((x_107953 Q_304))
	(=> (empty_15 x_107953) (queue_5 x_107953 Empty_14))))
(assert (forall ((x_107955 Q_304) (x_107956 Maybe_19) (x_107957 list_358) (x_107958 Maybe_19) (e_61 E_52))
	(=> (and (diseqMaybe_19 x_107956 x_107958) (queue_5 x_107955 e_61) (fstR_2 x_107956 x_107955) (list_359 x_107957 e_61) (last_14 x_107958 x_107957)) false)))
(check-sat)
