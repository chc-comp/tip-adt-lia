(set-logic HORN)
(declare-datatypes ((Bool_260 0)) (((false_260) (true_260))))
(declare-fun diseqBool_119 (Bool_260 Bool_260) Bool)
(declare-fun isfalse_119 (Bool_260) Bool)
(declare-fun istrue_119 (Bool_260) Bool)
(assert (isfalse_119 false_260))
(assert (istrue_119 true_260))
(assert (diseqBool_119 false_260 true_260))
(assert (diseqBool_119 true_260 false_260))
(declare-fun and_260 (Bool_260 Bool_260 Bool_260) Bool)
(declare-fun or_265 (Bool_260 Bool_260 Bool_260) Bool)
(declare-fun hence_260 (Bool_260 Bool_260 Bool_260) Bool)
(declare-fun not_263 (Bool_260 Bool_260) Bool)
(assert (and_260 false_260 false_260 false_260))
(assert (and_260 false_260 true_260 false_260))
(assert (and_260 false_260 false_260 true_260))
(assert (and_260 true_260 true_260 true_260))
(assert (or_265 false_260 false_260 false_260))
(assert (or_265 true_260 true_260 false_260))
(assert (or_265 true_260 false_260 true_260))
(assert (or_265 true_260 true_260 true_260))
(assert (hence_260 true_260 false_260 false_260))
(assert (hence_260 false_260 true_260 false_260))
(assert (hence_260 true_260 false_260 true_260))
(assert (hence_260 true_260 true_260 true_260))
(assert (not_263 true_260 false_260))
(assert (not_263 false_260 true_260))
(declare-datatypes ((A_49 0)) (((X_47034) (Y_1708))))
(declare-fun diseqA_13 (A_49 A_49) Bool)
(declare-fun isX_16 (A_49) Bool)
(declare-fun isY_13 (A_49) Bool)
(assert (isX_16 X_47034))
(assert (isY_13 Y_1708))
(assert (diseqA_13 X_47034 Y_1708))
(assert (diseqA_13 Y_1708 X_47034))
(declare-datatypes ((R_321 0)) (((Nil_210) (Eps_26) (Atom_13 (projAtom_26 A_49)) (Plus_106 (projPlus_52 R_321) (projPlus_53 R_321)) (Seq_26 (projSeq_52 R_321) (projSeq_53 R_321)) (Star_13 (projStar_26 R_321)))))
(declare-fun diseqR_13 (R_321 R_321) Bool)
(declare-fun projAtom_27 (A_49 R_321) Bool)
(declare-fun projPlus_54 (R_321 R_321) Bool)
(declare-fun projPlus_55 (R_321 R_321) Bool)
(declare-fun projSeq_54 (R_321 R_321) Bool)
(declare-fun projSeq_55 (R_321 R_321) Bool)
(declare-fun projStar_27 (R_321 R_321) Bool)
(declare-fun isNil_210 (R_321) Bool)
(declare-fun isEps_13 (R_321) Bool)
(declare-fun isAtom_13 (R_321) Bool)
(declare-fun isPlus_13 (R_321) Bool)
(declare-fun isSeq_13 (R_321) Bool)
(declare-fun isStar_13 (R_321) Bool)
(assert (forall ((x_49147 A_49))
	(projAtom_27 x_49147 (Atom_13 x_49147))))
(assert (forall ((x_49149 R_321) (x_49150 R_321))
	(projPlus_54 x_49149 (Plus_106 x_49149 x_49150))))
(assert (forall ((x_49149 R_321) (x_49150 R_321))
	(projPlus_55 x_49150 (Plus_106 x_49149 x_49150))))
(assert (forall ((x_49152 R_321) (x_49153 R_321))
	(projSeq_54 x_49152 (Seq_26 x_49152 x_49153))))
(assert (forall ((x_49152 R_321) (x_49153 R_321))
	(projSeq_55 x_49153 (Seq_26 x_49152 x_49153))))
(assert (forall ((x_49155 R_321))
	(projStar_27 x_49155 (Star_13 x_49155))))
(assert (isNil_210 Nil_210))
(assert (isEps_13 Eps_26))
(assert (forall ((x_49157 A_49))
	(isAtom_13 (Atom_13 x_49157))))
(assert (forall ((x_49158 R_321) (x_49159 R_321))
	(isPlus_13 (Plus_106 x_49158 x_49159))))
(assert (forall ((x_49160 R_321) (x_49161 R_321))
	(isSeq_13 (Seq_26 x_49160 x_49161))))
(assert (forall ((x_49162 R_321))
	(isStar_13 (Star_13 x_49162))))
(assert (diseqR_13 Nil_210 Eps_26))
(assert (forall ((x_49163 A_49))
	(diseqR_13 Nil_210 (Atom_13 x_49163))))
(assert (forall ((x_49164 R_321) (x_49165 R_321))
	(diseqR_13 Nil_210 (Plus_106 x_49164 x_49165))))
(assert (forall ((x_49166 R_321) (x_49167 R_321))
	(diseqR_13 Nil_210 (Seq_26 x_49166 x_49167))))
(assert (forall ((x_49168 R_321))
	(diseqR_13 Nil_210 (Star_13 x_49168))))
(assert (diseqR_13 Eps_26 Nil_210))
(assert (forall ((x_49169 A_49))
	(diseqR_13 (Atom_13 x_49169) Nil_210)))
(assert (forall ((x_49170 R_321) (x_49171 R_321))
	(diseqR_13 (Plus_106 x_49170 x_49171) Nil_210)))
(assert (forall ((x_49172 R_321) (x_49173 R_321))
	(diseqR_13 (Seq_26 x_49172 x_49173) Nil_210)))
(assert (forall ((x_49174 R_321))
	(diseqR_13 (Star_13 x_49174) Nil_210)))
(assert (forall ((x_49175 A_49))
	(diseqR_13 Eps_26 (Atom_13 x_49175))))
(assert (forall ((x_49176 R_321) (x_49177 R_321))
	(diseqR_13 Eps_26 (Plus_106 x_49176 x_49177))))
(assert (forall ((x_49178 R_321) (x_49179 R_321))
	(diseqR_13 Eps_26 (Seq_26 x_49178 x_49179))))
(assert (forall ((x_49180 R_321))
	(diseqR_13 Eps_26 (Star_13 x_49180))))
(assert (forall ((x_49181 A_49))
	(diseqR_13 (Atom_13 x_49181) Eps_26)))
(assert (forall ((x_49182 R_321) (x_49183 R_321))
	(diseqR_13 (Plus_106 x_49182 x_49183) Eps_26)))
(assert (forall ((x_49184 R_321) (x_49185 R_321))
	(diseqR_13 (Seq_26 x_49184 x_49185) Eps_26)))
(assert (forall ((x_49186 R_321))
	(diseqR_13 (Star_13 x_49186) Eps_26)))
(assert (forall ((x_49187 A_49) (x_49188 R_321) (x_49189 R_321))
	(diseqR_13 (Atom_13 x_49187) (Plus_106 x_49188 x_49189))))
(assert (forall ((x_49190 A_49) (x_49191 R_321) (x_49192 R_321))
	(diseqR_13 (Atom_13 x_49190) (Seq_26 x_49191 x_49192))))
(assert (forall ((x_49193 A_49) (x_49194 R_321))
	(diseqR_13 (Atom_13 x_49193) (Star_13 x_49194))))
(assert (forall ((x_49195 R_321) (x_49196 R_321) (x_49197 A_49))
	(diseqR_13 (Plus_106 x_49195 x_49196) (Atom_13 x_49197))))
(assert (forall ((x_49198 R_321) (x_49199 R_321) (x_49200 A_49))
	(diseqR_13 (Seq_26 x_49198 x_49199) (Atom_13 x_49200))))
(assert (forall ((x_49201 R_321) (x_49202 A_49))
	(diseqR_13 (Star_13 x_49201) (Atom_13 x_49202))))
(assert (forall ((x_49203 R_321) (x_49204 R_321) (x_49205 R_321) (x_49206 R_321))
	(diseqR_13 (Plus_106 x_49203 x_49204) (Seq_26 x_49205 x_49206))))
(assert (forall ((x_49207 R_321) (x_49208 R_321) (x_49209 R_321))
	(diseqR_13 (Plus_106 x_49207 x_49208) (Star_13 x_49209))))
(assert (forall ((x_49210 R_321) (x_49211 R_321) (x_49212 R_321) (x_49213 R_321))
	(diseqR_13 (Seq_26 x_49210 x_49211) (Plus_106 x_49212 x_49213))))
(assert (forall ((x_49214 R_321) (x_49215 R_321) (x_49216 R_321))
	(diseqR_13 (Star_13 x_49214) (Plus_106 x_49215 x_49216))))
(assert (forall ((x_49217 R_321) (x_49218 R_321) (x_49219 R_321))
	(diseqR_13 (Seq_26 x_49217 x_49218) (Star_13 x_49219))))
(assert (forall ((x_49220 R_321) (x_49221 R_321) (x_49222 R_321))
	(diseqR_13 (Star_13 x_49220) (Seq_26 x_49221 x_49222))))
(assert (forall ((x_49223 A_49) (x_49224 A_49))
	(=> (diseqA_13 x_49223 x_49224) (diseqR_13 (Atom_13 x_49223) (Atom_13 x_49224)))))
(assert (forall ((x_49225 R_321) (x_49226 R_321) (x_49227 R_321) (x_49228 R_321))
	(=> (diseqR_13 x_49225 x_49227) (diseqR_13 (Plus_106 x_49225 x_49226) (Plus_106 x_49227 x_49228)))))
(assert (forall ((x_49225 R_321) (x_49226 R_321) (x_49227 R_321) (x_49228 R_321))
	(=> (diseqR_13 x_49226 x_49228) (diseqR_13 (Plus_106 x_49225 x_49226) (Plus_106 x_49227 x_49228)))))
(assert (forall ((x_49229 R_321) (x_49230 R_321) (x_49231 R_321) (x_49232 R_321))
	(=> (diseqR_13 x_49229 x_49231) (diseqR_13 (Seq_26 x_49229 x_49230) (Seq_26 x_49231 x_49232)))))
(assert (forall ((x_49229 R_321) (x_49230 R_321) (x_49231 R_321) (x_49232 R_321))
	(=> (diseqR_13 x_49230 x_49232) (diseqR_13 (Seq_26 x_49229 x_49230) (Seq_26 x_49231 x_49232)))))
(assert (forall ((x_49233 R_321) (x_49234 R_321))
	(=> (diseqR_13 x_49233 x_49234) (diseqR_13 (Star_13 x_49233) (Star_13 x_49234)))))
(declare-datatypes ((list_185 0)) (((nil_211) (cons_185 (head_370 A_49) (tail_370 list_185)))))
(declare-fun diseqlist_185 (list_185 list_185) Bool)
(declare-fun head_371 (A_49 list_185) Bool)
(declare-fun tail_371 (list_185 list_185) Bool)
(declare-fun isnil_211 (list_185) Bool)
(declare-fun iscons_185 (list_185) Bool)
(assert (forall ((x_49236 A_49) (x_49237 list_185))
	(head_371 x_49236 (cons_185 x_49236 x_49237))))
(assert (forall ((x_49236 A_49) (x_49237 list_185))
	(tail_371 x_49237 (cons_185 x_49236 x_49237))))
(assert (isnil_211 nil_211))
(assert (forall ((x_49239 A_49) (x_49240 list_185))
	(iscons_185 (cons_185 x_49239 x_49240))))
(assert (forall ((x_49241 A_49) (x_49242 list_185))
	(diseqlist_185 nil_211 (cons_185 x_49241 x_49242))))
(assert (forall ((x_49243 A_49) (x_49244 list_185))
	(diseqlist_185 (cons_185 x_49243 x_49244) nil_211)))
(assert (forall ((x_49245 A_49) (x_49246 list_185) (x_49247 A_49) (x_49248 list_185))
	(=> (diseqA_13 x_49245 x_49247) (diseqlist_185 (cons_185 x_49245 x_49246) (cons_185 x_49247 x_49248)))))
(assert (forall ((x_49245 A_49) (x_49246 list_185) (x_49247 A_49) (x_49248 list_185))
	(=> (diseqlist_185 x_49246 x_49248) (diseqlist_185 (cons_185 x_49245 x_49246) (cons_185 x_49247 x_49248)))))
(declare-fun seq_27 (R_321 R_321 R_321) Bool)
(assert (forall ((y_1709 R_321))
	(seq_27 Nil_210 Nil_210 y_1709)))
(assert (forall ((x_47036 R_321) (x_47279 A_49))
	(seq_27 Nil_210 (Atom_13 x_47279) Nil_210)))
(assert (forall ((x_47036 R_321))
	(seq_27 Nil_210 Eps_26 Nil_210)))
(assert (forall ((x_47036 R_321) (x_47280 R_321) (x_47281 R_321))
	(seq_27 Nil_210 (Plus_106 x_47280 x_47281) Nil_210)))
(assert (forall ((x_47036 R_321) (x_47282 R_321) (x_47283 R_321))
	(seq_27 Nil_210 (Seq_26 x_47282 x_47283) Nil_210)))
(assert (forall ((x_47036 R_321) (x_47284 R_321))
	(seq_27 Nil_210 (Star_13 x_47284) Nil_210)))
(assert (forall ((x_47037 R_321) (x_47093 A_49) (x_47036 R_321))
	(seq_27 (Atom_13 x_47093) Eps_26 (Atom_13 x_47093))))
(assert (forall ((x_47037 R_321) (x_47036 R_321))
	(seq_27 Eps_26 Eps_26 Eps_26)))
(assert (forall ((x_47037 R_321) (x_47094 R_321) (x_47095 R_321) (x_47036 R_321))
	(seq_27 (Plus_106 x_47094 x_47095) Eps_26 (Plus_106 x_47094 x_47095))))
(assert (forall ((x_47037 R_321) (x_47096 R_321) (x_47097 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 x_47096 x_47097) Eps_26 (Seq_26 x_47096 x_47097))))
(assert (forall ((x_47037 R_321) (x_47098 R_321) (x_47036 R_321))
	(seq_27 (Star_13 x_47098) Eps_26 (Star_13 x_47098))))
(assert (forall ((x_47038 R_321) (x_47057 A_49) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Atom_13 x_47057) (Atom_13 x_47057) Eps_26)))
(assert (forall ((x_47038 R_321) (x_47058 R_321) (x_47059 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Plus_106 x_47058 x_47059) (Plus_106 x_47058 x_47059) Eps_26)))
(assert (forall ((x_47038 R_321) (x_47060 R_321) (x_47061 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 x_47060 x_47061) (Seq_26 x_47060 x_47061) Eps_26)))
(assert (forall ((x_47038 R_321) (x_47062 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Star_13 x_47062) (Star_13 x_47062) Eps_26)))
(assert (forall ((x_47039 R_321) (x_47051 A_49) (x_47038 R_321) (x_47063 A_49) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Atom_13 x_47063) (Atom_13 x_47051)) (Atom_13 x_47063) (Atom_13 x_47051))))
(assert (forall ((x_47039 R_321) (x_47051 A_49) (x_47038 R_321) (x_47064 R_321) (x_47065 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Plus_106 x_47064 x_47065) (Atom_13 x_47051)) (Plus_106 x_47064 x_47065) (Atom_13 x_47051))))
(assert (forall ((x_47039 R_321) (x_47051 A_49) (x_47038 R_321) (x_47066 R_321) (x_47067 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Seq_26 x_47066 x_47067) (Atom_13 x_47051)) (Seq_26 x_47066 x_47067) (Atom_13 x_47051))))
(assert (forall ((x_47039 R_321) (x_47051 A_49) (x_47038 R_321) (x_47068 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Star_13 x_47068) (Atom_13 x_47051)) (Star_13 x_47068) (Atom_13 x_47051))))
(assert (forall ((x_47039 R_321) (x_47052 R_321) (x_47053 R_321) (x_47038 R_321) (x_47075 A_49) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Atom_13 x_47075) (Plus_106 x_47052 x_47053)) (Atom_13 x_47075) (Plus_106 x_47052 x_47053))))
(assert (forall ((x_47039 R_321) (x_47052 R_321) (x_47053 R_321) (x_47038 R_321) (x_47076 R_321) (x_47077 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Plus_106 x_47076 x_47077) (Plus_106 x_47052 x_47053)) (Plus_106 x_47076 x_47077) (Plus_106 x_47052 x_47053))))
(assert (forall ((x_47039 R_321) (x_47052 R_321) (x_47053 R_321) (x_47038 R_321) (x_47078 R_321) (x_47079 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Seq_26 x_47078 x_47079) (Plus_106 x_47052 x_47053)) (Seq_26 x_47078 x_47079) (Plus_106 x_47052 x_47053))))
(assert (forall ((x_47039 R_321) (x_47052 R_321) (x_47053 R_321) (x_47038 R_321) (x_47080 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Star_13 x_47080) (Plus_106 x_47052 x_47053)) (Star_13 x_47080) (Plus_106 x_47052 x_47053))))
(assert (forall ((x_47039 R_321) (x_47054 R_321) (x_47055 R_321) (x_47038 R_321) (x_47081 A_49) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Atom_13 x_47081) (Seq_26 x_47054 x_47055)) (Atom_13 x_47081) (Seq_26 x_47054 x_47055))))
(assert (forall ((x_47039 R_321) (x_47054 R_321) (x_47055 R_321) (x_47038 R_321) (x_47082 R_321) (x_47083 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Plus_106 x_47082 x_47083) (Seq_26 x_47054 x_47055)) (Plus_106 x_47082 x_47083) (Seq_26 x_47054 x_47055))))
(assert (forall ((x_47039 R_321) (x_47054 R_321) (x_47055 R_321) (x_47038 R_321) (x_47084 R_321) (x_47085 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Seq_26 x_47084 x_47085) (Seq_26 x_47054 x_47055)) (Seq_26 x_47084 x_47085) (Seq_26 x_47054 x_47055))))
(assert (forall ((x_47039 R_321) (x_47054 R_321) (x_47055 R_321) (x_47038 R_321) (x_47086 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Star_13 x_47086) (Seq_26 x_47054 x_47055)) (Star_13 x_47086) (Seq_26 x_47054 x_47055))))
(assert (forall ((x_47039 R_321) (x_47056 R_321) (x_47038 R_321) (x_47087 A_49) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Atom_13 x_47087) (Star_13 x_47056)) (Atom_13 x_47087) (Star_13 x_47056))))
(assert (forall ((x_47039 R_321) (x_47056 R_321) (x_47038 R_321) (x_47088 R_321) (x_47089 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Plus_106 x_47088 x_47089) (Star_13 x_47056)) (Plus_106 x_47088 x_47089) (Star_13 x_47056))))
(assert (forall ((x_47039 R_321) (x_47056 R_321) (x_47038 R_321) (x_47090 R_321) (x_47091 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Seq_26 x_47090 x_47091) (Star_13 x_47056)) (Seq_26 x_47090 x_47091) (Star_13 x_47056))))
(assert (forall ((x_47039 R_321) (x_47056 R_321) (x_47038 R_321) (x_47092 R_321) (x_47037 R_321) (x_47036 R_321))
	(seq_27 (Seq_26 (Star_13 x_47092) (Star_13 x_47056)) (Star_13 x_47092) (Star_13 x_47056))))
(declare-fun plus_107 (R_321 R_321 R_321) Bool)
(assert (forall ((x_49039 R_321))
	(plus_107 x_49039 Nil_210 x_49039)))
(assert (forall ((x_47041 R_321) (x_48221 A_49))
	(plus_107 (Atom_13 x_48221) (Atom_13 x_48221) Nil_210)))
(assert (forall ((x_47041 R_321))
	(plus_107 Eps_26 Eps_26 Nil_210)))
(assert (forall ((x_47041 R_321) (x_48222 R_321) (x_48223 R_321))
	(plus_107 (Plus_106 x_48222 x_48223) (Plus_106 x_48222 x_48223) Nil_210)))
(assert (forall ((x_47041 R_321) (x_48224 R_321) (x_48225 R_321))
	(plus_107 (Seq_26 x_48224 x_48225) (Seq_26 x_48224 x_48225) Nil_210)))
(assert (forall ((x_47041 R_321) (x_48226 R_321))
	(plus_107 (Star_13 x_48226) (Star_13 x_48226) Nil_210)))
(assert (forall ((x_47042 R_321) (x_48215 A_49) (x_47041 R_321) (x_48227 A_49))
	(plus_107 (Plus_106 (Atom_13 x_48227) (Atom_13 x_48215)) (Atom_13 x_48227) (Atom_13 x_48215))))
(assert (forall ((x_47042 R_321) (x_48215 A_49) (x_47041 R_321))
	(plus_107 (Plus_106 Eps_26 (Atom_13 x_48215)) Eps_26 (Atom_13 x_48215))))
(assert (forall ((x_47042 R_321) (x_48215 A_49) (x_47041 R_321) (x_48228 R_321) (x_48229 R_321))
	(plus_107 (Plus_106 (Plus_106 x_48228 x_48229) (Atom_13 x_48215)) (Plus_106 x_48228 x_48229) (Atom_13 x_48215))))
(assert (forall ((x_47042 R_321) (x_48215 A_49) (x_47041 R_321) (x_48230 R_321) (x_48231 R_321))
	(plus_107 (Plus_106 (Seq_26 x_48230 x_48231) (Atom_13 x_48215)) (Seq_26 x_48230 x_48231) (Atom_13 x_48215))))
(assert (forall ((x_47042 R_321) (x_48215 A_49) (x_47041 R_321) (x_48232 R_321))
	(plus_107 (Plus_106 (Star_13 x_48232) (Atom_13 x_48215)) (Star_13 x_48232) (Atom_13 x_48215))))
(assert (forall ((x_47042 R_321) (x_47041 R_321) (x_48233 A_49))
	(plus_107 (Plus_106 (Atom_13 x_48233) Eps_26) (Atom_13 x_48233) Eps_26)))
(assert (forall ((x_47042 R_321) (x_47041 R_321))
	(plus_107 (Plus_106 Eps_26 Eps_26) Eps_26 Eps_26)))
(assert (forall ((x_47042 R_321) (x_47041 R_321) (x_48234 R_321) (x_48235 R_321))
	(plus_107 (Plus_106 (Plus_106 x_48234 x_48235) Eps_26) (Plus_106 x_48234 x_48235) Eps_26)))
(assert (forall ((x_47042 R_321) (x_47041 R_321) (x_48236 R_321) (x_48237 R_321))
	(plus_107 (Plus_106 (Seq_26 x_48236 x_48237) Eps_26) (Seq_26 x_48236 x_48237) Eps_26)))
(assert (forall ((x_47042 R_321) (x_47041 R_321) (x_48238 R_321))
	(plus_107 (Plus_106 (Star_13 x_48238) Eps_26) (Star_13 x_48238) Eps_26)))
(assert (forall ((x_47042 R_321) (x_48216 R_321) (x_48217 R_321) (x_47041 R_321) (x_48239 A_49))
	(plus_107 (Plus_106 (Atom_13 x_48239) (Plus_106 x_48216 x_48217)) (Atom_13 x_48239) (Plus_106 x_48216 x_48217))))
(assert (forall ((x_47042 R_321) (x_48216 R_321) (x_48217 R_321) (x_47041 R_321))
	(plus_107 (Plus_106 Eps_26 (Plus_106 x_48216 x_48217)) Eps_26 (Plus_106 x_48216 x_48217))))
(assert (forall ((x_47042 R_321) (x_48216 R_321) (x_48217 R_321) (x_47041 R_321) (x_48240 R_321) (x_48241 R_321))
	(plus_107 (Plus_106 (Plus_106 x_48240 x_48241) (Plus_106 x_48216 x_48217)) (Plus_106 x_48240 x_48241) (Plus_106 x_48216 x_48217))))
(assert (forall ((x_47042 R_321) (x_48216 R_321) (x_48217 R_321) (x_47041 R_321) (x_48242 R_321) (x_48243 R_321))
	(plus_107 (Plus_106 (Seq_26 x_48242 x_48243) (Plus_106 x_48216 x_48217)) (Seq_26 x_48242 x_48243) (Plus_106 x_48216 x_48217))))
(assert (forall ((x_47042 R_321) (x_48216 R_321) (x_48217 R_321) (x_47041 R_321) (x_48244 R_321))
	(plus_107 (Plus_106 (Star_13 x_48244) (Plus_106 x_48216 x_48217)) (Star_13 x_48244) (Plus_106 x_48216 x_48217))))
(assert (forall ((x_47042 R_321) (x_48218 R_321) (x_48219 R_321) (x_47041 R_321) (x_48245 A_49))
	(plus_107 (Plus_106 (Atom_13 x_48245) (Seq_26 x_48218 x_48219)) (Atom_13 x_48245) (Seq_26 x_48218 x_48219))))
(assert (forall ((x_47042 R_321) (x_48218 R_321) (x_48219 R_321) (x_47041 R_321))
	(plus_107 (Plus_106 Eps_26 (Seq_26 x_48218 x_48219)) Eps_26 (Seq_26 x_48218 x_48219))))
(assert (forall ((x_47042 R_321) (x_48218 R_321) (x_48219 R_321) (x_47041 R_321) (x_48246 R_321) (x_48247 R_321))
	(plus_107 (Plus_106 (Plus_106 x_48246 x_48247) (Seq_26 x_48218 x_48219)) (Plus_106 x_48246 x_48247) (Seq_26 x_48218 x_48219))))
(assert (forall ((x_47042 R_321) (x_48218 R_321) (x_48219 R_321) (x_47041 R_321) (x_48248 R_321) (x_48249 R_321))
	(plus_107 (Plus_106 (Seq_26 x_48248 x_48249) (Seq_26 x_48218 x_48219)) (Seq_26 x_48248 x_48249) (Seq_26 x_48218 x_48219))))
(assert (forall ((x_47042 R_321) (x_48218 R_321) (x_48219 R_321) (x_47041 R_321) (x_48250 R_321))
	(plus_107 (Plus_106 (Star_13 x_48250) (Seq_26 x_48218 x_48219)) (Star_13 x_48250) (Seq_26 x_48218 x_48219))))
(assert (forall ((x_47042 R_321) (x_48220 R_321) (x_47041 R_321) (x_48251 A_49))
	(plus_107 (Plus_106 (Atom_13 x_48251) (Star_13 x_48220)) (Atom_13 x_48251) (Star_13 x_48220))))
(assert (forall ((x_47042 R_321) (x_48220 R_321) (x_47041 R_321))
	(plus_107 (Plus_106 Eps_26 (Star_13 x_48220)) Eps_26 (Star_13 x_48220))))
(assert (forall ((x_47042 R_321) (x_48220 R_321) (x_47041 R_321) (x_48252 R_321) (x_48253 R_321))
	(plus_107 (Plus_106 (Plus_106 x_48252 x_48253) (Star_13 x_48220)) (Plus_106 x_48252 x_48253) (Star_13 x_48220))))
(assert (forall ((x_47042 R_321) (x_48220 R_321) (x_47041 R_321) (x_48254 R_321) (x_48255 R_321))
	(plus_107 (Plus_106 (Seq_26 x_48254 x_48255) (Star_13 x_48220)) (Seq_26 x_48254 x_48255) (Star_13 x_48220))))
(assert (forall ((x_47042 R_321) (x_48220 R_321) (x_47041 R_321) (x_48256 R_321))
	(plus_107 (Plus_106 (Star_13 x_48256) (Star_13 x_48220)) (Star_13 x_48256) (Star_13 x_48220))))
(declare-fun eqA_13 (Bool_260 A_49 A_49) Bool)
(assert (eqA_13 true_260 Y_1708 Y_1708))
(assert (eqA_13 false_260 Y_1708 X_47034))
(assert (eqA_13 false_260 X_47034 Y_1708))
(assert (eqA_13 true_260 X_47034 X_47034))
(declare-fun eps_27 (Bool_260 R_321) Bool)
(assert (forall ((y_1712 R_321))
	(eps_27 true_260 (Star_13 y_1712))))
(assert (forall ((x_49075 Bool_260) (x_49076 Bool_260) (x_49077 Bool_260) (r_322 R_321) (q_103 R_321))
	(=> (and (eps_27 x_49076 r_322) (eps_27 x_49077 q_103) (and_260 x_49075 x_49076 x_49077)) (eps_27 x_49075 (Seq_26 r_322 q_103)))))
(assert (forall ((x_49078 Bool_260) (x_49079 Bool_260) (x_49080 Bool_260) (p_299 R_321) (q_104 R_321))
	(=> (and (eps_27 x_49079 p_299) (eps_27 x_49080 q_104) (or_265 x_49078 x_49079 x_49080)) (eps_27 x_49078 (Plus_106 p_299 q_104)))))
(assert (eps_27 true_260 Eps_26))
(assert (forall ((x_47045 R_321) (x_48257 A_49))
	(eps_27 false_260 (Atom_13 x_48257))))
(assert (forall ((x_47045 R_321))
	(eps_27 false_260 Nil_210)))
(declare-fun epsR_13 (R_321 R_321) Bool)
(assert (forall ((x_47046 R_321))
	(=> (eps_27 true_260 x_47046) (epsR_13 Eps_26 x_47046))))
(assert (forall ((x_47046 R_321))
	(=> (eps_27 false_260 x_47046) (epsR_13 Nil_210 x_47046))))
(declare-fun step_13 (R_321 R_321 A_49) Bool)
(assert (forall ((x_49088 R_321) (x_49089 R_321) (p_300 R_321) (y_1713 A_49))
	(=> (and (step_13 x_49089 p_300 y_1713) (seq_27 x_49088 x_49089 (Star_13 p_300))) (step_13 x_49088 (Star_13 p_300) y_1713))))
(assert (forall ((x_49091 R_321) (x_49092 R_321) (x_49093 R_321) (x_49094 R_321) (x_49095 R_321) (x_49096 R_321) (r_323 R_321) (q_105 R_321) (y_1713 A_49))
	(=> (and (step_13 x_49092 r_323 y_1713) (seq_27 x_49093 x_49092 q_105) (epsR_13 x_49094 r_323) (step_13 x_49095 q_105 y_1713) (seq_27 x_49096 x_49094 x_49095) (plus_107 x_49091 x_49093 x_49096)) (step_13 x_49091 (Seq_26 r_323 q_105) y_1713))))
(assert (forall ((x_49098 R_321) (x_49099 R_321) (x_49100 R_321) (p_301 R_321) (q_106 R_321) (y_1713 A_49))
	(=> (and (step_13 x_49099 p_301 y_1713) (step_13 x_49100 q_106 y_1713) (plus_107 x_49098 x_49099 x_49100)) (step_13 x_49098 (Plus_106 p_301 q_106) y_1713))))
(assert (forall ((a_50 A_49) (y_1713 A_49))
	(=> (eqA_13 true_260 a_50 y_1713) (step_13 Eps_26 (Atom_13 a_50) y_1713))))
(assert (forall ((a_50 A_49) (y_1713 A_49))
	(=> (eqA_13 false_260 a_50 y_1713) (step_13 Nil_210 (Atom_13 a_50) y_1713))))
(assert (forall ((x_47048 R_321) (y_1713 A_49))
	(step_13 Nil_210 Eps_26 y_1713)))
(assert (forall ((x_47048 R_321) (y_1713 A_49))
	(step_13 Nil_210 Nil_210 y_1713)))
(declare-fun recognise_13 (Bool_260 R_321 list_185) Bool)
(assert (forall ((x_49108 Bool_260) (x_49109 R_321) (z_1536 A_49) (xs_510 list_185) (x_47049 R_321))
	(=> (and (step_13 x_49109 x_47049 z_1536) (recognise_13 x_49108 x_49109 xs_510)) (recognise_13 x_49108 x_47049 (cons_185 z_1536 xs_510)))))
(assert (forall ((x_49111 Bool_260) (x_47049 R_321))
	(=> (eps_27 x_49111 x_47049) (recognise_13 x_49111 x_47049 nil_211))))
(declare-fun deeps_0 (R_321 R_321) Bool)
(assert (forall ((x_49113 R_321) (p_302 R_321))
	(=> (deeps_0 x_49113 p_302) (deeps_0 x_49113 (Star_13 p_302)))))
(assert (forall ((x_49118 R_321) (x_49119 R_321) (r_324 R_321) (q_107 R_321))
	(=> (and (deeps_0 x_49118 r_324) (deeps_0 x_49119 q_107) (eps_27 true_260 q_107) (eps_27 true_260 r_324)) (deeps_0 (Plus_106 x_49118 x_49119) (Seq_26 r_324 q_107)))))
(assert (forall ((r_324 R_321) (q_107 R_321))
	(=> (eps_27 false_260 r_324) (deeps_0 (Seq_26 r_324 q_107) (Seq_26 r_324 q_107)))))
(assert (forall ((x_49125 R_321) (x_49126 R_321) (r_324 R_321) (q_107 R_321))
	(=> (and (deeps_0 x_49125 r_324) (deeps_0 x_49126 q_107) (eps_27 true_260 q_107) (eps_27 true_260 r_324)) (deeps_0 (Plus_106 x_49125 x_49126) (Seq_26 r_324 q_107)))))
(assert (forall ((r_324 R_321) (q_107 R_321))
	(=> (eps_27 false_260 q_107) (deeps_0 (Seq_26 r_324 q_107) (Seq_26 r_324 q_107)))))
(assert (forall ((x_49130 R_321) (x_49131 R_321) (p_303 R_321) (q_108 R_321))
	(=> (and (deeps_0 x_49130 p_303) (deeps_0 x_49131 q_108)) (deeps_0 (Plus_106 x_49130 x_49131) (Plus_106 p_303 q_108)))))
(assert (forall ((a_51 A_49))
	(deeps_0 (Atom_13 a_51) (Atom_13 a_51))))
(assert (deeps_0 Nil_210 Eps_26))
(assert (deeps_0 Nil_210 Nil_210))
(assert (forall ((x_49135 Bool_260) (x_49136 R_321) (x_49137 Bool_260) (p_304 R_321) (s_362 list_185))
	(=> (and (diseqBool_119 x_49135 x_49137) (recognise_13 x_49135 (Star_13 p_304) s_362) (deeps_0 x_49136 p_304) (recognise_13 x_49137 (Star_13 x_49136) s_362)) false)))
(check-sat)
