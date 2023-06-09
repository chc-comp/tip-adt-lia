(set-logic HORN)
(define-fun Z_2022 () Int 0)
(define-fun S_459 ((x Int)) Int (+ x 1))
(define-fun Z_2019 () Int 0)
(define-fun S_458 ((x Int)) Int (+ x 1))
(declare-fun unS_671 (Int Int) Bool)
(declare-fun isZ_426 (Int) Bool)
(declare-fun isS_426 (Int) Bool)
(assert (forall ((x_55070 Int))
	(unS_671 x_55070 (S_459 x_55070))))
(assert (isZ_426 Z_2022))
(assert (forall ((x_55072 Int))
	(isS_426 (S_459 x_55072))))
(declare-fun add_361 (Int Int Int) Bool)
(declare-fun minus_356 (Int Int Int) Bool)
(declare-fun le_335 (Int Int) Bool)
(declare-fun ge_335 (Int Int) Bool)
(declare-fun lt_355 (Int Int) Bool)
(declare-fun gt_338 (Int Int) Bool)
(declare-fun mult_335 (Int Int Int) Bool)
(declare-fun div_335 (Int Int Int) Bool)
(declare-fun mod_337 (Int Int Int) Bool)
(assert (forall ((y_2257 Int))
	(add_361 y_2257 Z_2022 y_2257)))
(assert (forall ((x_55046 Int) (y_2257 Int) (r_408 Int))
	(=> (add_361 r_408 x_55046 y_2257) (add_361 (S_459 r_408) (S_459 x_55046) y_2257))))
(assert (forall ((y_2257 Int))
	(minus_356 Z_2022 Z_2022 y_2257)))
(assert (forall ((x_55046 Int) (y_2257 Int) (r_408 Int))
	(=> (minus_356 r_408 x_55046 y_2257) (minus_356 (S_459 r_408) (S_459 x_55046) y_2257))))
(assert (forall ((y_2257 Int))
	(le_335 Z_2022 y_2257)))
(assert (forall ((x_55046 Int) (y_2257 Int))
	(=> (le_335 x_55046 y_2257) (le_335 (S_459 x_55046) (S_459 y_2257)))))
(assert (forall ((y_2257 Int))
	(ge_335 y_2257 Z_2022)))
(assert (forall ((x_55046 Int) (y_2257 Int))
	(=> (ge_335 x_55046 y_2257) (ge_335 (S_459 x_55046) (S_459 y_2257)))))
(assert (forall ((y_2257 Int))
	(lt_355 Z_2022 (S_459 y_2257))))
(assert (forall ((x_55046 Int) (y_2257 Int))
	(=> (lt_355 x_55046 y_2257) (lt_355 (S_459 x_55046) (S_459 y_2257)))))
(assert (forall ((y_2257 Int))
	(gt_338 (S_459 y_2257) Z_2022)))
(assert (forall ((x_55046 Int) (y_2257 Int))
	(=> (gt_338 x_55046 y_2257) (gt_338 (S_459 x_55046) (S_459 y_2257)))))
(assert (forall ((y_2257 Int))
	(mult_335 Z_2022 Z_2022 y_2257)))
(assert (forall ((x_55046 Int) (y_2257 Int) (r_408 Int) (z_2023 Int))
	(=> (and (mult_335 r_408 x_55046 y_2257) (add_361 z_2023 r_408 y_2257)) (mult_335 z_2023 (S_459 x_55046) y_2257))))
(assert (forall ((x_55046 Int) (y_2257 Int))
	(=> (lt_355 x_55046 y_2257) (div_335 Z_2022 x_55046 y_2257))))
(assert (forall ((x_55046 Int) (y_2257 Int) (r_408 Int) (z_2023 Int))
	(=> (and (ge_335 x_55046 y_2257) (minus_356 z_2023 x_55046 y_2257) (div_335 r_408 z_2023 y_2257)) (div_335 (S_459 r_408) x_55046 y_2257))))
(assert (forall ((x_55046 Int) (y_2257 Int))
	(=> (lt_355 x_55046 y_2257) (mod_337 x_55046 x_55046 y_2257))))
(assert (forall ((x_55046 Int) (y_2257 Int) (r_408 Int) (z_2023 Int))
	(=> (and (ge_335 x_55046 y_2257) (minus_356 z_2023 x_55046 y_2257) (mod_337 r_408 z_2023 y_2257)) (mod_337 r_408 x_55046 y_2257))))
(declare-datatypes ((list_239 0)) (((nil_269) (cons_239 (head_478 Int) (tail_478 list_239)))))
(declare-fun diseqlist_239 (list_239 list_239) Bool)
(declare-fun head_479 (Int list_239) Bool)
(declare-fun tail_479 (list_239 list_239) Bool)
(declare-fun isnil_269 (list_239) Bool)
(declare-fun iscons_239 (list_239) Bool)
(assert (forall ((x_55048 Int) (x_55049 list_239))
	(head_479 x_55048 (cons_239 x_55048 x_55049))))
(assert (forall ((x_55048 Int) (x_55049 list_239))
	(tail_479 x_55049 (cons_239 x_55048 x_55049))))
(assert (isnil_269 nil_269))
(assert (forall ((x_55051 Int) (x_55052 list_239))
	(iscons_239 (cons_239 x_55051 x_55052))))
(assert (forall ((x_55053 Int) (x_55054 list_239))
	(diseqlist_239 nil_269 (cons_239 x_55053 x_55054))))
(assert (forall ((x_55055 Int) (x_55056 list_239))
	(diseqlist_239 (cons_239 x_55055 x_55056) nil_269)))
(assert (forall ((x_55057 Int) (x_55058 list_239) (x_55059 Int) (x_55060 list_239))
	(=> (distinct x_55057 x_55059) (diseqlist_239 (cons_239 x_55057 x_55058) (cons_239 x_55059 x_55060)))))
(assert (forall ((x_55057 Int) (x_55058 list_239) (x_55059 Int) (x_55060 list_239))
	(=> (diseqlist_239 x_55058 x_55060) (diseqlist_239 (cons_239 x_55057 x_55058) (cons_239 x_55059 x_55060)))))
(declare-fun projS_181 (Int Int) Bool)
(declare-fun isZ_425 (Int) Bool)
(declare-fun isS_425 (Int) Bool)
(assert (forall ((x_55062 Int))
	(projS_181 x_55062 (S_458 x_55062))))
(assert (isZ_425 Z_2019))
(assert (forall ((x_55064 Int))
	(isS_425 (S_458 x_55064))))
(declare-fun drop_54 (list_239 Int list_239) Bool)
(assert (forall ((x_55038 list_239) (x_55035 Int) (x_55036 list_239) (z_2020 Int))
	(=> (and (distinct (S_458 z_2020) 0) (drop_54 x_55038 z_2020 x_55036)) (drop_54 x_55038 (S_458 z_2020) (cons_239 x_55035 x_55036)))))
(assert (forall ((z_2020 Int))
	(=> (distinct (S_458 z_2020) 0) (drop_54 nil_269 (S_458 z_2020) nil_269))))
(assert (forall ((x_55041 list_239))
	(drop_54 x_55041 Z_2019 x_55041)))
(assert (forall ((x_55042 list_239) (x_55043 list_239) (x_55044 list_239) (x_55045 list_239) (x_55037 Int) (y_2256 Int) (z_2021 list_239))
	(=> (and (diseqlist_239 x_55043 x_55045) (drop_54 x_55042 y_2256 z_2021) (drop_54 x_55043 x_55037 x_55042) (drop_54 x_55044 x_55037 z_2021) (drop_54 x_55045 y_2256 x_55044)) false)))
(check-sat)
