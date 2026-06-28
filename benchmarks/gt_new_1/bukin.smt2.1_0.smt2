; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () Int)
(declare-fun $1 () Int)
(declare-fun $0_ref () Int)
(declare-fun $1_ref () Int)
(declare-fun $1024_ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun $and_i1 (Int Int) Int)
(declare-fun $or_i1 (Int Int) Int)
(declare-fun $xor_i1 (Int Int) Int)
(declare-fun $and_i32 (Int Int) Int)
(declare-fun q__str () Int)
(declare-fun bukin_int () Int)
(declare-fun main_ () Int)
(declare-fun printf_ () Int)
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
(declare-fun llvm_dbg_value () Int)
(declare-fun __SMACK_static_init () Int)
(declare-fun SIV_3 () Bool)
(declare-fun SIV_2 () Bool)
(declare-fun SIV_4 () Int)
(declare-fun SIV_1 () Int)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV_5 () Bool)
(declare-fun SIV_0 () Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_29 () Int)
(declare-fun SIV_28 () Bool)
(declare-fun SIV_25 () Int)
(declare-fun SIV_22 () Int)
(declare-fun SIV_23 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun bukin_int_cb (Int Int) Int)
(declare-fun SIV_21 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_19 () Int)
(declare-fun SIV_18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_32 () Bool)
(declare-fun SIV_31 () Bool)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 0))
(assert
 (= $1 1))
(assert
 (= $0_ref 0))
(assert
 (= $1_ref 1))
(assert
 (= $1024_ref 1024))
(assert
 (let ((?x23 (- 0 23766)))
 (= $GLOBALS_BOTTOM ?x23)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= ($and_i1 0 0) 0))
(assert
 (= ($or_i1 0 0) 0))
(assert
 (= ($xor_i1 0 0) 0))
(assert
 (= ($and_i1 0 1) 0))
(assert
 (= ($or_i1 0 1) 1))
(assert
 (= ($xor_i1 0 1) 1))
(assert
 (= ($and_i1 1 0) 0))
(assert
 (= ($or_i1 1 0) 1))
(assert
 (= ($xor_i1 1 0) 1))
(assert
 (= ($and_i1 1 1) 1))
(assert
 (= ($or_i1 1 1) 1))
(assert
 (= ($xor_i1 1 1) 0))
(assert
 (= ($and_i32 32 16) 0))
(assert
 (= q__str (- 0 1062)))
(assert
 (= bukin_int (- 0 2094)))
(assert
 (= main_ (- 0 3126)))
(assert
 (= printf_ (- 0 4158)))
(assert
 (= __SMACK_code (- 0 5190)))
(assert
 (= __VERIFIER_assume (- 0 6222)))
(assert
 (= __SMACK_dummy (- 0 7254)))
(assert
 (= __VERIFIER_assert (- 0 8286)))
(assert
 (= __SMACK_and32 (- 0 9318)))
(assert
 (= __SMACK_and64 (- 0 10350)))
(assert
 (= __SMACK_and16 (- 0 11382)))
(assert
 (= __SMACK_and8 (- 0 12414)))
(assert
 (= __SMACK_or32 (- 0 13446)))
(assert
 (= __SMACK_or64 (- 0 14478)))
(assert
 (= __SMACK_or16 (- 0 15510)))
(assert
 (= __SMACK_or8 (- 0 16542)))
(assert
 (= __SMACK_check_overflow (- 0 17574)))
(assert
 (= __SMACK_loop_exit (- 0 18606)))
(assert
 (= __SMACK_decls (- 0 19638)))
(assert
 (= __SMACK_top_decl (- 0 20670)))
(assert
 (= __SMACK_init_func_memory_model (- 0 21702)))
(assert
 (= llvm_dbg_value (- 0 22734)))
(assert
 (let ((?x23 (- 0 23766)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 288753) (- 0 313644))))))
 (let (($x176 (=> (and (= (ControlFlow 0 313581) 288753) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 313584) (not (=> (and (and SIV_0 (= (ControlFlow 0 313584) 313581)) (= (ControlFlow 0 313581) 288753) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x200 (=> (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x204 (and true true)))
 (let (($x211 (=> (and (and $x204 (and SIV_28 (= (ControlFlow 1 288733) 288734))) (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x220 (and (= SIV_25 (ite (= SIV_22 0) 1 0)) (= (ControlFlow 1 288732) 288733))))
 (let (($x233 (and (= SIV_23 (- 0 10)) (= (ControlFlow 1 288731) 288732))))
 (let (($x227 (and (= SIV_22 (bukin_int_cb (- 0 10) 1)) (boogie_si_record_i32 SIV_22))))
 (let (($x239 (=> (and (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV_25 1)) (and $x204 (and SIV_28 (= (ControlFlow 1 288733) 288734))) (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x246 (=> (and (and (= SIV_21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV_25 1)) (and $x204 (and SIV_28 (= (ControlFlow 1 288733) 288734))) (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x256 (and (= SIV_21 (ite (<= 1 3) 1 0)) (= (ControlFlow 1 288728) 288729))))
 (let (($x248 (= SIV_20 1)))
 (let (($x266 (and (= SIV_20 (ite (>= 1 (- 0 3)) 1 0)) (= (ControlFlow 1 288727) 288728))))
 (let (($x271 (=> (and (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV_21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV_25 1)) (and $x204 (and SIV_28 (= (ControlFlow 1 288733) 288734))) (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x282 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 288724) 288725)) (= (ControlFlow 1 288725) 288726) (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV_21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV_25 1)) (and $x204 (and SIV_28 (= (ControlFlow 1 288733) 288734))) (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x293 (and (= SIV_19 (ite (<= (- 0 10) (- 0 5)) 1 0)) (= (ControlFlow 1 288723) 288724))))
 (let (($x284 (= SIV_18 1)))
 (let (($x304 (and (= SIV_18 (ite (>= (- 0 10) (- 0 15)) 1 0)) (= (ControlFlow 1 288722) 288723))))
 (let (($x313 (and (and true SIV_27) (and (boogie_si_record_ref main_) (= (ControlFlow 1 288721) 288722)))))
 (let (($x319 (=> (and (= (ControlFlow 1 313700) 288721) true $x313 $x304 $x284 $x293 (and (= SIV_19 1) (= (ControlFlow 1 288724) 288725)) (= (ControlFlow 1 288725) 288726) (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV_21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV_25 1)) (and $x204 (and SIV_28 (= (ControlFlow 1 288733) 288734))) (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x325 (and (= (ControlFlow 1 0) 313703) (not (=> (and (and true (= (ControlFlow 1 313703) 313700)) (= (ControlFlow 1 313700) 288721) true $x313 $x304 $x284 $x293 (and (= SIV_19 1) (= (ControlFlow 1 288724) 288725)) (= (ControlFlow 1 288725) 288726) (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV_21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV_25 1)) (and $x204 (and SIV_28 (= (ControlFlow 1 288733) 288734))) (and (not SIV_26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))))
 (=> SIV_5 $x325)))))))))))))))))))))
(assert
 (let (($x204 (and true true)))
 (let (($x340 (and $x204 (and SIV_32 (= (ControlFlow 2 288220) (- 0 314340))))))
 (let (($x347 (=> (and (= (ControlFlow 2 314301) 288220) true (and true SIV_31) $x340) false)))
 (let (($x353 (and (= (ControlFlow 2 0) 314303) (not (=> (and (and true (= (ControlFlow 2 314303) 314301)) (= (ControlFlow 2 314301) 288220) true (and true SIV_31) $x340) false)))))
 (=> SIV_27 $x353))))))
(assert
 (let (($x366 (=> (and (not false) (= (ControlFlow 3 288292) (- 0 314441))) (= SIV_26 (not false)))))
 (let (($x378 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 288290) 288291)) (and (= 0 $0) (= (ControlFlow 3 288291) 288292)) (and (not false) (= (ControlFlow 3 288292) (- 0 314441)))) (= SIV_26 (not false)))))
 (let (($x386 (=> (and (and true (= (ControlFlow 3 314371) 314368)) (= (ControlFlow 3 314368) 288290) (and (boogie_si_record_i32 0) (= (ControlFlow 3 288290) 288291)) (and (= 0 $0) (= (ControlFlow 3 288291) 288292)) (and (not false) (= (ControlFlow 3 288292) (- 0 314441)))) (= SIV_26 (not false)))))
 (=> SIV_28 (and (= (ControlFlow 3 0) 314371) (not $x386)))))))
(assert
 (let (($x403 (=> (and (= (ControlFlow 4 314457) 288168) (= (ControlFlow 4 288168) (- 0 314464))) false)))
 (let (($x409 (and (= (ControlFlow 4 0) 314459) (not (=> (and (and true (= (ControlFlow 4 314459) 314457)) (= (ControlFlow 4 314457) 288168) (= (ControlFlow 4 288168) (- 0 314464))) false)))))
 (=> SIV_31 $x409))))
(assert
 (let (($x423 (=> (and (= (ControlFlow 5 314472) 288208) (= (ControlFlow 5 288208) (- 0 314503))) false)))
 (let (($x429 (and (= (ControlFlow 5 0) 314474) (not (=> (and (and true (= (ControlFlow 5 314474) 314472)) (= (ControlFlow 5 314472) 288208) (= (ControlFlow 5 288208) (- 0 314503))) false)))))
 (=> SIV_32 $x429))))
(check-sat)
