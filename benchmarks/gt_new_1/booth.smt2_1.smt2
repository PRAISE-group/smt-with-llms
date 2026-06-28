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
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 234661) (- 0 239727))))))
 (let (($x180 (=> (and (= (ControlFlow 0 239670) 234661) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 239673) (not (=> (and (and SIV@0 (= (ControlFlow 0 239673) 239670)) (= (ControlFlow 0 239670) 234661) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(check-sat)
