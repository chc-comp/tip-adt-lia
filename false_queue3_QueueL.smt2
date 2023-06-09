(set-logic HORN)
(define-fun Z_2242 () Int 0)
(define-fun S_522 ((x Int)) Int (+ x 1))
(declare-fun unS_749 (Int Int) Bool)
(declare-fun isZ_489 (Int) Bool)
(declare-fun isS_489 (Int) Bool)
(assert (forall ((x_58050 Int))
	(unS_749 x_58050 (S_522 x_58050))))
(assert (isZ_489 Z_2242))
(assert (forall ((x_58052 Int))
	(isS_489 (S_522 x_58052))))
(declare-fun add_400 (Int Int Int) Bool)
(declare-fun minus_395 (Int Int Int) Bool)
(declare-fun le_374 (Int Int) Bool)
(declare-fun ge_374 (Int Int) Bool)
(declare-fun lt_394 (Int Int) Bool)
(declare-fun gt_377 (Int Int) Bool)
(declare-fun mult_375 (Int Int Int) Bool)
(declare-fun div_374 (Int Int Int) Bool)
(declare-fun mod_376 (Int Int Int) Bool)
(assert (forall ((y_2496 Int))
	(add_400 y_2496 Z_2242 y_2496)))
(assert (forall ((x_58044 Int) (y_2496 Int) (r_461 Int))
	(=> (add_400 r_461 x_58044 y_2496) (add_400 (S_522 r_461) (S_522 x_58044) y_2496))))
(assert (forall ((y_2496 Int))
	(minus_395 Z_2242 Z_2242 y_2496)))
(assert (forall ((x_58044 Int) (y_2496 Int) (r_461 Int))
	(=> (minus_395 r_461 x_58044 y_2496) (minus_395 (S_522 r_461) (S_522 x_58044) y_2496))))
(assert (forall ((y_2496 Int))
	(le_374 Z_2242 y_2496)))
(assert (forall ((x_58044 Int) (y_2496 Int))
	(=> (le_374 x_58044 y_2496) (le_374 (S_522 x_58044) (S_522 y_2496)))))
(assert (forall ((y_2496 Int))
	(ge_374 y_2496 Z_2242)))
(assert (forall ((x_58044 Int) (y_2496 Int))
	(=> (ge_374 x_58044 y_2496) (ge_374 (S_522 x_58044) (S_522 y_2496)))))
(assert (forall ((y_2496 Int))
	(lt_394 Z_2242 (S_522 y_2496))))
(assert (forall ((x_58044 Int) (y_2496 Int))
	(=> (lt_394 x_58044 y_2496) (lt_394 (S_522 x_58044) (S_522 y_2496)))))
(assert (forall ((y_2496 Int))
	(gt_377 (S_522 y_2496) Z_2242)))
(assert (forall ((x_58044 Int) (y_2496 Int))
	(=> (gt_377 x_58044 y_2496) (gt_377 (S_522 x_58044) (S_522 y_2496)))))
(assert (forall ((y_2496 Int))
	(mult_375 Z_2242 Z_2242 y_2496)))
(assert (forall ((x_58044 Int) (y_2496 Int) (r_461 Int) (z_2243 Int))
	(=> (and (mult_375 r_461 x_58044 y_2496) (add_400 z_2243 r_461 y_2496)) (mult_375 z_2243 (S_522 x_58044) y_2496))))
(assert (forall ((x_58044 Int) (y_2496 Int))
	(=> (lt_394 x_58044 y_2496) (div_374 Z_2242 x_58044 y_2496))))
(assert (forall ((x_58044 Int) (y_2496 Int) (r_461 Int) (z_2243 Int))
	(=> (and (ge_374 x_58044 y_2496) (minus_395 z_2243 x_58044 y_2496) (div_374 r_461 z_2243 y_2496)) (div_374 (S_522 r_461) x_58044 y_2496))))
(assert (forall ((x_58044 Int) (y_2496 Int))
	(=> (lt_394 x_58044 y_2496) (mod_376 x_58044 x_58044 y_2496))))
(assert (forall ((x_58044 Int) (y_2496 Int) (r_461 Int) (z_2243 Int))
	(=> (and (ge_374 x_58044 y_2496) (minus_395 z_2243 x_58044 y_2496) (mod_376 r_461 z_2243 y_2496)) (mod_376 r_461 x_58044 y_2496))))
(declare-datatypes ((pair_104 0)) (((pair_105 (projpair_208 Int) (projpair_209 Int)))))
(declare-fun diseqpair_52 (pair_104 pair_104) Bool)
(declare-fun projpair_212 (Int pair_104) Bool)
(declare-fun projpair_213 (Int pair_104) Bool)
(declare-fun ispair_52 (pair_104) Bool)
(assert (forall ((x_58057 Int) (x_58058 Int))
	(projpair_212 x_58057 (pair_105 x_58057 x_58058))))
(assert (forall ((x_58057 Int) (x_58058 Int))
	(projpair_213 x_58058 (pair_105 x_58057 x_58058))))
(assert (forall ((x_58060 Int) (x_58061 Int))
	(ispair_52 (pair_105 x_58060 x_58061))))
(assert (forall ((x_58062 Int) (x_58063 Int) (x_58064 Int) (x_58065 Int))
	(=> (distinct x_58062 x_58064) (diseqpair_52 (pair_105 x_58062 x_58063) (pair_105 x_58064 x_58065)))))
(assert (forall ((x_58062 Int) (x_58063 Int) (x_58064 Int) (x_58065 Int))
	(=> (distinct x_58063 x_58065) (diseqpair_52 (pair_105 x_58062 x_58063) (pair_105 x_58064 x_58065)))))
(declare-datatypes ((list_284 0)) (((nil_317) (cons_284 (head_568 Int) (tail_568 list_284)))))
(declare-fun diseqlist_284 (list_284 list_284) Bool)
(declare-fun head_569 (Int list_284) Bool)
(declare-fun tail_570 (list_284 list_284) Bool)
(declare-fun isnil_317 (list_284) Bool)
(declare-fun iscons_284 (list_284) Bool)
(assert (forall ((x_58067 Int) (x_58068 list_284))
	(head_569 x_58067 (cons_284 x_58067 x_58068))))
(assert (forall ((x_58067 Int) (x_58068 list_284))
	(tail_570 x_58068 (cons_284 x_58067 x_58068))))
(assert (isnil_317 nil_317))
(assert (forall ((x_58070 Int) (x_58071 list_284))
	(iscons_284 (cons_284 x_58070 x_58071))))
(assert (forall ((x_58072 Int) (x_58073 list_284))
	(diseqlist_284 nil_317 (cons_284 x_58072 x_58073))))
(assert (forall ((x_58074 Int) (x_58075 list_284))
	(diseqlist_284 (cons_284 x_58074 x_58075) nil_317)))
(assert (forall ((x_58076 Int) (x_58077 list_284) (x_58078 Int) (x_58079 list_284))
	(=> (distinct x_58076 x_58078) (diseqlist_284 (cons_284 x_58076 x_58077) (cons_284 x_58078 x_58079)))))
(assert (forall ((x_58076 Int) (x_58077 list_284) (x_58078 Int) (x_58079 list_284))
	(=> (diseqlist_284 x_58077 x_58079) (diseqlist_284 (cons_284 x_58076 x_58077) (cons_284 x_58078 x_58079)))))
(declare-datatypes ((pair_106 0)) (((pair_107 (projpair_210 list_284) (projpair_211 list_284)))))
(declare-fun diseqpair_53 (pair_106 pair_106) Bool)
(declare-fun projpair_214 (list_284 pair_106) Bool)
(declare-fun projpair_215 (list_284 pair_106) Bool)
(declare-fun ispair_53 (pair_106) Bool)
(assert (forall ((x_58080 list_284) (x_58081 list_284))
	(projpair_214 x_58080 (pair_107 x_58080 x_58081))))
(assert (forall ((x_58080 list_284) (x_58081 list_284))
	(projpair_215 x_58081 (pair_107 x_58080 x_58081))))
(assert (forall ((x_58083 list_284) (x_58084 list_284))
	(ispair_53 (pair_107 x_58083 x_58084))))
(assert (forall ((x_58085 list_284) (x_58086 list_284) (x_58087 list_284) (x_58088 list_284))
	(=> (diseqlist_284 x_58085 x_58087) (diseqpair_53 (pair_107 x_58085 x_58086) (pair_107 x_58087 x_58088)))))
(assert (forall ((x_58085 list_284) (x_58086 list_284) (x_58087 list_284) (x_58088 list_284))
	(=> (diseqlist_284 x_58086 x_58088) (diseqpair_53 (pair_107 x_58085 x_58086) (pair_107 x_58087 x_58088)))))
(declare-datatypes ((Q_150 0)) (((Q_151 (projQ_0 list_284) (projQ_1 list_284)))))
(declare-fun diseqQ_0 (Q_150 Q_150) Bool)
(declare-fun projQ_2 (list_284 Q_150) Bool)
(declare-fun projQ_3 (list_284 Q_150) Bool)
(declare-fun isQ_2 (Q_150) Bool)
(assert (forall ((x_58089 list_284) (x_58090 list_284))
	(projQ_2 x_58089 (Q_151 x_58089 x_58090))))
(assert (forall ((x_58089 list_284) (x_58090 list_284))
	(projQ_3 x_58090 (Q_151 x_58089 x_58090))))
(assert (forall ((x_58092 list_284) (x_58093 list_284))
	(isQ_2 (Q_151 x_58092 x_58093))))
(assert (forall ((x_58094 list_284) (x_58095 list_284) (x_58096 list_284) (x_58097 list_284))
	(=> (diseqlist_284 x_58094 x_58096) (diseqQ_0 (Q_151 x_58094 x_58095) (Q_151 x_58096 x_58097)))))
(assert (forall ((x_58094 list_284) (x_58095 list_284) (x_58096 list_284) (x_58097 list_284))
	(=> (diseqlist_284 x_58095 x_58097) (diseqQ_0 (Q_151 x_58094 x_58095) (Q_151 x_58096 x_58097)))))
(declare-datatypes ((Maybe_1 0)) (((Nothing_1) (Just_1 (projJust_2 Int)))))
(declare-fun diseqMaybe_1 (Maybe_1 Maybe_1) Bool)
(declare-fun projJust_4 (Int Maybe_1) Bool)
(declare-fun isNothing_1 (Maybe_1) Bool)
(declare-fun isJust_1 (Maybe_1) Bool)
(assert (forall ((x_58099 Int))
	(projJust_4 x_58099 (Just_1 x_58099))))
(assert (isNothing_1 Nothing_1))
(assert (forall ((x_58101 Int))
	(isJust_1 (Just_1 x_58101))))
(assert (forall ((x_58102 Int))
	(diseqMaybe_1 Nothing_1 (Just_1 x_58102))))
(assert (forall ((x_58103 Int))
	(diseqMaybe_1 (Just_1 x_58103) Nothing_1)))
(assert (forall ((x_58104 Int) (x_58105 Int))
	(=> (distinct x_58104 x_58105) (diseqMaybe_1 (Just_1 x_58104) (Just_1 x_58105)))))
(declare-datatypes ((Maybe_2 0)) (((Nothing_2) (Just_2 (projJust_3 Q_150)))))
(declare-fun diseqMaybe_2 (Maybe_2 Maybe_2) Bool)
(declare-fun projJust_5 (Q_150 Maybe_2) Bool)
(declare-fun isNothing_2 (Maybe_2) Bool)
(declare-fun isJust_2 (Maybe_2) Bool)
(assert (forall ((x_58107 Q_150))
	(projJust_5 x_58107 (Just_2 x_58107))))
(assert (isNothing_2 Nothing_2))
(assert (forall ((x_58109 Q_150))
	(isJust_2 (Just_2 x_58109))))
(assert (forall ((x_58110 Q_150))
	(diseqMaybe_2 Nothing_2 (Just_2 x_58110))))
(assert (forall ((x_58111 Q_150))
	(diseqMaybe_2 (Just_2 x_58111) Nothing_2)))
(assert (forall ((x_58112 Q_150) (x_58113 Q_150))
	(=> (diseqQ_0 x_58112 x_58113) (diseqMaybe_2 (Just_2 x_58112) (Just_2 x_58113)))))
(declare-datatypes ((E_1 0)) (((Empty_0) (EnqL_0 (projEnqL_0 Int) (projEnqL_1 E_1)) (EnqR_0 (projEnqR_0 E_1) (projEnqR_1 Int)) (DeqL_0 (projDeqL_0 E_1)) (DeqR_0 (projDeqR_0 E_1)) (App_0 (projApp_0 E_1) (projApp_1 E_1)))))
(declare-fun diseqE_0 (E_1 E_1) Bool)
(declare-fun projEnqL_2 (Int E_1) Bool)
(declare-fun projEnqL_3 (E_1 E_1) Bool)
(declare-fun projEnqR_2 (E_1 E_1) Bool)
(declare-fun projEnqR_3 (Int E_1) Bool)
(declare-fun projDeqL_1 (E_1 E_1) Bool)
(declare-fun projDeqR_1 (E_1 E_1) Bool)
(declare-fun projApp_2 (E_1 E_1) Bool)
(declare-fun projApp_3 (E_1 E_1) Bool)
(declare-fun isEmpty_0 (E_1) Bool)
(declare-fun isEnqL_0 (E_1) Bool)
(declare-fun isEnqR_0 (E_1) Bool)
(declare-fun isDeqL_0 (E_1) Bool)
(declare-fun isDeqR_0 (E_1) Bool)
(declare-fun isApp_0 (E_1) Bool)
(assert (forall ((x_58115 Int) (x_58116 E_1))
	(projEnqL_2 x_58115 (EnqL_0 x_58115 x_58116))))
(assert (forall ((x_58115 Int) (x_58116 E_1))
	(projEnqL_3 x_58116 (EnqL_0 x_58115 x_58116))))
(assert (forall ((x_58118 E_1) (x_58119 Int))
	(projEnqR_2 x_58118 (EnqR_0 x_58118 x_58119))))
(assert (forall ((x_58118 E_1) (x_58119 Int))
	(projEnqR_3 x_58119 (EnqR_0 x_58118 x_58119))))
(assert (forall ((x_58121 E_1))
	(projDeqL_1 x_58121 (DeqL_0 x_58121))))
(assert (forall ((x_58123 E_1))
	(projDeqR_1 x_58123 (DeqR_0 x_58123))))
(assert (forall ((x_58125 E_1) (x_58126 E_1))
	(projApp_2 x_58125 (App_0 x_58125 x_58126))))
(assert (forall ((x_58125 E_1) (x_58126 E_1))
	(projApp_3 x_58126 (App_0 x_58125 x_58126))))
(assert (isEmpty_0 Empty_0))
(assert (forall ((x_58128 Int) (x_58129 E_1))
	(isEnqL_0 (EnqL_0 x_58128 x_58129))))
(assert (forall ((x_58130 E_1) (x_58131 Int))
	(isEnqR_0 (EnqR_0 x_58130 x_58131))))
(assert (forall ((x_58132 E_1))
	(isDeqL_0 (DeqL_0 x_58132))))
(assert (forall ((x_58133 E_1))
	(isDeqR_0 (DeqR_0 x_58133))))
(assert (forall ((x_58134 E_1) (x_58135 E_1))
	(isApp_0 (App_0 x_58134 x_58135))))
(assert (forall ((x_58136 Int) (x_58137 E_1))
	(diseqE_0 Empty_0 (EnqL_0 x_58136 x_58137))))
(assert (forall ((x_58138 E_1) (x_58139 Int))
	(diseqE_0 Empty_0 (EnqR_0 x_58138 x_58139))))
(assert (forall ((x_58140 E_1))
	(diseqE_0 Empty_0 (DeqL_0 x_58140))))
(assert (forall ((x_58141 E_1))
	(diseqE_0 Empty_0 (DeqR_0 x_58141))))
(assert (forall ((x_58142 E_1) (x_58143 E_1))
	(diseqE_0 Empty_0 (App_0 x_58142 x_58143))))
(assert (forall ((x_58144 Int) (x_58145 E_1))
	(diseqE_0 (EnqL_0 x_58144 x_58145) Empty_0)))
(assert (forall ((x_58146 E_1) (x_58147 Int))
	(diseqE_0 (EnqR_0 x_58146 x_58147) Empty_0)))
(assert (forall ((x_58148 E_1))
	(diseqE_0 (DeqL_0 x_58148) Empty_0)))
(assert (forall ((x_58149 E_1))
	(diseqE_0 (DeqR_0 x_58149) Empty_0)))
(assert (forall ((x_58150 E_1) (x_58151 E_1))
	(diseqE_0 (App_0 x_58150 x_58151) Empty_0)))
(assert (forall ((x_58152 Int) (x_58153 E_1) (x_58154 E_1) (x_58155 Int))
	(diseqE_0 (EnqL_0 x_58152 x_58153) (EnqR_0 x_58154 x_58155))))
(assert (forall ((x_58156 Int) (x_58157 E_1) (x_58158 E_1))
	(diseqE_0 (EnqL_0 x_58156 x_58157) (DeqL_0 x_58158))))
(assert (forall ((x_58159 Int) (x_58160 E_1) (x_58161 E_1))
	(diseqE_0 (EnqL_0 x_58159 x_58160) (DeqR_0 x_58161))))
(assert (forall ((x_58162 Int) (x_58163 E_1) (x_58164 E_1) (x_58165 E_1))
	(diseqE_0 (EnqL_0 x_58162 x_58163) (App_0 x_58164 x_58165))))
(assert (forall ((x_58166 E_1) (x_58167 Int) (x_58168 Int) (x_58169 E_1))
	(diseqE_0 (EnqR_0 x_58166 x_58167) (EnqL_0 x_58168 x_58169))))
(assert (forall ((x_58170 E_1) (x_58171 Int) (x_58172 E_1))
	(diseqE_0 (DeqL_0 x_58170) (EnqL_0 x_58171 x_58172))))
(assert (forall ((x_58173 E_1) (x_58174 Int) (x_58175 E_1))
	(diseqE_0 (DeqR_0 x_58173) (EnqL_0 x_58174 x_58175))))
(assert (forall ((x_58176 E_1) (x_58177 E_1) (x_58178 Int) (x_58179 E_1))
	(diseqE_0 (App_0 x_58176 x_58177) (EnqL_0 x_58178 x_58179))))
(assert (forall ((x_58180 E_1) (x_58181 Int) (x_58182 E_1))
	(diseqE_0 (EnqR_0 x_58180 x_58181) (DeqL_0 x_58182))))
(assert (forall ((x_58183 E_1) (x_58184 Int) (x_58185 E_1))
	(diseqE_0 (EnqR_0 x_58183 x_58184) (DeqR_0 x_58185))))
(assert (forall ((x_58186 E_1) (x_58187 Int) (x_58188 E_1) (x_58189 E_1))
	(diseqE_0 (EnqR_0 x_58186 x_58187) (App_0 x_58188 x_58189))))
(assert (forall ((x_58190 E_1) (x_58191 E_1) (x_58192 Int))
	(diseqE_0 (DeqL_0 x_58190) (EnqR_0 x_58191 x_58192))))
(assert (forall ((x_58193 E_1) (x_58194 E_1) (x_58195 Int))
	(diseqE_0 (DeqR_0 x_58193) (EnqR_0 x_58194 x_58195))))
(assert (forall ((x_58196 E_1) (x_58197 E_1) (x_58198 E_1) (x_58199 Int))
	(diseqE_0 (App_0 x_58196 x_58197) (EnqR_0 x_58198 x_58199))))
(assert (forall ((x_58200 E_1) (x_58201 E_1))
	(diseqE_0 (DeqL_0 x_58200) (DeqR_0 x_58201))))
(assert (forall ((x_58202 E_1) (x_58203 E_1) (x_58204 E_1))
	(diseqE_0 (DeqL_0 x_58202) (App_0 x_58203 x_58204))))
(assert (forall ((x_58205 E_1) (x_58206 E_1))
	(diseqE_0 (DeqR_0 x_58205) (DeqL_0 x_58206))))
(assert (forall ((x_58207 E_1) (x_58208 E_1) (x_58209 E_1))
	(diseqE_0 (App_0 x_58207 x_58208) (DeqL_0 x_58209))))
(assert (forall ((x_58210 E_1) (x_58211 E_1) (x_58212 E_1))
	(diseqE_0 (DeqR_0 x_58210) (App_0 x_58211 x_58212))))
(assert (forall ((x_58213 E_1) (x_58214 E_1) (x_58215 E_1))
	(diseqE_0 (App_0 x_58213 x_58214) (DeqR_0 x_58215))))
(assert (forall ((x_58216 Int) (x_58217 E_1) (x_58218 Int) (x_58219 E_1))
	(=> (distinct x_58216 x_58218) (diseqE_0 (EnqL_0 x_58216 x_58217) (EnqL_0 x_58218 x_58219)))))
(assert (forall ((x_58216 Int) (x_58217 E_1) (x_58218 Int) (x_58219 E_1))
	(=> (diseqE_0 x_58217 x_58219) (diseqE_0 (EnqL_0 x_58216 x_58217) (EnqL_0 x_58218 x_58219)))))
(assert (forall ((x_58220 E_1) (x_58221 Int) (x_58222 E_1) (x_58223 Int))
	(=> (diseqE_0 x_58220 x_58222) (diseqE_0 (EnqR_0 x_58220 x_58221) (EnqR_0 x_58222 x_58223)))))
(assert (forall ((x_58220 E_1) (x_58221 Int) (x_58222 E_1) (x_58223 Int))
	(=> (distinct x_58221 x_58223) (diseqE_0 (EnqR_0 x_58220 x_58221) (EnqR_0 x_58222 x_58223)))))
(assert (forall ((x_58224 E_1) (x_58225 E_1))
	(=> (diseqE_0 x_58224 x_58225) (diseqE_0 (DeqL_0 x_58224) (DeqL_0 x_58225)))))
(assert (forall ((x_58226 E_1) (x_58227 E_1))
	(=> (diseqE_0 x_58226 x_58227) (diseqE_0 (DeqR_0 x_58226) (DeqR_0 x_58227)))))
(assert (forall ((x_58228 E_1) (x_58229 E_1) (x_58230 E_1) (x_58231 E_1))
	(=> (diseqE_0 x_58228 x_58230) (diseqE_0 (App_0 x_58228 x_58229) (App_0 x_58230 x_58231)))))
(assert (forall ((x_58228 E_1) (x_58229 E_1) (x_58230 E_1) (x_58231 E_1))
	(=> (diseqE_0 x_58229 x_58231) (diseqE_0 (App_0 x_58228 x_58229) (App_0 x_58230 x_58231)))))
(declare-fun take_51 (list_284 Int list_284) Bool)
(assert (forall ((x_57881 Int) (y_2475 list_284))
	(=> (le_374 x_57881 Z_2242) (take_51 nil_317 x_57881 y_2475))))
(assert (forall ((x_58045 Int) (x_57927 list_284) (z_2229 Int) (xs_722 list_284) (x_57881 Int))
	(=> (and (gt_377 x_57881 Z_2242) (take_51 x_57927 x_58045 xs_722) (minus_395 x_58045 x_57881 (S_522 Z_2242))) (take_51 (cons_284 z_2229 x_57927) x_57881 (cons_284 z_2229 xs_722)))))
(assert (forall ((x_57881 Int) (y_2475 list_284))
	(=> (le_374 x_57881 Z_2242) (take_51 nil_317 x_57881 y_2475))))
(assert (forall ((x_57881 Int))
	(=> (gt_377 x_57881 Z_2242) (take_51 nil_317 x_57881 nil_317))))
(declare-fun tail_569 (list_284 list_284) Bool)
(assert (forall ((x_57930 list_284) (y_2476 Int))
	(tail_569 x_57930 (cons_284 y_2476 x_57930))))
(assert (tail_569 nil_317 nil_317))
(declare-fun length_56 (Int list_284) Bool)
(assert (forall ((x_57932 Int) (x_57933 Int) (y_2477 Int) (l_46 list_284))
	(=> (and (length_56 x_57933 l_46) (add_400 x_57932 (S_522 Z_2242) x_57933)) (length_56 x_57932 (cons_284 y_2477 l_46)))))
(assert (length_56 Z_2242 nil_317))
(declare-fun init_0 (list_284 list_284) Bool)
(assert (forall ((x_57936 list_284) (x_57885 Int) (x_57886 list_284) (y_2478 Int))
	(=> (init_0 x_57936 (cons_284 x_57885 x_57886)) (init_0 (cons_284 y_2478 x_57936) (cons_284 y_2478 (cons_284 x_57885 x_57886))))))
(assert (forall ((y_2478 Int))
	(init_0 nil_317 (cons_284 y_2478 nil_317))))
(assert (init_0 nil_317 nil_317))
(declare-fun fstL_0 (Maybe_1 Q_150) Bool)
(assert (forall ((x_57888 Int) (x_57889 list_284) (z_2231 list_284))
	(fstL_0 (Just_1 x_57888) (Q_151 (cons_284 x_57888 x_57889) z_2231))))
(assert (forall ((x_57891 Int) (x_57892 list_284) (y_2480 Int))
	(fstL_0 Nothing_1 (Q_151 nil_317 (cons_284 y_2480 (cons_284 x_57891 x_57892))))))
(assert (forall ((y_2480 Int))
	(fstL_0 (Just_1 y_2480) (Q_151 nil_317 (cons_284 y_2480 nil_317)))))
(assert (fstL_0 Nothing_1 (Q_151 nil_317 nil_317)))
(declare-fun fromMaybe_0 (Int Int Maybe_1) Bool)
(assert (forall ((x_57943 Int) (x_57893 Int))
	(fromMaybe_0 x_57943 x_57893 (Just_1 x_57943))))
(assert (forall ((x_57893 Int))
	(fromMaybe_0 x_57893 x_57893 Nothing_1)))
(declare-fun fromMaybe_1 (Q_150 Q_150 Maybe_2) Bool)
(assert (forall ((x_57945 Q_150) (x_57894 Q_150))
	(fromMaybe_1 x_57945 x_57894 (Just_2 x_57945))))
(assert (forall ((x_57894 Q_150))
	(fromMaybe_1 x_57894 x_57894 Nothing_2)))
(declare-fun empty_1 (Q_150) Bool)
(assert (empty_1 (Q_151 nil_317 nil_317)))
(declare-fun drop_56 (list_284 Int list_284) Bool)
(assert (forall ((x_57948 list_284) (x_57895 Int))
	(=> (le_374 x_57895 Z_2242) (drop_56 x_57948 x_57895 x_57948))))
(assert (forall ((x_58047 Int) (x_57949 list_284) (z_2234 Int) (xs_724 list_284) (x_57895 Int))
	(=> (and (gt_377 x_57895 Z_2242) (drop_56 x_57949 x_58047 xs_724) (minus_395 x_58047 x_57895 (S_522 Z_2242))) (drop_56 x_57949 x_57895 (cons_284 z_2234 xs_724)))))
(assert (forall ((x_57951 list_284) (x_57895 Int))
	(=> (le_374 x_57895 Z_2242) (drop_56 x_57951 x_57895 x_57951))))
(assert (forall ((x_57895 Int))
	(=> (gt_377 x_57895 Z_2242) (drop_56 nil_317 x_57895 nil_317))))
(declare-fun halve_0 (pair_106 list_284) Bool)
(assert (forall ((x_57955 list_284) (x_57956 list_284) (x_57953 Int) (k_15 Int) (x_57896 list_284))
	(=> (and (take_51 x_57955 k_15 x_57896) (drop_56 x_57956 k_15 x_57896) (length_56 x_57953 x_57896) (div_374 k_15 x_57953 (S_522 (S_522 Z_2242)))) (halve_0 (pair_107 x_57955 x_57956) x_57896))))
(declare-fun x_57897 (list_284 list_284 list_284) Bool)
(assert (forall ((x_57958 list_284) (z_2235 Int) (xs_725 list_284) (y_2484 list_284))
	(=> (x_57897 x_57958 xs_725 y_2484) (x_57897 (cons_284 z_2235 x_57958) (cons_284 z_2235 xs_725) y_2484))))
(assert (forall ((x_57959 list_284))
	(x_57897 x_57959 nil_317 x_57959)))
(declare-fun list_285 (list_284 E_1) Bool)
(assert (forall ((x_57960 list_284) (x_57961 list_284) (x_57962 list_284) (a_59 E_1) (b_45 E_1))
	(=> (and (list_285 x_57961 a_59) (list_285 x_57962 b_45) (x_57897 x_57960 x_57961 x_57962)) (list_285 x_57960 (App_0 a_59 b_45)))))
(assert (forall ((x_57964 list_284) (x_57965 list_284) (e_2 E_1))
	(=> (and (list_285 x_57965 e_2) (init_0 x_57964 x_57965)) (list_285 x_57964 (DeqR_0 e_2)))))
(assert (forall ((x_57967 list_284) (x_57968 list_284) (e_3 E_1))
	(=> (and (list_285 x_57968 e_3) (tail_569 x_57967 x_57968)) (list_285 x_57967 (DeqL_0 e_3)))))
(assert (forall ((x_57970 list_284) (x_57971 list_284) (e_4 E_1) (z_2236 Int))
	(=> (and (list_285 x_57971 e_4) (x_57897 x_57970 x_57971 (cons_284 z_2236 nil_317))) (list_285 x_57970 (EnqR_0 e_4 z_2236)))))
(assert (forall ((x_57974 list_284) (y_2485 Int) (e_5 E_1))
	(=> (list_285 x_57974 e_5) (list_285 (cons_284 y_2485 x_57974) (EnqL_0 y_2485 e_5)))))
(assert (list_285 nil_317 Empty_0))
(declare-fun reverse_13 (list_284 list_284) Bool)
(assert (forall ((x_57976 list_284) (x_57977 list_284) (y_2486 Int) (xs_726 list_284))
	(=> (and (reverse_13 x_57977 xs_726) (x_57897 x_57976 x_57977 (cons_284 y_2486 nil_317))) (reverse_13 x_57976 (cons_284 y_2486 xs_726)))))
(assert (reverse_13 nil_317 nil_317))
(declare-fun x_57901 (Q_150 Q_150 Q_150) Bool)
(assert (forall ((x_57981 list_284) (x_57982 list_284) (x_57983 list_284) (x_57984 list_284) (vs_1 list_284) (ws_0 list_284) (xs_727 list_284) (ys_204 list_284))
	(=> (and (reverse_13 x_57981 ys_204) (x_57897 x_57982 xs_727 x_57981) (reverse_13 x_57983 vs_1) (x_57897 x_57984 ws_0 x_57983)) (x_57901 (Q_151 x_57982 x_57984) (Q_151 xs_727 ys_204) (Q_151 vs_1 ws_0)))))
(declare-fun enqL_1 (Q_150 Int Q_150) Bool)
(assert (forall ((z_2237 Int) (x_57904 list_284) (xs_728 list_284) (x_57903 Int))
	(enqL_1 (Q_151 (cons_284 x_57903 xs_728) (cons_284 z_2237 x_57904)) x_57903 (Q_151 xs_728 (cons_284 z_2237 x_57904)))))
(assert (forall ((x_57988 list_284) (as_0 list_284) (bs_2 list_284) (xs_728 list_284) (x_57903 Int))
	(=> (and (reverse_13 x_57988 bs_2) (halve_0 (pair_107 as_0 bs_2) (cons_284 x_57903 xs_728))) (enqL_1 (Q_151 as_0 x_57988) x_57903 (Q_151 xs_728 nil_317)))))
(declare-fun mkQ_0 (Q_150 list_284 list_284) Bool)
(assert (forall ((x_57907 Int) (x_57908 list_284) (z_2238 Int) (x_57906 list_284))
	(mkQ_0 (Q_151 (cons_284 z_2238 x_57906) (cons_284 x_57907 x_57908)) (cons_284 z_2238 x_57906) (cons_284 x_57907 x_57908))))
(assert (forall ((x_57992 list_284) (as_1 list_284) (bs_3 list_284) (z_2238 Int) (x_57906 list_284))
	(=> (and (reverse_13 x_57992 bs_3) (halve_0 (pair_107 as_1 bs_3) (cons_284 z_2238 x_57906))) (mkQ_0 (Q_151 as_1 x_57992) (cons_284 z_2238 x_57906) nil_317))))
(assert (forall ((x_57995 list_284) (as_2 list_284) (bs_4 list_284) (y_2489 list_284))
	(=> (and (reverse_13 x_57995 bs_4) (halve_0 (pair_107 as_2 bs_4) y_2489)) (mkQ_0 (Q_151 x_57995 as_2) nil_317 y_2489))))
(declare-fun deqL_1 (Maybe_2 Q_150) Bool)
(assert (forall ((x_57997 Q_150) (x_57910 Int) (xs_729 list_284) (z_2239 list_284))
	(=> (mkQ_0 x_57997 xs_729 z_2239) (deqL_1 (Just_2 x_57997) (Q_151 (cons_284 x_57910 xs_729) z_2239)))))
(assert (forall ((x_57913 Int) (x_57914 list_284) (x_57911 Int))
	(deqL_1 Nothing_2 (Q_151 nil_317 (cons_284 x_57911 (cons_284 x_57913 x_57914))))))
(assert (forall ((x_58000 Q_150) (x_57911 Int))
	(=> (empty_1 x_58000) (deqL_1 (Just_2 x_58000) (Q_151 nil_317 (cons_284 x_57911 nil_317))))))
(assert (deqL_1 Nothing_2 (Q_151 nil_317 nil_317)))
(declare-fun deqR_1 (Maybe_2 Q_150) Bool)
(assert (forall ((x_58002 Q_150) (x_57918 Int) (x_57919 list_284) (x_57916 Int) (y_2492 Int) (ys_206 list_284))
	(=> (mkQ_0 x_58002 (cons_284 x_57916 (cons_284 x_57918 x_57919)) ys_206) (deqR_1 (Just_2 x_58002) (Q_151 (cons_284 x_57916 (cons_284 x_57918 x_57919)) (cons_284 y_2492 ys_206))))))
(assert (forall ((x_58004 Q_150) (x_57920 Int) (x_57921 list_284) (x_57916 Int))
	(=> (mkQ_0 x_58004 (cons_284 x_57916 nil_317) x_57921) (deqR_1 (Just_2 x_58004) (Q_151 (cons_284 x_57916 nil_317) (cons_284 x_57920 x_57921))))))
(assert (forall ((x_58009 Q_150) (y_2492 Int) (ys_206 list_284))
	(=> (mkQ_0 x_58009 nil_317 ys_206) (deqR_1 (Just_2 x_58009) (Q_151 nil_317 (cons_284 y_2492 ys_206))))))
(assert (forall ((x_57918 Int) (x_57919 list_284) (x_57916 Int))
	(deqR_1 Nothing_2 (Q_151 (cons_284 x_57916 (cons_284 x_57918 x_57919)) nil_317))))
(assert (forall ((x_58014 Q_150) (x_57916 Int))
	(=> (empty_1 x_58014) (deqR_1 (Just_2 x_58014) (Q_151 (cons_284 x_57916 nil_317) nil_317)))))
(assert (deqR_1 Nothing_2 (Q_151 nil_317 nil_317)))
(declare-fun enqR_1 (Q_150 Q_150 Int) Bool)
(assert (forall ((x_58016 Q_150) (xs_730 list_284) (ys_207 list_284) (y_2493 Int))
	(=> (mkQ_0 x_58016 xs_730 (cons_284 y_2493 ys_207)) (enqR_1 x_58016 (Q_151 xs_730 ys_207) y_2493))))
(declare-fun queue_0 (Q_150 E_1) Bool)
(assert (forall ((x_58018 Q_150) (x_58019 Q_150) (x_58020 Q_150) (a_60 E_1) (b_46 E_1))
	(=> (and (queue_0 x_58019 a_60) (queue_0 x_58020 b_46) (x_57901 x_58018 x_58019 x_58020)) (queue_0 x_58018 (App_0 a_60 b_46)))))
(assert (forall ((x_58023 Q_150) (x_58024 Maybe_2) (r_460 Q_150) (e_6 E_1))
	(=> (and (deqR_1 x_58024 r_460) (fromMaybe_1 x_58023 r_460 x_58024) (queue_0 r_460 e_6)) (queue_0 x_58023 (DeqR_0 e_6)))))
(assert (forall ((x_58027 Q_150) (x_58028 Maybe_2) (q_152 Q_150) (e_7 E_1))
	(=> (and (deqL_1 x_58028 q_152) (fromMaybe_1 x_58027 q_152 x_58028) (queue_0 q_152 e_7)) (queue_0 x_58027 (DeqL_0 e_7)))))
(assert (forall ((x_58030 Q_150) (x_58031 Q_150) (e_8 E_1) (z_2241 Int))
	(=> (and (queue_0 x_58031 e_8) (enqR_1 x_58030 x_58031 z_2241)) (queue_0 x_58030 (EnqR_0 e_8 z_2241)))))
(assert (forall ((x_58033 Q_150) (x_58034 Q_150) (y_2494 Int) (e_9 E_1))
	(=> (and (queue_0 x_58034 e_9) (enqL_1 x_58033 y_2494 x_58034)) (queue_0 x_58033 (EnqL_0 y_2494 e_9)))))
(assert (forall ((x_58036 Q_150))
	(=> (empty_1 x_58036) (queue_0 x_58036 Empty_0))))
(assert (forall ((x_58038 Q_150) (x_58039 Maybe_1) (x_57924 Int) (y_2495 list_284) (e_10 E_1))
	(=> (and (diseqMaybe_1 x_58039 (Just_1 x_57924)) (list_285 (cons_284 x_57924 y_2495) e_10) (queue_0 x_58038 e_10) (fstL_0 x_58039 x_58038)) false)))
(assert (forall ((x_58041 Q_150) (x_58042 Maybe_1) (e_10 E_1))
	(=> (and (diseqMaybe_1 x_58042 Nothing_1) (list_285 nil_317 e_10) (queue_0 x_58041 e_10) (fstL_0 x_58042 x_58041)) false)))
(check-sat)
