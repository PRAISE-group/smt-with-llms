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
(declare-fun __const.main.inp_addrs () Int)
(declare-fun my_builtin_ctz () Int)
(declare-fun llvm.dbg.declare () Int)
(declare-fun main () Int)
(declare-fun llvm.memcpy.p0i8.p0i8.i64 () Int)
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
 (let ((?x25 (- 0 24774)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= __const.main.inp_addrs (- 0 1038)))
(assert
 (= my_builtin_ctz (- 0 2070)))
(assert
 (= llvm.dbg.declare (- 0 3102)))
(assert
 (= main (- 0 4134)))
(assert
 (= llvm.memcpy.p0i8.p0i8.i64 (- 0 5166)))
(assert
 (= __SMACK_code (- 0 6198)))
(assert
 (= __VERIFIER_assume (- 0 7230)))
(assert
 (= __SMACK_dummy (- 0 8262)))
(assert
 (= __VERIFIER_assert (- 0 9294)))
(assert
 (= __SMACK_and32 (- 0 10326)))
(assert
 (= __SMACK_and64 (- 0 11358)))
(assert
 (= __SMACK_and16 (- 0 12390)))
(assert
 (= __SMACK_and8 (- 0 13422)))
(assert
 (= __SMACK_or32 (- 0 14454)))
(assert
 (= __SMACK_or64 (- 0 15486)))
(assert
 (= __SMACK_or16 (- 0 16518)))
(assert
 (= __SMACK_or8 (- 0 17550)))
(assert
 (= __SMACK_check_overflow (- 0 18582)))
(assert
 (= __SMACK_loop_exit (- 0 19614)))
(assert
 (= __SMACK_decls (- 0 20646)))
(assert
 (= __SMACK_top_decl (- 0 21678)))
(assert
 (= __SMACK_init_func_memory_model (- 0 22710)))
(assert
 (= llvm.dbg.value (- 0 23742)))
(assert
 (let ((?x25 (- 0 24774)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x142 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 315435) (- 0 324886))))))
 (let (($x154 (=> (and (= (ControlFlow 0 324829) 315435) $x142) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 324832) (not (=> (and (and SIV@0 (= (ControlFlow 0 324832) 324829)) (= (ControlFlow 0 324829) 315435) $x142) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(check-sat)
