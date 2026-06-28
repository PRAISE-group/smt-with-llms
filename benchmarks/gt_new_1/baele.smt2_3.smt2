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
(declare-fun beale_int () Int)
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
(declare-fun SIV@41 () Bool)
(declare-fun SIV@40 () Int)
(declare-fun SIV@38 () Bool)
(declare-fun SIV@37 () Bool)
(declare-fun SIV@48 () Int)
(declare-fun SIV@47 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@36 () Int)
(declare-fun SIV@29 () Int)
(declare-fun SIV@28 () Int)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@46 () Bool)
(declare-fun SIV@32 () Bool)
(declare-fun SIV@33 () Int)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@45 () Bool)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@30 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun beale_int@@0 (Int Int) Int)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@44 () Bool)
(declare-fun SIV@24 () Bool)
(declare-fun SIV@25 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@43 () Bool)
(declare-fun SIV@22 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@42 () Bool)
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
 (let ((?x23 (- 0 24800)))
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
 (= q@.str (- 0 1048)))
(assert
 (= q@.str.1 (- 0 2096)))
(assert
 (= beale_int (- 0 3128)))
(assert
 (= main (- 0 4160)))
(assert
 (= printf (- 0 5192)))
(assert
 (= __SMACK_code (- 0 6224)))
(assert
 (= __VERIFIER_assume (- 0 7256)))
(assert
 (= __SMACK_dummy (- 0 8288)))
(assert
 (= __VERIFIER_assert (- 0 9320)))
(assert
 (= __SMACK_and32 (- 0 10352)))
(assert
 (= __SMACK_and64 (- 0 11384)))
(assert
 (= __SMACK_and16 (- 0 12416)))
(assert
 (= __SMACK_and8 (- 0 13448)))
(assert
 (= __SMACK_or32 (- 0 14480)))
(assert
 (= __SMACK_or64 (- 0 15512)))
(assert
 (= __SMACK_or16 (- 0 16544)))
(assert
 (= __SMACK_or8 (- 0 17576)))
(assert
 (= __SMACK_check_overflow (- 0 18608)))
(assert
 (= __SMACK_loop_exit (- 0 19640)))
(assert
 (= __SMACK_decls (- 0 20672)))
(assert
 (= __SMACK_top_decl (- 0 21704)))
(assert
 (= __SMACK_init_func_memory_model (- 0 22736)))
(assert
 (= llvm.dbg.value (- 0 23768)))
(assert
 (let ((?x23 (- 0 24800)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 232564) (- 0 237369))))))
 (let (($x180 (=> (and (= (ControlFlow 0 237312) 232564) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 237315) (not (=> (and (and SIV@0 (= (ControlFlow 0 237315) 237312)) (= (ControlFlow 0 237312) 232564) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x327 (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@41)))))
 (let (($x328 (=> (= (ControlFlow 1 237427) (- 0 238249)) $x327)))
 (let (($x336 (=> (and (and (= SIV@41 SIV@38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x341 (=> (and (= (ControlFlow 1 232008) 232013) (= SIV@40 0) (and (= SIV@41 SIV@38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x348 (=> (and (and (= SIV@38 SIV@37) (= (ControlFlow 1 232012) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV@40 0) (and (= SIV@41 SIV@38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x385 (=> (and (= (ControlFlow 1 232009) 232011) (and SIV@37 (= (ControlFlow 1 232011) 232012)) (and (= SIV@38 SIV@37) (= (ControlFlow 1 232012) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV@40 0) (and (= SIV@41 SIV@38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x373 (and (and (not SIV@37) (= SIV@40 SIV@48)) (and (= SIV@41 SIV@37) (= (ControlFlow 1 232010) 237427)))))
 (let (($x387 (=> (and (and (not (= SIV@36 1)) SIV@35) (and true SIV@47)) (and (=> (and (= (ControlFlow 1 232009) 232010) $x373 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x385))))
 (let (($x362 (=> (and (and (= SIV@38 SIV@35) (= (ControlFlow 1 232007) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV@40 0) (and (= SIV@41 SIV@38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x355 (= SIV@36 1)))
 (let (($x400 (and (=> (and (= (ControlFlow 1 232006) 232007) $x355 (and (= SIV@38 SIV@35) (= (ControlFlow 1 232007) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV@40 0) (and (= SIV@41 SIV@38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327) (=> (and (= (ControlFlow 1 232006) 232009) (and (and (not $x355) SIV@35) (and true SIV@47))) (and (=> (and (= (ControlFlow 1 232009) 232010) $x373 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x385)))))
 (let (($x405 (=> (and (= (ControlFlow 1 232005) 232006) (= SIV@36 (ite (not (= SIV@28 SIV@29)) 1 0))) $x400)))
 (let (($x409 (=> (and (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV@36 (ite (not (= SIV@28 SIV@29)) 1 0))) $x400)))
 (let (($x416 (=> (and (and (= SIV@35 SIV@34) (= (ControlFlow 1 232004) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV@36 (ite (not (= SIV@28 SIV@29)) 1 0))) $x400)))
 (let (($x451 (=> (and (= (ControlFlow 1 232001) 232003) (and SIV@34 (= (ControlFlow 1 232003) 232004)) (and (= SIV@35 SIV@34) (= (ControlFlow 1 232004) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV@36 (ite (not (= SIV@28 SIV@29)) 1 0))) $x400)))
 (let (($x439 (and (and (not SIV@34) (= SIV@40 SIV@48)) (and (= SIV@41 SIV@34) (= (ControlFlow 1 232002) 237427)))))
 (let (($x453 (=> (and (and (not (= SIV@33 1)) SIV@32) (and true SIV@46)) (and (=> (and (= (ControlFlow 1 232001) 232002) $x439 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x451))))
 (let (($x430 (=> (and (and (= SIV@35 SIV@32) (= (ControlFlow 1 231999) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV@36 (ite (not (= SIV@28 SIV@29)) 1 0))) $x400)))
 (let (($x423 (= SIV@33 1)))
 (let (($x463 (and (=> (and (= (ControlFlow 1 231998) 231999) $x423 (and (= SIV@35 SIV@32) (= (ControlFlow 1 231999) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV@36 (ite (not (= SIV@28 SIV@29)) 1 0))) $x400) (=> (and (= (ControlFlow 1 231998) 232001) (and (and (not $x423) SIV@32) (and true SIV@46))) (and (=> (and (= (ControlFlow 1 232001) 232002) $x439 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x451)))))
 (let (($x468 (=> (and (= (ControlFlow 1 231997) 231998) (= SIV@33 (ite (> SIV@29 0) 1 0))) $x463)))
 (let (($x472 (=> (and (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV@33 (ite (> SIV@29 0) 1 0))) $x463)))
 (let (($x479 (=> (and (and (= SIV@32 SIV@31) (= (ControlFlow 1 231996) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV@33 (ite (> SIV@29 0) 1 0))) $x463)))
 (let (($x514 (=> (and (= (ControlFlow 1 231993) 231995) (and SIV@31 (= (ControlFlow 1 231995) 231996)) (and (= SIV@32 SIV@31) (= (ControlFlow 1 231996) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV@33 (ite (> SIV@29 0) 1 0))) $x463)))
 (let (($x502 (and (and (not SIV@31) (= SIV@40 SIV@48)) (and (= SIV@41 SIV@31) (= (ControlFlow 1 231994) 237427)))))
 (let (($x516 (=> (and (and (not (= SIV@30 1)) SIV@27) (and true SIV@45)) (and (=> (and (= (ControlFlow 1 231993) 231994) $x502 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x514))))
 (let (($x493 (=> (and (and (= SIV@32 SIV@27) (= (ControlFlow 1 231991) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV@33 (ite (> SIV@29 0) 1 0))) $x463)))
 (let (($x486 (= SIV@30 1)))
 (let (($x526 (and (=> (and (= (ControlFlow 1 231990) 231991) $x486 (and (= SIV@32 SIV@27) (= (ControlFlow 1 231991) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV@33 (ite (> SIV@29 0) 1 0))) $x463) (=> (and (= (ControlFlow 1 231990) 231993) (and (and (not $x486) SIV@27) (and true SIV@45))) (and (=> (and (= (ControlFlow 1 231993) 231994) $x502 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x514)))))
 (let (($x540 (and (boogie_si_record_i32 SIV@29) (= (ControlFlow 1 231989) 231990))))
 (let (($x535 (and (boogie_si_record_i32 SIV@28) (= SIV@29 (beale_int@@0 2000 2000)))))
 (let (($x542 (=> (and (and $x535 $x540) (= SIV@30 (ite (> SIV@28 0) 1 0))) $x526)))
 (let (($x547 (=> (and (= (ControlFlow 1 231984) 231989) (= SIV@28 (beale_int@@0 1000 1000)) (and $x535 $x540) (= SIV@30 (ite (> SIV@28 0) 1 0))) $x526)))
 (let (($x554 (=> (and (and (= SIV@27 SIV@26) (= (ControlFlow 1 231988) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV@28 (beale_int@@0 1000 1000)) (and $x535 $x540) (= SIV@30 (ite (> SIV@28 0) 1 0))) $x526)))
 (let (($x589 (=> (and (= (ControlFlow 1 231985) 231987) (and SIV@26 (= (ControlFlow 1 231987) 231988)) (and (= SIV@27 SIV@26) (= (ControlFlow 1 231988) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV@28 (beale_int@@0 1000 1000)) (and $x535 $x540) (= SIV@30 (ite (> SIV@28 0) 1 0))) $x526)))
 (let (($x577 (and (and (not SIV@26) (= SIV@40 SIV@48)) (and (= SIV@41 SIV@26) (= (ControlFlow 1 231986) 237427)))))
 (let (($x591 (=> (and (and (not (= SIV@25 1)) SIV@24) (and true SIV@44)) (and (=> (and (= (ControlFlow 1 231985) 231986) $x577 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x589))))
 (let (($x568 (=> (and (and (= SIV@27 SIV@24) (= (ControlFlow 1 231983) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV@28 (beale_int@@0 1000 1000)) (and $x535 $x540) (= SIV@30 (ite (> SIV@28 0) 1 0))) $x526)))
 (let (($x561 (= SIV@25 1)))
 (let (($x603 (and (=> (and (= (ControlFlow 1 231982) 231983) $x561 (and (= SIV@27 SIV@24) (= (ControlFlow 1 231983) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV@28 (beale_int@@0 1000 1000)) (and $x535 $x540) (= SIV@30 (ite (> SIV@28 0) 1 0))) $x526) (=> (and (= (ControlFlow 1 231982) 231985) (and (and (not $x561) SIV@24) (and true SIV@44))) (and (=> (and (= (ControlFlow 1 231985) 231986) $x577 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x589)))))
 (let (($x608 (=> (and (= (ControlFlow 1 231981) 231982) (= SIV@25 (ite (< SIV@20 10) 1 0))) $x603)))
 (let (($x612 (=> (and (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV@25 (ite (< SIV@20 10) 1 0))) $x603)))
 (let (($x619 (=> (and (and (= SIV@24 SIV@23) (= (ControlFlow 1 231980) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV@25 (ite (< SIV@20 10) 1 0))) $x603)))
 (let (($x653 (=> (and (= (ControlFlow 1 231977) 231979) (and SIV@23 (= (ControlFlow 1 231979) 231980)) (and (= SIV@24 SIV@23) (= (ControlFlow 1 231980) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV@25 (ite (< SIV@20 10) 1 0))) $x603)))
 (let (($x641 (and (and (not SIV@23) (= SIV@40 SIV@48)) (and (= SIV@41 SIV@23) (= (ControlFlow 1 231978) 237427)))))
 (let (($x655 (=> (and (and (not (= SIV@22 1)) true) (and true SIV@43)) (and (=> (and (= (ControlFlow 1 231977) 231978) $x641 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x653))))
 (let (($x632 (=> (and (and (= SIV@24 true) (= (ControlFlow 1 231975) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV@25 (ite (< SIV@20 10) 1 0))) $x603)))
 (let (($x626 (= SIV@22 1)))
 (let (($x665 (and (=> (and (= (ControlFlow 1 231974) 231975) $x626 (and (= SIV@24 true) (= (ControlFlow 1 231975) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV@25 (ite (< SIV@20 10) 1 0))) $x603) (=> (and (= (ControlFlow 1 231974) 231977) (and (and (not $x626) true) (and true SIV@43))) (and (=> (and (= (ControlFlow 1 231977) 231978) $x641 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x653)))))
 (let (($x679 (and (boogie_si_record_i32 SIV@20) (= (ControlFlow 1 231973) 231974))))
 (let (($x674 (and (boogie_si_record_ref main) (= SIV@20 (beale_int@@0 3000 500)))))
 (let (($x681 (=> (and (and $x674 $x679) (= SIV@22 (ite (>= SIV@20 0) 1 0))) $x665)))
 (let (($x687 (=> (and (= (ControlFlow 1 237425) 231973) true (and true SIV@42) (and $x674 $x679) (= SIV@22 (ite (>= SIV@20 0) 1 0))) $x665)))
 (let (($x693 (and (= (ControlFlow 1 0) 237436) (not (=> (and (and true (= (ControlFlow 1 237436) 237425)) (= (ControlFlow 1 237425) 231973) true (and true SIV@42) (and $x674 $x679) (= SIV@22 (ite (>= SIV@20 0) 1 0))) $x665)))))
 (=> SIV@5 $x693))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
