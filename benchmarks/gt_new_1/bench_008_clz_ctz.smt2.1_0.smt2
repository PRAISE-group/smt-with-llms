; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () (_ BitVec 32))
(declare-fun $1 () (_ BitVec 32))
(declare-fun $0.ref () Int)
(declare-fun $1.ref () Int)
(declare-fun $1024.ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun my__builtin_clz () Int)
(declare-fun my__builtin_ctz () Int)
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
(declare-fun SIV@4 () (_ BitVec 32))
(declare-fun SIV@1 () (_ BitVec 32))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@0 () Bool)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@32 () (_ BitVec 32))
(declare-fun SIV@31 () Bool)
(declare-fun SIV@27 () (_ BitVec 1))
(declare-fun SIV@26 () (_ BitVec 32))
(declare-fun SIV@25 () (_ BitVec 32))
(declare-fun SIV@24 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun SIV@30 () Bool)
(declare-fun my__builtin_clz@@0 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV@23 () (_ BitVec 1))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@29 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@46 () (_ BitVec 1))
(declare-fun SIV@45 () (_ BitVec 32))
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 (_ bv0 32)))
(assert
 (= $1 (_ bv1 32)))
(assert
 (= $0.ref 0))
(assert
 (= $1.ref 1))
(assert
 (= $1024.ref 1024))
(assert
 (let ((?x25 (- 0 22704)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= my__builtin_clz (- 0 1032)))
(assert
 (= my__builtin_ctz (- 0 2064)))
(assert
 (= main (- 0 3096)))
(assert
 (= __SMACK_code (- 0 4128)))
(assert
 (= __VERIFIER_assume (- 0 5160)))
(assert
 (= __SMACK_dummy (- 0 6192)))
(assert
 (= __VERIFIER_assert (- 0 7224)))
(assert
 (= __SMACK_and32 (- 0 8256)))
(assert
 (= __SMACK_and64 (- 0 9288)))
(assert
 (= __SMACK_and16 (- 0 10320)))
(assert
 (= __SMACK_and8 (- 0 11352)))
(assert
 (= __SMACK_or32 (- 0 12384)))
(assert
 (= __SMACK_or64 (- 0 13416)))
(assert
 (= __SMACK_or16 (- 0 14448)))
(assert
 (= __SMACK_or8 (- 0 15480)))
(assert
 (= __SMACK_check_overflow (- 0 16512)))
(assert
 (= __SMACK_loop_exit (- 0 17544)))
(assert
 (= __SMACK_decls (- 0 18576)))
(assert
 (= __SMACK_top_decl (- 0 19608)))
(assert
 (= __SMACK_init_func_memory_model (- 0 20640)))
(assert
 (= llvm.dbg.value (- 0 21672)))
(assert
 (let ((?x25 (- 0 22704)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x134 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 390077) (- 0 426447))))))
 (let (($x146 (=> (and (= (ControlFlow 0 426384) 390077) $x134) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 426387) (not (=> (and (and SIV@0 (= (ControlFlow 0 426387) 426384)) (= (ControlFlow 0 426384) 390077) $x134) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x170 (=> (and (not SIV@28) (= (ControlFlow 1 390058) (- 0 426845))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x175 (and true true)))
 (let (($x182 (=> (and (and $x175 (and SIV@31 (= (ControlFlow 1 390057) 390058))) (and (not SIV@28) (= (ControlFlow 1 390058) (- 0 426845)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x197 (and (= SIV@27 (ite (bvsle SIV@26 (_ bv31 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390056) 390057))))
 (let (($x199 (=> (and (= SIV@26 (bvadd SIV@24 SIV@25)) $x197 (not (= SIV@27 (_ bv1 1))) (and $x175 (and SIV@31 (= (ControlFlow 1 390057) 390058))) (and (not SIV@28) (= (ControlFlow 1 390058) (- 0 426845)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x216 (and (boogie_si_record_bv32 SIV@25) (= (ControlFlow 1 390055) 390056))))
 (let (($x209 (and (and (not (= SIV@23 (_ bv1 1))) (= SIV@24 (my__builtin_clz@@0 $u0))) (and (boogie_si_record_bv32 SIV@24) true))))
 (let (($x229 (and (= SIV@23 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390054) 390055))))
 (let (($x231 (=> (and (and (and SIV@29 (boogie_si_record_ref main)) $x229) (and $x209 (and (and true SIV@30) $x216)) (= SIV@26 (bvadd SIV@24 SIV@25)) $x197 (not (= SIV@27 (_ bv1 1))) (and $x175 (and SIV@31 (= (ControlFlow 1 390057) 390058))) (and (not SIV@28) (= (ControlFlow 1 390058) (- 0 426845)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x240 (=> (and (and true (= (ControlFlow 1 426506) 426503)) (= (ControlFlow 1 426503) 390054) $x175 (and (and SIV@29 (boogie_si_record_ref main)) $x229) (and $x209 (and (and true SIV@30) $x216)) (= SIV@26 (bvadd SIV@24 SIV@25)) $x197 (not (= SIV@27 (_ bv1 1))) (and $x175 (and SIV@31 (= (ControlFlow 1 390057) 390058))) (and (not SIV@28) (= (ControlFlow 1 390058) (- 0 426845)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 426506) (not $x240))))))))))))))
(assert
 (let (($x175 (and true true)))
 (let (($x257 (and $x175 (and SIV@35 (= (ControlFlow 2 389563) (- 0 426970))))))
 (let (($x264 (=> (and (= (ControlFlow 2 426931) 389563) true (and true SIV@34) $x257) false)))
 (let (($x270 (and (= (ControlFlow 2 0) 426933) (not (=> (and (and true (= (ControlFlow 2 426933) 426931)) (= (ControlFlow 2 426931) 389563) true (and true SIV@34) $x257) false)))))
 (=> SIV@29 $x270))))))
(assert
 (let (($x284 (and (not (= SIV@46 (_ bv1 1))) (= (ControlFlow 3 389732) (- 0 427147)))))
 (let (($x297 (and (= SIV@46 (ite (= SIV@45 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 389731) 389732))))
 (let (($x299 (=> (and (= SIV@45 (bvand $u0 (_ bv1 32))) $x297 $x284) (not (= SIV@25 (_ bv0 32))))))
 (let (($x305 (=> (and (and (boogie_si_record_bv32 $u0) (= (ControlFlow 3 389730) 389731)) (= SIV@45 (bvand $u0 (_ bv1 32))) $x297 $x284) (not (= SIV@25 (_ bv0 32))))))
 (let (($x313 (=> (and (and true (= (ControlFlow 3 427002) 426998)) (= (ControlFlow 3 426998) 389730) (and (boogie_si_record_bv32 $u0) (= (ControlFlow 3 389730) 389731)) (= SIV@45 (bvand $u0 (_ bv1 32))) $x297 $x284) (not (= SIV@25 (_ bv0 32))))))
 (=> SIV@30 (and (= (ControlFlow 3 0) 427002) (not $x313)))))))))
(assert
 (let (($x329 (=> (and (not false) (= (ControlFlow 4 389804) (- 0 427259))) (= SIV@28 (not false)))))
 (let (($x341 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 389802) 389803)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 389803) 389804)) (and (not false) (= (ControlFlow 4 389804) (- 0 427259)))) (= SIV@28 (not false)))))
 (let (($x349 (=> (and (and true (= (ControlFlow 4 427189) 427186)) (= (ControlFlow 4 427186) 389802) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 389802) 389803)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 389803) 389804)) (and (not false) (= (ControlFlow 4 389804) (- 0 427259)))) (= SIV@28 (not false)))))
 (=> SIV@31 (and (= (ControlFlow 4 0) 427189) (not $x349)))))))
(assert
 (let (($x366 (=> (and (= (ControlFlow 5 427275) 389511) (= (ControlFlow 5 389511) (- 0 427282))) false)))
 (let (($x372 (and (= (ControlFlow 5 0) 427277) (not (=> (and (and true (= (ControlFlow 5 427277) 427275)) (= (ControlFlow 5 427275) 389511) (= (ControlFlow 5 389511) (- 0 427282))) false)))))
 (=> SIV@34 $x372))))
(assert
 (let (($x387 (=> (and (= (ControlFlow 6 427290) 389551) (= (ControlFlow 6 389551) (- 0 427321))) false)))
 (let (($x393 (and (= (ControlFlow 6 0) 427292) (not (=> (and (and true (= (ControlFlow 6 427292) 427290)) (= (ControlFlow 6 427290) 389551) (= (ControlFlow 6 389551) (- 0 427321))) false)))))
 (=> SIV@35 $x393))))
(check-sat)
