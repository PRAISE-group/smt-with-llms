; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () (_ BitVec 32))
(declare-fun $1 () (_ BitVec 32))
(declare-fun $0_ref () Int)
(declare-fun $1_ref () Int)
(declare-fun $1024_ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun my__builtin_clz () Int)
(declare-fun my__builtin_ctz () Int)
(declare-fun main_ () Int)
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
(declare-fun SIV_4 () (_ BitVec 32))
(declare-fun SIV_1 () (_ BitVec 32))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV_5 () Bool)
(declare-fun SIV_0 () Bool)
(declare-fun SIV_42 () Bool)
(declare-fun SIV_41 () (_ BitVec 32))
(declare-fun SIV_40 () Bool)
(declare-fun SIV_39 () Bool)
(declare-fun SIV_38 () Bool)
(declare-fun SIV_47 () (_ BitVec 32))
(declare-fun SIV_46 () Bool)
(declare-fun SIV_29 () Bool)
(declare-fun SIV_37 () (_ BitVec 1))
(declare-fun SIV_36 () (_ BitVec 32))
(declare-fun SIV_32 () (_ BitVec 32))
(declare-fun SIV_35 () (_ BitVec 1))
(declare-fun SIV_34 () (_ BitVec 32))
(declare-fun SIV_33 () (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV_31 () (_ BitVec 1))
(declare-fun SIV_30 () (_ BitVec 32))
(declare-fun SIV_25 () (_ BitVec 32))
(declare-fun SIV_24 () (_ BitVec 32))
(declare-fun SIV_28 () Bool)
(declare-fun SIV_45 () Bool)
(declare-fun SIV_27 () (_ BitVec 1))
(declare-fun SIV_26 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun SIV_44 () Bool)
(declare-fun my__builtin_clz_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun SIV_23 () (_ BitVec 1))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_43 () Bool)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 (_ bv0 32)))
(assert
 (= $1 (_ bv1 32)))
(assert
 (= $0_ref 0))
(assert
 (= $1_ref 1))
(assert
 (= $1024_ref 1024))
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
 (= main_ (- 0 3096)))
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
 (= llvm_dbg_value (- 0 21672)))
(assert
 (let ((?x25 (- 0 22704)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x134 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 308164) (- 0 315682))))))
 (let (($x146 (=> (and (= (ControlFlow 0 315625) 308164) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 315628) (not (=> (and (and SIV_0 (= (ControlFlow 0 315628) 315625)) (= (ControlFlow 0 315625) 308164) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x285 (not (and (= SIV_4 SIV_41) (= SIV_3 SIV_42)))))
 (let (($x286 (=> (= (ControlFlow 1 315740) (- 0 316322)) $x285)))
 (let (($x294 (=> (and (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x295 (=> (and (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x302 (=> (and (and (= SIV_40 SIV_39) (= (ControlFlow 1 307640) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x306 (=> (and (= (ControlFlow 1 307635) 307640) (and (= SIV_40 SIV_39) (= (ControlFlow 1 307640) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x313 (=> (and (and (= SIV_39 SIV_38) (= (ControlFlow 1 307639) 307635)) (= (ControlFlow 1 307635) 307640) (and (= SIV_40 SIV_39) (= (ControlFlow 1 307640) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x359 (=> (and (= (ControlFlow 1 307636) 307638) (and SIV_38 (= (ControlFlow 1 307638) 307639)) (and (= SIV_39 SIV_38) (= (ControlFlow 1 307639) 307635)) (= (ControlFlow 1 307635) 307640) (and (= SIV_40 SIV_39) (= (ControlFlow 1 307640) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x347 (and (and (not SIV_38) (= SIV_41 SIV_47)) (and (= SIV_42 SIV_38) (= (ControlFlow 1 307637) 315740)))))
 (let (($x361 (=> (and (and (not (= SIV_37 (_ bv1 1))) SIV_29) (and true SIV_46)) (and (=> (and (= (ControlFlow 1 307636) 307637) $x347 (= (ControlFlow 1 315740) (- 0 316322))) $x285) $x359))))
 (let (($x327 (=> (and (and (= SIV_39 SIV_29) (= (ControlFlow 1 307634) 307635)) (= (ControlFlow 1 307635) 307640) (and (= SIV_40 SIV_39) (= (ControlFlow 1 307640) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x320 (= SIV_37 (_ bv1 1))))
 (let (($x405 (and (=> (and (= (ControlFlow 1 307633) 307634) $x320 (and (= SIV_39 SIV_29) (= (ControlFlow 1 307634) 307635)) (= (ControlFlow 1 307635) 307640) (and (= SIV_40 SIV_39) (= (ControlFlow 1 307640) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285) (=> (and (= (ControlFlow 1 307633) 307636) (and (and (not $x320) SIV_29) (and true SIV_46))) (and (=> (and (= (ControlFlow 1 307636) 307637) $x347 (= (ControlFlow 1 315740) (- 0 316322))) $x285) $x359)))))
 (let (($x396 (and (= SIV_36 ((_ zero_extend 31) SIV_35)) (= SIV_37 (ite (= SIV_32 SIV_36) (_ bv1 1) (_ bv0 1))))))
 (let (($x389 (and (= SIV_34 (bvand $u0 SIV_33)) (= SIV_35 (ite (= SIV_34 (_ bv0 32)) (_ bv1 1) (_ bv0 1))))))
 (let (($x380 (and (= SIV_32 ((_ zero_extend 31) SIV_31)) (= SIV_33 (bvsub $u0 (_ bv1 32))))))
 (let (($x372 (and (= SIV_30 (bvadd SIV_24 SIV_25)) (= SIV_31 (ite (= SIV_30 (_ bv31 32)) (_ bv1 1) (_ bv0 1))))))
 (let (($x410 (=> (and (= (ControlFlow 1 307632) 307633) (and (and $x372 $x380) (and $x389 $x396))) $x405)))
 (let (($x414 (=> (and (= (ControlFlow 1 307627) 307632) (= (ControlFlow 1 307632) 307633) (and (and $x372 $x380) (and $x389 $x396))) $x405)))
 (let (($x421 (=> (and (and (= SIV_29 SIV_28) (= (ControlFlow 1 307631) 307627)) (= (ControlFlow 1 307627) 307632) (= (ControlFlow 1 307632) 307633) (and (and $x372 $x380) (and $x389 $x396))) $x405)))
 (let (($x455 (=> (and (= (ControlFlow 1 307628) 307630) (and SIV_28 (= (ControlFlow 1 307630) 307631)) (and (= SIV_29 SIV_28) (= (ControlFlow 1 307631) 307627)) (= (ControlFlow 1 307627) 307632) (= (ControlFlow 1 307632) 307633) (and (and $x372 $x380) (and $x389 $x396))) $x405)))
 (let (($x443 (and (and (not SIV_28) (= SIV_41 SIV_47)) (and (= SIV_42 SIV_28) (= (ControlFlow 1 307629) 315740)))))
 (let (($x457 (=> (and (and (not (= SIV_27 (_ bv1 1))) true) (and true SIV_45)) (and (=> (and (= (ControlFlow 1 307628) 307629) $x443 (= (ControlFlow 1 315740) (- 0 316322))) $x285) $x455))))
 (let (($x434 (=> (and (and (= SIV_29 true) (= (ControlFlow 1 307626) 307627)) (= (ControlFlow 1 307627) 307632) (= (ControlFlow 1 307632) 307633) (and (and $x372 $x380) (and $x389 $x396))) $x405)))
 (let (($x428 (= SIV_27 (_ bv1 1))))
 (let (($x470 (and (=> (and (= (ControlFlow 1 307625) 307626) $x428 (and (= SIV_29 true) (= (ControlFlow 1 307626) 307627)) (= (ControlFlow 1 307627) 307632) (= (ControlFlow 1 307632) 307633) (and (and $x372 $x380) (and $x389 $x396))) $x405) (=> (and (= (ControlFlow 1 307625) 307628) (and (and (not $x428) true) (and true SIV_45))) (and (=> (and (= (ControlFlow 1 307628) 307629) $x443 (= (ControlFlow 1 315740) (- 0 316322))) $x285) $x455)))))
 (let (($x463 (and (= SIV_26 (bvadd SIV_24 SIV_25)) (= SIV_27 (ite (bvsle SIV_26 (_ bv31 32)) (_ bv1 1) (_ bv0 1))))))
 (let (($x485 (and (boogie_si_record_bv32 SIV_25) (= (ControlFlow 1 307623) 307625))))
 (let (($x478 (and (and (not (= SIV_23 (_ bv1 1))) (= SIV_24 (my__builtin_clz_cb $u0))) (and (boogie_si_record_bv32 SIV_24) true))))
 (let (($x502 (=> (and (= (ControlFlow 1 307621) 307623) (and $x478 (and (and true SIV_44) $x485)) $x463) $x470)))
 (let (($x336 (=> (and (and (= SIV_40 true) (= (ControlFlow 1 307622) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285)))
 (let (($x330 (= SIV_23 (_ bv1 1))))
 (let (($x495 (and (boogie_si_record_ref main_) (= SIV_23 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))))))
 (let (($x504 (=> (and (and true SIV_43) $x495) (and (=> (and (= (ControlFlow 1 307621) 307622) $x330 (and (= SIV_40 true) (= (ControlFlow 1 307622) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285) $x502))))
 (let (($x513 (=> (and (and true (= (ControlFlow 1 315746) 315738)) (= (ControlFlow 1 315738) 307621) true (and (and true SIV_43) $x495)) (and (=> (and (= (ControlFlow 1 307621) 307622) $x330 (and (= SIV_40 true) (= (ControlFlow 1 307622) 307624)) (= SIV_41 (_ bv0 32)) (and (= SIV_42 SIV_40) (= (ControlFlow 1 307624) 315740)) (= (ControlFlow 1 315740) (- 0 316322))) $x285) $x502))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 315746) (not $x513)))))))))))))))))))))))))))))))))))))))
(check-sat)
