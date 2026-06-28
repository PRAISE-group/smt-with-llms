; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () Int)
(declare-fun $1 () Int)
(declare-fun $0.ref () Int)
(declare-fun $1.ref () Int)
(declare-fun $1024.ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun $and.i1 (Int Int) Int)
(declare-fun $or.i1 (Int Int) Int)
(declare-fun $xor.i1 (Int Int) Int)
(declare-fun $and.i32 (Int Int) Int)
(declare-fun q@.str () Int)
(declare-fun q@.str.1 () Int)
(declare-fun booth_int () Int)
(declare-fun main () Int)
(declare-fun printf () Int)
(declare-fun __SMACK_code () Int)
(declare-fun __VERIFIER_assume () Int)
(declare-fun __SMACK_dummy () Int)
(declare-fun __VERIFIER_assert () Int)
(declare-fun __SMACK_and32 () Int)
(declare-fun __SMACK_and64 () Int)
(declare-fun __SMACK_and16 () Int)
(declare-fun __SMACK_and8 () Int)
(declare-fun __SMACK_or32 () Int)
(declare-fun __SMACK_or64 () Int)
(declare-fun __SMACK_or16 () Int)
(declare-fun __SMACK_or8 () Int)
(declare-fun __SMACK_check_overflow () Int)
(declare-fun __SMACK_loop_exit () Int)
(declare-fun __SMACK_decls () Int)
(declare-fun __SMACK_top_decl () Int)
(declare-fun __SMACK_init_func_memory_model () Int)
(declare-fun llvm.dbg.value () Int)
(declare-fun __SMACK_static_init () Int)
(declare-fun SIV@3 () Bool)
(declare-fun SIV@2 () Bool)
(declare-fun SIV@4 () Int)
(declare-fun SIV@1 () Int)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@0 () Bool)
(declare-fun SIV@32 () Bool)
(declare-fun SIV@35 () Int)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@31 () Int)
(declare-fun SIV@28 () Int)
(declare-fun SIV@30 () Int)
(declare-fun SIV@27 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun SIV@29 () Int)
(declare-fun booth_int@@0 (Int Int) Int)
(declare-fun SIV@26 () Int)
(declare-fun SIV@23 () Int)
(declare-fun SIV@25 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@33 () Bool)
(declare-fun SIV@38 () Bool)
(declare-fun SIV@37 () Bool)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 0))
(assert
 (= $1 1))
(assert
 (= $0.ref 0))
(assert
 (= $1.ref 1))
(assert
 (= $1024.ref 1024))
(assert
 (let ((?x23 (- 0 24797)))
 (= $GLOBALS_BOTTOM ?x23)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= ($and.i1 0 0) 0))
(assert
 (= ($or.i1 0 0) 0))
(assert
 (= ($xor.i1 0 0) 0))
(assert
 (= ($and.i1 0 1) 0))
(assert
 (= ($or.i1 0 1) 1))
(assert
 (= ($xor.i1 0 1) 1))
(assert
 (= ($and.i1 1 0) 0))
(assert
 (= ($or.i1 1 0) 1))
(assert
 (= ($xor.i1 1 0) 1))
(assert
 (= ($and.i1 1 1) 1))
(assert
 (= ($or.i1 1 1) 1))
(assert
 (= ($xor.i1 1 1) 0))
(assert
 (= ($and.i32 32 16) 0))
(assert
 (= q@.str (- 0 1045)))
(assert
 (= q@.str.1 (- 0 2093)))
(assert
 (= booth_int (- 0 3125)))
(assert
 (= main (- 0 4157)))
(assert
 (= printf (- 0 5189)))
(assert
 (= __SMACK_code (- 0 6221)))
(assert
 (= __VERIFIER_assume (- 0 7253)))
(assert
 (= __SMACK_dummy (- 0 8285)))
(assert
 (= __VERIFIER_assert (- 0 9317)))
(assert
 (= __SMACK_and32 (- 0 10349)))
(assert
 (= __SMACK_and64 (- 0 11381)))
(assert
 (= __SMACK_and16 (- 0 12413)))
(assert
 (= __SMACK_and8 (- 0 13445)))
(assert
 (= __SMACK_or32 (- 0 14477)))
(assert
 (= __SMACK_or64 (- 0 15509)))
(assert
 (= __SMACK_or16 (- 0 16541)))
(assert
 (= __SMACK_or8 (- 0 17573)))
(assert
 (= __SMACK_check_overflow (- 0 18605)))
(assert
 (= __SMACK_loop_exit (- 0 19637)))
(assert
 (= __SMACK_decls (- 0 20669)))
(assert
 (= __SMACK_top_decl (- 0 21701)))
(assert
 (= __SMACK_init_func_memory_model (- 0 22733)))
(assert
 (= llvm.dbg.value (- 0 23765)))
(assert
 (let ((?x23 (- 0 24797)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 292210) (- 0 317176))))))
 (let (($x180 (=> (and (= (ControlFlow 0 317113) 292210) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 317116) (not (=> (and (and SIV@0 (= (ControlFlow 0 317116) 317113)) (= (ControlFlow 0 317113) 292210) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x204 (=> (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x208 (and true true)))
 (let (($x215 (=> (and (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x224 (and (= SIV@31 (ite (> SIV@28 0) 1 0)) (= (ControlFlow 1 292189) 292190))))
 (let (($x229 (=> (and (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x240 (=> (and (and (= SIV@30 1) (= (ControlFlow 1 292186) 292187)) (= (ControlFlow 1 292187) 292188) (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x248 (and (= SIV@30 (ite (> SIV@27 0) 1 0)) (= (ControlFlow 1 292185) 292186))))
 (let (($x268 (and (boogie_si_record_i32 SIV@29) (= (ControlFlow 1 292184) 292185))))
 (let (($x263 (and (boogie_si_record_i32 SIV@28) (= SIV@29 (booth_int@@0 3000 3000)))))
 (let (($x257 (and (boogie_si_record_i32 SIV@27) (= SIV@28 (booth_int@@0 2000 1000)))))
 (let (($x272 (=> (and (= SIV@27 (booth_int@@0 0 0)) $x257 (and $x263 $x268) $x248 (and (= SIV@30 1) (= (ControlFlow 1 292186) 292187)) (= (ControlFlow 1 292187) 292188) (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x283 (=> (and (and (= SIV@26 1) (= (ControlFlow 1 292182) 292183)) (= (ControlFlow 1 292183) 292184) (= SIV@27 (booth_int@@0 0 0)) $x257 (and $x263 $x268) $x248 (and (= SIV@30 1) (= (ControlFlow 1 292186) 292187)) (= (ControlFlow 1 292187) 292188) (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x291 (and (= SIV@26 (ite (>= SIV@23 0) 1 0)) (= (ControlFlow 1 292181) 292182))))
 (let (($x300 (=> (and (= (ControlFlow 1 292179) 292180) (= (ControlFlow 1 292180) 292181) $x291 (and (= SIV@26 1) (= (ControlFlow 1 292182) 292183)) (= (ControlFlow 1 292183) 292184) (= SIV@27 (booth_int@@0 0 0)) $x257 (and $x263 $x268) $x248 (and (= SIV@30 1) (= (ControlFlow 1 292186) 292187)) (= (ControlFlow 1 292187) 292188) (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x307 (=> (and (and (= SIV@25 1) (= (ControlFlow 1 292178) 292179)) (= (ControlFlow 1 292179) 292180) (= (ControlFlow 1 292180) 292181) $x291 (and (= SIV@26 1) (= (ControlFlow 1 292182) 292183)) (= (ControlFlow 1 292183) 292184) (= SIV@27 (booth_int@@0 0 0)) $x257 (and $x263 $x268) $x248 (and (= SIV@30 1) (= (ControlFlow 1 292186) 292187)) (= (ControlFlow 1 292187) 292188) (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x314 (and (= SIV@25 (ite (= SIV@23 0) 1 0)) (= (ControlFlow 1 292177) 292178))))
 (let (($x326 (and (boogie_si_record_i32 SIV@23) (= (ControlFlow 1 292176) 292177))))
 (let (($x321 (and (boogie_si_record_ref main) (= SIV@23 (booth_int@@0 1000 3000)))))
 (let (($x330 (=> (and true (and true SIV@33) (and $x321 $x326) $x314 (and (= SIV@25 1) (= (ControlFlow 1 292178) 292179)) (= (ControlFlow 1 292179) 292180) (= (ControlFlow 1 292180) 292181) $x291 (and (= SIV@26 1) (= (ControlFlow 1 292182) 292183)) (= (ControlFlow 1 292183) 292184) (= SIV@27 (booth_int@@0 0 0)) $x257 (and $x263 $x268) $x248 (and (= SIV@30 1) (= (ControlFlow 1 292186) 292187)) (= (ControlFlow 1 292187) 292188) (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (let (($x338 (=> (and (and true (= (ControlFlow 1 317235) 317232)) (= (ControlFlow 1 317232) 292176) true (and true SIV@33) (and $x321 $x326) $x314 (and (= SIV@25 1) (= (ControlFlow 1 292178) 292179)) (= (ControlFlow 1 292179) 292180) (= (ControlFlow 1 292180) 292181) $x291 (and (= SIV@26 1) (= (ControlFlow 1 292182) 292183)) (= (ControlFlow 1 292183) 292184) (= SIV@27 (booth_int@@0 0 0)) $x257 (and $x263 $x268) $x248 (and (= SIV@30 1) (= (ControlFlow 1 292186) 292187)) (= (ControlFlow 1 292187) 292188) (= (ControlFlow 1 292188) 292189) $x224 (not (= SIV@31 1)) (and $x208 (and SIV@34 (= (ControlFlow 1 292190) 292191))) (and (not SIV@32) (= (ControlFlow 1 292191) (- 0 317813)))) (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@32))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 317235) (not $x338))))))))))))))))))))))))
(assert
 (let (($x208 (and true true)))
 (let (($x355 (and $x208 (and SIV@38 (= (ControlFlow 2 291613) (- 0 317939))))))
 (let (($x362 (=> (and (= (ControlFlow 2 317900) 291613) true (and true SIV@37) $x355) false)))
 (let (($x368 (and (= (ControlFlow 2 0) 317902) (not (=> (and (and true (= (ControlFlow 2 317902) 317900)) (= (ControlFlow 2 317900) 291613) true (and true SIV@37) $x355) false)))))
 (=> SIV@33 $x368))))))
(assert
 (let (($x382 (=> (and (not false) (= (ControlFlow 3 291685) (- 0 318040))) (= SIV@32 (not false)))))
 (let (($x394 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 291683) 291684)) (and (= 0 $0) (= (ControlFlow 3 291684) 291685)) (and (not false) (= (ControlFlow 3 291685) (- 0 318040)))) (= SIV@32 (not false)))))
 (let (($x402 (=> (and (and true (= (ControlFlow 3 317970) 317967)) (= (ControlFlow 3 317967) 291683) (and (boogie_si_record_i32 0) (= (ControlFlow 3 291683) 291684)) (and (= 0 $0) (= (ControlFlow 3 291684) 291685)) (and (not false) (= (ControlFlow 3 291685) (- 0 318040)))) (= SIV@32 (not false)))))
 (=> SIV@34 (and (= (ControlFlow 3 0) 317970) (not $x402)))))))
(assert
 (let (($x419 (=> (and (= (ControlFlow 4 318056) 291561) (= (ControlFlow 4 291561) (- 0 318063))) false)))
 (let (($x425 (and (= (ControlFlow 4 0) 318058) (not (=> (and (and true (= (ControlFlow 4 318058) 318056)) (= (ControlFlow 4 318056) 291561) (= (ControlFlow 4 291561) (- 0 318063))) false)))))
 (=> SIV@37 $x425))))
(assert
 (let (($x440 (=> (and (= (ControlFlow 5 318071) 291601) (= (ControlFlow 5 291601) (- 0 318102))) false)))
 (let (($x446 (and (= (ControlFlow 5 0) 318073) (not (=> (and (and true (= (ControlFlow 5 318073) 318071)) (= (ControlFlow 5 318071) 291601) (= (ControlFlow 5 291601) (- 0 318102))) false)))))
 (=> SIV@38 $x446))))
(check-sat)
