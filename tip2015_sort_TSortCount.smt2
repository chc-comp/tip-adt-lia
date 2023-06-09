(set-logic HORN)
(define-fun Z_1849 () Int 0)
(define-fun S_410 ((x Int)) Int (+ x 1))
(declare-fun unS_609 (Int Int) Bool)
(declare-fun isZ_377 (Int) Bool)
(declare-fun isS_377 (Int) Bool)
(assert (forall ((x_53217 Int))
	(unS_609 x_53217 (S_410 x_53217))))
(assert (isZ_377 Z_1849))
(assert (forall ((x_53219 Int))
	(isS_377 (S_410 x_53219))))
(declare-fun add_327 (Int Int Int) Bool)
(declare-fun minus_324 (Int Int Int) Bool)
(declare-fun le_304 (Int Int) Bool)
(declare-fun ge_304 (Int Int) Bool)
(declare-fun lt_323 (Int Int) Bool)
(declare-fun gt_307 (Int Int) Bool)
(declare-fun mult_304 (Int Int Int) Bool)
(declare-fun div_304 (Int Int Int) Bool)
(declare-fun mod_306 (Int Int Int) Bool)
(assert (forall ((y_2081 Int))
	(add_327 y_2081 Z_1849 y_2081)))
(assert (forall ((x_53214 Int) (y_2081 Int) (r_374 Int))
	(=> (add_327 r_374 x_53214 y_2081) (add_327 (S_410 r_374) (S_410 x_53214) y_2081))))
(assert (forall ((y_2081 Int))
	(minus_324 Z_1849 Z_1849 y_2081)))
(assert (forall ((x_53214 Int) (y_2081 Int) (r_374 Int))
	(=> (minus_324 r_374 x_53214 y_2081) (minus_324 (S_410 r_374) (S_410 x_53214) y_2081))))
(assert (forall ((y_2081 Int))
	(le_304 Z_1849 y_2081)))
(assert (forall ((x_53214 Int) (y_2081 Int))
	(=> (le_304 x_53214 y_2081) (le_304 (S_410 x_53214) (S_410 y_2081)))))
(assert (forall ((y_2081 Int))
	(ge_304 y_2081 Z_1849)))
(assert (forall ((x_53214 Int) (y_2081 Int))
	(=> (ge_304 x_53214 y_2081) (ge_304 (S_410 x_53214) (S_410 y_2081)))))
(assert (forall ((y_2081 Int))
	(lt_323 Z_1849 (S_410 y_2081))))
(assert (forall ((x_53214 Int) (y_2081 Int))
	(=> (lt_323 x_53214 y_2081) (lt_323 (S_410 x_53214) (S_410 y_2081)))))
(assert (forall ((y_2081 Int))
	(gt_307 (S_410 y_2081) Z_1849)))
(assert (forall ((x_53214 Int) (y_2081 Int))
	(=> (gt_307 x_53214 y_2081) (gt_307 (S_410 x_53214) (S_410 y_2081)))))
(assert (forall ((y_2081 Int))
	(mult_304 Z_1849 Z_1849 y_2081)))
(assert (forall ((x_53214 Int) (y_2081 Int) (r_374 Int) (z_1850 Int))
	(=> (and (mult_304 r_374 x_53214 y_2081) (add_327 z_1850 r_374 y_2081)) (mult_304 z_1850 (S_410 x_53214) y_2081))))
(assert (forall ((x_53214 Int) (y_2081 Int))
	(=> (lt_323 x_53214 y_2081) (div_304 Z_1849 x_53214 y_2081))))
(assert (forall ((x_53214 Int) (y_2081 Int) (r_374 Int) (z_1850 Int))
	(=> (and (ge_304 x_53214 y_2081) (minus_324 z_1850 x_53214 y_2081) (div_304 r_374 z_1850 y_2081)) (div_304 (S_410 r_374) x_53214 y_2081))))
(assert (forall ((x_53214 Int) (y_2081 Int))
	(=> (lt_323 x_53214 y_2081) (mod_306 x_53214 x_53214 y_2081))))
(assert (forall ((x_53214 Int) (y_2081 Int) (r_374 Int) (z_1850 Int))
	(=> (and (ge_304 x_53214 y_2081) (minus_324 z_1850 x_53214 y_2081) (mod_306 r_374 z_1850 y_2081)) (mod_306 r_374 x_53214 y_2081))))
(declare-datatypes ((list_215 0)) (((nil_243) (cons_215 (head_430 Int) (tail_430 list_215)))))
(declare-fun diseqlist_215 (list_215 list_215) Bool)
(declare-fun head_431 (Int list_215) Bool)
(declare-fun tail_431 (list_215 list_215) Bool)
(declare-fun isnil_243 (list_215) Bool)
(declare-fun iscons_215 (list_215) Bool)
(assert (forall ((x_53225 Int) (x_53226 list_215))
	(head_431 x_53225 (cons_215 x_53225 x_53226))))
(assert (forall ((x_53225 Int) (x_53226 list_215))
	(tail_431 x_53226 (cons_215 x_53225 x_53226))))
(assert (isnil_243 nil_243))
(assert (forall ((x_53228 Int) (x_53229 list_215))
	(iscons_215 (cons_215 x_53228 x_53229))))
(assert (forall ((x_53230 Int) (x_53231 list_215))
	(diseqlist_215 nil_243 (cons_215 x_53230 x_53231))))
(assert (forall ((x_53232 Int) (x_53233 list_215))
	(diseqlist_215 (cons_215 x_53232 x_53233) nil_243)))
(assert (forall ((x_53234 Int) (x_53235 list_215) (x_53236 Int) (x_53237 list_215))
	(=> (distinct x_53234 x_53236) (diseqlist_215 (cons_215 x_53234 x_53235) (cons_215 x_53236 x_53237)))))
(assert (forall ((x_53234 Int) (x_53235 list_215) (x_53236 Int) (x_53237 list_215))
	(=> (diseqlist_215 x_53235 x_53237) (diseqlist_215 (cons_215 x_53234 x_53235) (cons_215 x_53236 x_53237)))))
(declare-datatypes ((Tree_8 0)) (((TNode_4 (projTNode_24 Tree_8) (projTNode_25 Int) (projTNode_26 Tree_8)) (TNil_4))))
(declare-fun diseqTree_8 (Tree_8 Tree_8) Bool)
(declare-fun projTNode_27 (Tree_8 Tree_8) Bool)
(declare-fun projTNode_28 (Int Tree_8) Bool)
(declare-fun projTNode_29 (Tree_8 Tree_8) Bool)
(declare-fun isTNode_4 (Tree_8) Bool)
(declare-fun isTNil_4 (Tree_8) Bool)
(assert (forall ((x_53238 Tree_8) (x_53239 Int) (x_53240 Tree_8))
	(projTNode_27 x_53238 (TNode_4 x_53238 x_53239 x_53240))))
(assert (forall ((x_53238 Tree_8) (x_53239 Int) (x_53240 Tree_8))
	(projTNode_28 x_53239 (TNode_4 x_53238 x_53239 x_53240))))
(assert (forall ((x_53238 Tree_8) (x_53239 Int) (x_53240 Tree_8))
	(projTNode_29 x_53240 (TNode_4 x_53238 x_53239 x_53240))))
(assert (forall ((x_53243 Tree_8) (x_53244 Int) (x_53245 Tree_8))
	(isTNode_4 (TNode_4 x_53243 x_53244 x_53245))))
(assert (isTNil_4 TNil_4))
(assert (forall ((x_53246 Tree_8) (x_53247 Int) (x_53248 Tree_8))
	(diseqTree_8 (TNode_4 x_53246 x_53247 x_53248) TNil_4)))
(assert (forall ((x_53249 Tree_8) (x_53250 Int) (x_53251 Tree_8))
	(diseqTree_8 TNil_4 (TNode_4 x_53249 x_53250 x_53251))))
(assert (forall ((x_53252 Tree_8) (x_53253 Int) (x_53254 Tree_8) (x_53255 Tree_8) (x_53256 Int) (x_53257 Tree_8))
	(=> (diseqTree_8 x_53252 x_53255) (diseqTree_8 (TNode_4 x_53252 x_53253 x_53254) (TNode_4 x_53255 x_53256 x_53257)))))
(assert (forall ((x_53252 Tree_8) (x_53253 Int) (x_53254 Tree_8) (x_53255 Tree_8) (x_53256 Int) (x_53257 Tree_8))
	(=> (distinct x_53253 x_53256) (diseqTree_8 (TNode_4 x_53252 x_53253 x_53254) (TNode_4 x_53255 x_53256 x_53257)))))
(assert (forall ((x_53252 Tree_8) (x_53253 Int) (x_53254 Tree_8) (x_53255 Tree_8) (x_53256 Int) (x_53257 Tree_8))
	(=> (diseqTree_8 x_53254 x_53257) (diseqTree_8 (TNode_4 x_53252 x_53253 x_53254) (TNode_4 x_53255 x_53256 x_53257)))))
(declare-fun flatten_9 (list_215 Tree_8 list_215) Bool)
(assert (forall ((x_53190 list_215))
	(flatten_9 x_53190 TNil_4 x_53190)))
(assert (forall ((x_53191 list_215) (x_53192 list_215) (p_379 Tree_8) (z_1846 Int) (q_123 Tree_8) (y_2077 list_215))
	(=> (and (flatten_9 x_53192 q_123 y_2077) (flatten_9 x_53191 p_379 (cons_215 z_1846 x_53192))) (flatten_9 x_53191 (TNode_4 p_379 z_1846 q_123) y_2077))))
(declare-fun count_34 (Int Int list_215) Bool)
(assert (forall ((x_53194 Int) (x_53195 Int) (ys_197 list_215) (x_53185 Int))
	(=> (and (count_34 x_53195 x_53185 ys_197) (add_327 x_53194 (S_410 Z_1849) x_53195)) (count_34 x_53194 x_53185 (cons_215 x_53185 ys_197)))))
(assert (forall ((x_53196 Int) (z_1847 Int) (ys_197 list_215) (x_53185 Int))
	(=> (and (distinct x_53185 z_1847) (count_34 x_53196 x_53185 ys_197)) (count_34 x_53196 x_53185 (cons_215 z_1847 ys_197)))))
(assert (forall ((x_53185 Int))
	(count_34 Z_1849 x_53185 nil_243)))
(declare-fun add_326 (Tree_8 Int Tree_8) Bool)
(assert (forall ((x_53186 Int))
	(add_326 (TNode_4 TNil_4 x_53186 TNil_4) x_53186 TNil_4)))
(assert (forall ((x_53201 Tree_8) (p_380 Tree_8) (z_1848 Int) (q_124 Tree_8) (x_53186 Int))
	(=> (and (le_304 x_53186 z_1848) (add_326 x_53201 x_53186 p_380)) (add_326 (TNode_4 x_53201 z_1848 q_124) x_53186 (TNode_4 p_380 z_1848 q_124)))))
(assert (forall ((x_53203 Tree_8) (p_380 Tree_8) (z_1848 Int) (q_124 Tree_8) (x_53186 Int))
	(=> (and (gt_307 x_53186 z_1848) (add_326 x_53203 x_53186 q_124)) (add_326 (TNode_4 p_380 z_1848 x_53203) x_53186 (TNode_4 p_380 z_1848 q_124)))))
(declare-fun toTree_4 (Tree_8 list_215) Bool)
(assert (forall ((x_53204 Tree_8) (x_53205 Tree_8) (y_2080 Int) (xs_596 list_215))
	(=> (and (toTree_4 x_53205 xs_596) (add_326 x_53204 y_2080 x_53205)) (toTree_4 x_53204 (cons_215 y_2080 xs_596)))))
(assert (toTree_4 TNil_4 nil_243))
(declare-fun tsort_4 (list_215 list_215) Bool)
(assert (forall ((x_53208 list_215) (x_53209 Tree_8) (x_53188 list_215))
	(=> (and (toTree_4 x_53209 x_53188) (flatten_9 x_53208 x_53209 nil_243)) (tsort_4 x_53208 x_53188))))
(assert (forall ((x_53211 list_215) (x_53212 Int) (x_53213 Int) (x_53189 Int) (xs_597 list_215))
	(=> (and (distinct x_53212 x_53213) (tsort_4 x_53211 xs_597) (count_34 x_53212 x_53189 x_53211) (count_34 x_53213 x_53189 xs_597)) false)))
(check-sat)
