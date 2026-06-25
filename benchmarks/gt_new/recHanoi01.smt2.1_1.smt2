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
(declare-fun counter () Int)
(declare-fun hanoi () Int)
(declare-fun applyHanoi () Int)
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
 (let ((?x23 (- 0 23732)))
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
 (= counter (- 0 1028)))
(assert
 (= hanoi (- 0 2060)))
(assert
 (= applyHanoi (- 0 3092)))
(assert
 (= main (- 0 4124)))
(assert
 (= __SMACK_code (- 0 5156)))
(assert
 (= __VERIFIER_assume (- 0 6188)))
(assert
 (= __SMACK_dummy (- 0 7220)))
(assert
 (= __VERIFIER_assert (- 0 8252)))
(assert
 (= __SMACK_and32 (- 0 9284)))
(assert
 (= __SMACK_and64 (- 0 10316)))
(assert
 (= __SMACK_and16 (- 0 11348)))
(assert
 (= __SMACK_and8 (- 0 12380)))
(assert
 (= __SMACK_or32 (- 0 13412)))
(assert
 (= __SMACK_or64 (- 0 14444)))
(assert
 (= __SMACK_or16 (- 0 15476)))
(assert
 (= __SMACK_or8 (- 0 16508)))
(assert
 (= __SMACK_check_overflow (- 0 17540)))
(assert
 (= __SMACK_loop_exit (- 0 18572)))
(assert
 (= __SMACK_decls (- 0 19604)))
(assert
 (= __SMACK_top_decl (- 0 20636)))
(assert
 (= __SMACK_init_func_memory_model (- 0 21668)))
(assert
 (= llvm.dbg.value (- 0 22700)))
(assert
 (let ((?x23 (- 0 23732)))
 (= __SMACK_static_init ?x23)))
(check-sat)
