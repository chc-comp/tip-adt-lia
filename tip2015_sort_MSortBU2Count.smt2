(set-logic HORN)
(define-fun Z_1494 () Int 0)
(define-fun S_353 ((x Int)) Int (+ x 1))
(declare-fun unS_503 (Int Int) Bool)
(declare-fun isZ_324 (Int) Bool)
(declare-fun isS_324 (Int) Bool)
(assert (forall ((x_46366 Int))
	(unS_503 x_46366 (S_353 x_46366))))
(assert (isZ_324 Z_1494))
(assert (forall ((x_46368 Int))
	(isS_324 (S_353 x_46368))))
(declare-fun add_269 (Int Int Int) Bool)
(declare-fun minus_266 (Int Int Int) Bool)
(declare-fun le_251 (Int Int) Bool)
(declare-fun ge_251 (Int Int) Bool)
(declare-fun lt_267 (Int Int) Bool)
(declare-fun gt_254 (Int Int) Bool)
(declare-fun mult_251 (Int Int Int) Bool)
(declare-fun div_251 (Int Int Int) Bool)
(declare-fun mod_253 (Int Int Int) Bool)
(assert (forall ((y_1660 Int))
	(add_269 y_1660 Z_1494 y_1660)))
(assert (forall ((x_46363 Int) (y_1660 Int) (r_312 Int))
	(=> (add_269 r_312 x_46363 y_1660) (add_269 (S_353 r_312) (S_353 x_46363) y_1660))))
(assert (forall ((y_1660 Int))
	(minus_266 Z_1494 Z_1494 y_1660)))
(assert (forall ((x_46363 Int) (y_1660 Int) (r_312 Int))
	(=> (minus_266 r_312 x_46363 y_1660) (minus_266 (S_353 r_312) (S_353 x_46363) y_1660))))
(assert (forall ((y_1660 Int))
	(le_251 Z_1494 y_1660)))
(assert (forall ((x_46363 Int) (y_1660 Int))
	(=> (le_251 x_46363 y_1660) (le_251 (S_353 x_46363) (S_353 y_1660)))))
(assert (forall ((y_1660 Int))
	(ge_251 y_1660 Z_1494)))
(assert (forall ((x_46363 Int) (y_1660 Int))
	(=> (ge_251 x_46363 y_1660) (ge_251 (S_353 x_46363) (S_353 y_1660)))))
(assert (forall ((y_1660 Int))
	(lt_267 Z_1494 (S_353 y_1660))))
(assert (forall ((x_46363 Int) (y_1660 Int))
	(=> (lt_267 x_46363 y_1660) (lt_267 (S_353 x_46363) (S_353 y_1660)))))
(assert (forall ((y_1660 Int))
	(gt_254 (S_353 y_1660) Z_1494)))
(assert (forall ((x_46363 Int) (y_1660 Int))
	(=> (gt_254 x_46363 y_1660) (gt_254 (S_353 x_46363) (S_353 y_1660)))))
(assert (forall ((y_1660 Int))
	(mult_251 Z_1494 Z_1494 y_1660)))
(assert (forall ((x_46363 Int) (y_1660 Int) (r_312 Int) (z_1495 Int))
	(=> (and (mult_251 r_312 x_46363 y_1660) (add_269 z_1495 r_312 y_1660)) (mult_251 z_1495 (S_353 x_46363) y_1660))))
(assert (forall ((x_46363 Int) (y_1660 Int))
	(=> (lt_267 x_46363 y_1660) (div_251 Z_1494 x_46363 y_1660))))
(assert (forall ((x_46363 Int) (y_1660 Int) (r_312 Int) (z_1495 Int))
	(=> (and (ge_251 x_46363 y_1660) (minus_266 z_1495 x_46363 y_1660) (div_251 r_312 z_1495 y_1660)) (div_251 (S_353 r_312) x_46363 y_1660))))
(assert (forall ((x_46363 Int) (y_1660 Int))
	(=> (lt_267 x_46363 y_1660) (mod_253 x_46363 x_46363 y_1660))))
(assert (forall ((x_46363 Int) (y_1660 Int) (r_312 Int) (z_1495 Int))
	(=> (and (ge_251 x_46363 y_1660) (minus_266 z_1495 x_46363 y_1660) (mod_253 r_312 z_1495 y_1660)) (mod_253 r_312 x_46363 y_1660))))
(declare-datatypes ((list_181 0)) (((nil_206) (cons_181 (head_362 Int) (tail_362 list_181)))))
(declare-fun diseqlist_181 (list_181 list_181) Bool)
(declare-fun head_364 (Int list_181) Bool)
(declare-fun tail_364 (list_181 list_181) Bool)
(declare-fun isnil_206 (list_181) Bool)
(declare-fun iscons_181 (list_181) Bool)
(assert (forall ((x_46374 Int) (x_46375 list_181))
	(head_364 x_46374 (cons_181 x_46374 x_46375))))
(assert (forall ((x_46374 Int) (x_46375 list_181))
	(tail_364 x_46375 (cons_181 x_46374 x_46375))))
(assert (isnil_206 nil_206))
(assert (forall ((x_46377 Int) (x_46378 list_181))
	(iscons_181 (cons_181 x_46377 x_46378))))
(assert (forall ((x_46379 Int) (x_46380 list_181))
	(diseqlist_181 nil_206 (cons_181 x_46379 x_46380))))
(assert (forall ((x_46381 Int) (x_46382 list_181))
	(diseqlist_181 (cons_181 x_46381 x_46382) nil_206)))
(assert (forall ((x_46383 Int) (x_46384 list_181) (x_46385 Int) (x_46386 list_181))
	(=> (distinct x_46383 x_46385) (diseqlist_181 (cons_181 x_46383 x_46384) (cons_181 x_46385 x_46386)))))
(assert (forall ((x_46383 Int) (x_46384 list_181) (x_46385 Int) (x_46386 list_181))
	(=> (diseqlist_181 x_46384 x_46386) (diseqlist_181 (cons_181 x_46383 x_46384) (cons_181 x_46385 x_46386)))))
(declare-datatypes ((list_182 0)) (((nil_207) (cons_182 (head_363 list_181) (tail_363 list_182)))))
(declare-fun diseqlist_182 (list_182 list_182) Bool)
(declare-fun head_365 (list_181 list_182) Bool)
(declare-fun tail_365 (list_182 list_182) Bool)
(declare-fun isnil_207 (list_182) Bool)
(declare-fun iscons_182 (list_182) Bool)
(assert (forall ((x_46388 list_181) (x_46389 list_182))
	(head_365 x_46388 (cons_182 x_46388 x_46389))))
(assert (forall ((x_46388 list_181) (x_46389 list_182))
	(tail_365 x_46389 (cons_182 x_46388 x_46389))))
(assert (isnil_207 nil_207))
(assert (forall ((x_46391 list_181) (x_46392 list_182))
	(iscons_182 (cons_182 x_46391 x_46392))))
(assert (forall ((x_46393 list_181) (x_46394 list_182))
	(diseqlist_182 nil_207 (cons_182 x_46393 x_46394))))
(assert (forall ((x_46395 list_181) (x_46396 list_182))
	(diseqlist_182 (cons_182 x_46395 x_46396) nil_207)))
(assert (forall ((x_46397 list_181) (x_46398 list_182) (x_46399 list_181) (x_46400 list_182))
	(=> (diseqlist_181 x_46397 x_46399) (diseqlist_182 (cons_182 x_46397 x_46398) (cons_182 x_46399 x_46400)))))
(assert (forall ((x_46397 list_181) (x_46398 list_182) (x_46399 list_181) (x_46400 list_182))
	(=> (diseqlist_182 x_46398 x_46400) (diseqlist_182 (cons_182 x_46397 x_46398) (cons_182 x_46399 x_46400)))))
(declare-fun risers_3 (list_182 list_181) Bool)
(assert (forall ((ys_154 list_181) (yss_3 list_182) (y_1655 Int) (xs_494 list_181) (y_1654 Int))
	(=> (and (le_251 y_1654 y_1655) (risers_3 (cons_182 ys_154 yss_3) (cons_181 y_1655 xs_494))) (risers_3 (cons_182 (cons_181 y_1654 ys_154) yss_3) (cons_181 y_1654 (cons_181 y_1655 xs_494))))))
(assert (forall ((x_46329 list_182) (y_1655 Int) (xs_494 list_181) (y_1654 Int))
	(=> (and (gt_254 y_1654 y_1655) (risers_3 x_46329 (cons_181 y_1655 xs_494))) (risers_3 (cons_182 (cons_181 y_1654 nil_206) x_46329) (cons_181 y_1654 (cons_181 y_1655 xs_494))))))
(assert (forall ((y_1655 Int) (xs_494 list_181) (y_1654 Int))
	(=> (and (le_251 y_1654 y_1655) (risers_3 nil_207 (cons_181 y_1655 xs_494))) (risers_3 nil_207 (cons_181 y_1654 (cons_181 y_1655 xs_494))))))
(assert (forall ((x_46333 list_182) (y_1655 Int) (xs_494 list_181) (y_1654 Int))
	(=> (and (gt_254 y_1654 y_1655) (risers_3 x_46333 (cons_181 y_1655 xs_494))) (risers_3 (cons_182 (cons_181 y_1654 nil_206) x_46333) (cons_181 y_1654 (cons_181 y_1655 xs_494))))))
(assert (forall ((y_1654 Int))
	(risers_3 (cons_182 (cons_181 y_1654 nil_206) nil_207) (cons_181 y_1654 nil_206))))
(assert (risers_3 nil_207 nil_206))
(declare-fun lmerge_10 (list_181 list_181 list_181) Bool)
(assert (forall ((x_46337 list_181) (x_46318 Int) (x_46319 list_181) (z_1491 Int) (x_46317 list_181))
	(=> (and (le_251 z_1491 x_46318) (lmerge_10 x_46337 x_46317 (cons_181 x_46318 x_46319))) (lmerge_10 (cons_181 z_1491 x_46337) (cons_181 z_1491 x_46317) (cons_181 x_46318 x_46319)))))
(assert (forall ((x_46339 list_181) (x_46318 Int) (x_46319 list_181) (z_1491 Int) (x_46317 list_181))
	(=> (and (gt_254 z_1491 x_46318) (lmerge_10 x_46339 (cons_181 z_1491 x_46317) x_46319)) (lmerge_10 (cons_181 x_46318 x_46339) (cons_181 z_1491 x_46317) (cons_181 x_46318 x_46319)))))
(assert (forall ((z_1491 Int) (x_46317 list_181))
	(lmerge_10 (cons_181 z_1491 x_46317) (cons_181 z_1491 x_46317) nil_206)))
(assert (forall ((x_46341 list_181))
	(lmerge_10 x_46341 nil_206 x_46341)))
(declare-fun pairwise_3 (list_182 list_182) Bool)
(assert (forall ((x_46343 list_181) (x_46344 list_182) (ys_155 list_181) (xss_5 list_182) (xs_495 list_181))
	(=> (and (lmerge_10 x_46343 xs_495 ys_155) (pairwise_3 x_46344 xss_5)) (pairwise_3 (cons_182 x_46343 x_46344) (cons_182 xs_495 (cons_182 ys_155 xss_5))))))
(assert (forall ((xs_495 list_181))
	(pairwise_3 (cons_182 xs_495 nil_207) (cons_182 xs_495 nil_207))))
(assert (pairwise_3 nil_207 nil_207))
(declare-fun mergingbu_3 (list_181 list_182) Bool)
(assert (forall ((x_46347 list_181) (x_46348 list_182) (z_1492 list_181) (x_46322 list_182) (xs_496 list_181))
	(=> (and (pairwise_3 x_46348 (cons_182 xs_496 (cons_182 z_1492 x_46322))) (mergingbu_3 x_46347 x_46348)) (mergingbu_3 x_46347 (cons_182 xs_496 (cons_182 z_1492 x_46322))))))
(assert (forall ((x_46350 list_181))
	(mergingbu_3 x_46350 (cons_182 x_46350 nil_207))))
(assert (mergingbu_3 nil_206 nil_207))
(declare-fun msortbu_3 (list_181 list_181) Bool)
(assert (forall ((x_46352 list_181) (x_46353 list_182) (x_46323 list_181))
	(=> (and (risers_3 x_46353 x_46323) (mergingbu_3 x_46352 x_46353)) (msortbu_3 x_46352 x_46323))))
(declare-fun count_26 (Int Int list_181) Bool)
(assert (forall ((x_46355 Int) (x_46356 Int) (ys_156 list_181) (x_46324 Int))
	(=> (and (count_26 x_46356 x_46324 ys_156) (add_269 x_46355 (S_353 Z_1494) x_46356)) (count_26 x_46355 x_46324 (cons_181 x_46324 ys_156)))))
(assert (forall ((x_46357 Int) (z_1493 Int) (ys_156 list_181) (x_46324 Int))
	(=> (and (distinct x_46324 z_1493) (count_26 x_46357 x_46324 ys_156)) (count_26 x_46357 x_46324 (cons_181 z_1493 ys_156)))))
(assert (forall ((x_46324 Int))
	(count_26 Z_1494 x_46324 nil_206)))
(assert (forall ((x_46360 list_181) (x_46361 Int) (x_46362 Int) (x_46325 Int) (xs_497 list_181))
	(=> (and (distinct x_46361 x_46362) (msortbu_3 x_46360 xs_497) (count_26 x_46361 x_46325 x_46360) (count_26 x_46362 x_46325 xs_497)) false)))
(check-sat)
