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
 (let (($x164 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 232325) (- 0 237106))))))
 (let (($x176 (=> (and (= (ControlFlow 0 237049) 232325) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 237052) (not (=> (and (and SIV@0 (= (ControlFlow 0 237052) 237049)) (= (ControlFlow 0 237049) 232325) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(check-sat)
