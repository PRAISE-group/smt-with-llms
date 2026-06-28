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
(declare-fun bukin_int () Int)
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
(declare-fun SIV@26 () Bool)
(declare-fun SIV@29 () Int)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@25 () Int)
(declare-fun SIV@22 () Int)
(declare-fun SIV@23 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun bukin_int@@0 (Int Int) Int)
(declare-fun SIV@21 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@32 () Bool)
(declare-fun SIV@31 () Bool)
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
 (let ((?x23 (- 0 23766)))
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
 (= q@.str (- 0 1062)))
(assert
 (= bukin_int (- 0 2094)))
(assert
 (= main (- 0 3126)))
(assert
 (= printf (- 0 4158)))
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
 (= llvm.dbg.value (- 0 22734)))
(assert
 (let ((?x23 (- 0 23766)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 288753) (- 0 313644))))))
 (let (($x176 (=> (and (= (ControlFlow 0 313581) 288753) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 313584) (not (=> (and (and SIV@0 (= (ControlFlow 0 313584) 313581)) (= (ControlFlow 0 313581) 288753) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x200 (=> (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x204 (and true true)))
 (let (($x211 (=> (and (and $x204 (and SIV@28 (= (ControlFlow 1 288733) 288734))) (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x220 (and (= SIV@25 (ite (= SIV@22 0) 1 0)) (= (ControlFlow 1 288732) 288733))))
 (let (($x233 (and (= SIV@23 (- 0 10)) (= (ControlFlow 1 288731) 288732))))
 (let (($x227 (and (= SIV@22 (bukin_int@@0 (- 0 10) 1)) (boogie_si_record_i32 SIV@22))))
 (let (($x239 (=> (and (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV@25 1)) (and $x204 (and SIV@28 (= (ControlFlow 1 288733) 288734))) (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x246 (=> (and (and (= SIV@21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV@25 1)) (and $x204 (and SIV@28 (= (ControlFlow 1 288733) 288734))) (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x256 (and (= SIV@21 (ite (<= 1 3) 1 0)) (= (ControlFlow 1 288728) 288729))))
 (let (($x248 (= SIV@20 1)))
 (let (($x266 (and (= SIV@20 (ite (>= 1 (- 0 3)) 1 0)) (= (ControlFlow 1 288727) 288728))))
 (let (($x271 (=> (and (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV@21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV@25 1)) (and $x204 (and SIV@28 (= (ControlFlow 1 288733) 288734))) (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x282 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 288724) 288725)) (= (ControlFlow 1 288725) 288726) (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV@21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV@25 1)) (and $x204 (and SIV@28 (= (ControlFlow 1 288733) 288734))) (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x293 (and (= SIV@19 (ite (<= (- 0 10) (- 0 5)) 1 0)) (= (ControlFlow 1 288723) 288724))))
 (let (($x284 (= SIV@18 1)))
 (let (($x304 (and (= SIV@18 (ite (>= (- 0 10) (- 0 15)) 1 0)) (= (ControlFlow 1 288722) 288723))))
 (let (($x313 (and (and true SIV@27) (and (boogie_si_record_ref main) (= (ControlFlow 1 288721) 288722)))))
 (let (($x319 (=> (and (= (ControlFlow 1 313700) 288721) true $x313 $x304 $x284 $x293 (and (= SIV@19 1) (= (ControlFlow 1 288724) 288725)) (= (ControlFlow 1 288725) 288726) (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV@21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV@25 1)) (and $x204 (and SIV@28 (= (ControlFlow 1 288733) 288734))) (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x325 (and (= (ControlFlow 1 0) 313703) (not (=> (and (and true (= (ControlFlow 1 313703) 313700)) (= (ControlFlow 1 313700) 288721) true $x313 $x304 $x284 $x293 (and (= SIV@19 1) (= (ControlFlow 1 288724) 288725)) (= (ControlFlow 1 288725) 288726) (= (ControlFlow 1 288726) 288727) $x266 $x248 $x256 (and (= SIV@21 1) (= (ControlFlow 1 288729) 288730)) (= (ControlFlow 1 288730) 288731) (and $x227 $x233) $x220 (not (= SIV@25 1)) (and $x204 (and SIV@28 (= (ControlFlow 1 288733) 288734))) (and (not SIV@26) (= (ControlFlow 1 288734) (- 0 314226)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))))
 (=> SIV@5 $x325)))))))))))))))))))))
(assert
 (let (($x204 (and true true)))
 (let (($x340 (and $x204 (and SIV@32 (= (ControlFlow 2 288220) (- 0 314340))))))
 (let (($x347 (=> (and (= (ControlFlow 2 314301) 288220) true (and true SIV@31) $x340) false)))
 (let (($x353 (and (= (ControlFlow 2 0) 314303) (not (=> (and (and true (= (ControlFlow 2 314303) 314301)) (= (ControlFlow 2 314301) 288220) true (and true SIV@31) $x340) false)))))
 (=> SIV@27 $x353))))))
(assert
 (let (($x366 (=> (and (not false) (= (ControlFlow 3 288292) (- 0 314441))) (= SIV@26 (not false)))))
 (let (($x378 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 288290) 288291)) (and (= 0 $0) (= (ControlFlow 3 288291) 288292)) (and (not false) (= (ControlFlow 3 288292) (- 0 314441)))) (= SIV@26 (not false)))))
 (let (($x386 (=> (and (and true (= (ControlFlow 3 314371) 314368)) (= (ControlFlow 3 314368) 288290) (and (boogie_si_record_i32 0) (= (ControlFlow 3 288290) 288291)) (and (= 0 $0) (= (ControlFlow 3 288291) 288292)) (and (not false) (= (ControlFlow 3 288292) (- 0 314441)))) (= SIV@26 (not false)))))
 (=> SIV@28 (and (= (ControlFlow 3 0) 314371) (not $x386)))))))
(assert
 (let (($x403 (=> (and (= (ControlFlow 4 314457) 288168) (= (ControlFlow 4 288168) (- 0 314464))) false)))
 (let (($x409 (and (= (ControlFlow 4 0) 314459) (not (=> (and (and true (= (ControlFlow 4 314459) 314457)) (= (ControlFlow 4 314457) 288168) (= (ControlFlow 4 288168) (- 0 314464))) false)))))
 (=> SIV@31 $x409))))
(assert
 (let (($x423 (=> (and (= (ControlFlow 5 314472) 288208) (= (ControlFlow 5 288208) (- 0 314503))) false)))
 (let (($x429 (and (= (ControlFlow 5 0) 314474) (not (=> (and (and true (= (ControlFlow 5 314474) 314472)) (= (ControlFlow 5 314472) 288208) (= (ControlFlow 5 288208) (- 0 314503))) false)))))
 (=> SIV@32 $x429))))
(check-sat)
