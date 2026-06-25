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
(declare-fun id () Int)
(declare-fun main () Int)
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
(declare-fun SIV@14 () Bool)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Bool)
(declare-fun SIV@13 () Int)
(declare-fun SIV@12 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun id@@0 (Int) Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@15 () Bool)
(declare-fun SIV@20 () Bool)
(declare-fun SIV@19 () Bool)
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
 (let ((?x23 (- 0 21672)))
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
 (= id (- 0 1032)))
(assert
 (= main (- 0 2064)))
(assert
 (= __SMACK_code (- 0 3096)))
(assert
 (= __VERIFIER_assume (- 0 4128)))
(assert
 (= __SMACK_dummy (- 0 5160)))
(assert
 (= __VERIFIER_assert (- 0 6192)))
(assert
 (= __SMACK_and32 (- 0 7224)))
(assert
 (= __SMACK_and64 (- 0 8256)))
(assert
 (= __SMACK_and16 (- 0 9288)))
(assert
 (= __SMACK_and8 (- 0 10320)))
(assert
 (= __SMACK_or32 (- 0 11352)))
(assert
 (= __SMACK_or64 (- 0 12384)))
(assert
 (= __SMACK_or16 (- 0 13416)))
(assert
 (= __SMACK_or8 (- 0 14448)))
(assert
 (= __SMACK_check_overflow (- 0 15480)))
(assert
 (= __SMACK_loop_exit (- 0 16512)))
(assert
 (= __SMACK_decls (- 0 17544)))
(assert
 (= __SMACK_top_decl (- 0 18576)))
(assert
 (= __SMACK_init_func_memory_model (- 0 19608)))
(assert
 (= llvm.dbg.value (- 0 20640)))
(assert
 (let ((?x23 (- 0 21672)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 281566) (- 0 306040))))))
 (let (($x168 (=> (and (= (ControlFlow 0 305977) 281566) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 305980) (not (=> (and (and SIV@0 (= (ControlFlow 0 305980) 305977)) (= (ControlFlow 0 305977) 281566) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x192 (=> (and (not SIV@14) (= (ControlFlow 1 281547) (- 0 306297))) (not (and (= SIV@4 SIV@17) (= SIV@3 SIV@14))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV@16 (= (ControlFlow 1 281546) 281547))) (and (not SIV@14) (= (ControlFlow 1 281547) (- 0 306297)))) (not (and (= SIV@4 SIV@17) (= SIV@3 SIV@14))))))
 (let (($x207 (=> (and (and (= SIV@13 1) (= (ControlFlow 1 281545) 281546)) (and $x193 (and SIV@16 (= (ControlFlow 1 281546) 281547))) (and (not SIV@14) (= (ControlFlow 1 281547) (- 0 306297)))) (not (and (= SIV@4 SIV@17) (= SIV@3 SIV@14))))))
 (let (($x225 (and (= SIV@13 (ite (not (= SIV@12 5)) 1 0)) (= (ControlFlow 1 281544) 281545))))
 (let (($x226 (and (and (= SIV@12 (id@@0 5)) (boogie_si_record_i32 SIV@12)) $x225)))
 (let (($x228 (=> (and (and (and $x193 (and SIV@15 (boogie_si_record_ref main))) $x226) (and (= SIV@13 1) (= (ControlFlow 1 281545) 281546)) (and $x193 (and SIV@16 (= (ControlFlow 1 281546) 281547))) (and (not SIV@14) (= (ControlFlow 1 281547) (- 0 306297)))) (not (and (= SIV@4 SIV@17) (= SIV@3 SIV@14))))))
 (let (($x236 (=> (and (and true (= (ControlFlow 1 306099) 306096)) (= (ControlFlow 1 306096) 281544) (and (and $x193 (and SIV@15 (boogie_si_record_ref main))) $x226) (and (= SIV@13 1) (= (ControlFlow 1 281545) 281546)) (and $x193 (and SIV@16 (= (ControlFlow 1 281546) 281547))) (and (not SIV@14) (= (ControlFlow 1 281547) (- 0 306297)))) (not (and (= SIV@4 SIV@17) (= SIV@3 SIV@14))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 306099) (not $x236))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x253 (and $x193 (and SIV@20 (= (ControlFlow 2 281340) (- 0 306387))))))
 (let (($x260 (=> (and (= (ControlFlow 2 306348) 281340) true (and true SIV@19) $x253) false)))
 (let (($x266 (and (= (ControlFlow 2 0) 306350) (not (=> (and (and true (= (ControlFlow 2 306350) 306348)) (= (ControlFlow 2 306348) 281340) true (and true SIV@19) $x253) false)))))
 (=> SIV@15 $x266))))))
(assert
 (let (($x280 (=> (and (not false) (= (ControlFlow 3 281412) (- 0 306488))) (= SIV@14 (not false)))))
 (let (($x292 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 281410) 281411)) (and (= 0 $0) (= (ControlFlow 3 281411) 281412)) (and (not false) (= (ControlFlow 3 281412) (- 0 306488)))) (= SIV@14 (not false)))))
 (let (($x300 (=> (and (and true (= (ControlFlow 3 306418) 306415)) (= (ControlFlow 3 306415) 281410) (and (boogie_si_record_i32 0) (= (ControlFlow 3 281410) 281411)) (and (= 0 $0) (= (ControlFlow 3 281411) 281412)) (and (not false) (= (ControlFlow 3 281412) (- 0 306488)))) (= SIV@14 (not false)))))
 (=> SIV@16 (and (= (ControlFlow 3 0) 306418) (not $x300)))))))
(assert
 (let (($x317 (=> (and (= (ControlFlow 4 306504) 281288) (= (ControlFlow 4 281288) (- 0 306511))) false)))
 (let (($x323 (and (= (ControlFlow 4 0) 306506) (not (=> (and (and true (= (ControlFlow 4 306506) 306504)) (= (ControlFlow 4 306504) 281288) (= (ControlFlow 4 281288) (- 0 306511))) false)))))
 (=> SIV@19 $x323))))
(assert
 (let (($x337 (=> (and (= (ControlFlow 5 306519) 281328) (= (ControlFlow 5 281328) (- 0 306550))) false)))
 (let (($x343 (and (= (ControlFlow 5 0) 306521) (not (=> (and (and true (= (ControlFlow 5 306521) 306519)) (= (ControlFlow 5 306519) 281328) (= (ControlFlow 5 281328) (- 0 306550))) false)))))
 (=> SIV@20 $x343))))
(check-sat)
