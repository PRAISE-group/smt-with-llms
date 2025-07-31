(set-logic QF_UFBV)

(set-option :produce-models true)

(declare-fun buffer_0_3 () (_ BitVec 64) )
(declare-fun buffer_4_7 () (_ BitVec 64) )
(declare-fun buffer_8_11 () (_ BitVec 64) )
(declare-fun buffer_12_15 () (_ BitVec 64) )
(declare-fun buffer_16_19 () (_ BitVec 64) )
(declare-fun buffer_20_23 () (_ BitVec 64) )
(declare-fun buffer_23_26 () (_ BitVec 64) )
(declare-fun buffer_7 () (_ BitVec 64) )
(declare-fun buffer_8 () (_ BitVec 64) )
(declare-fun buffer_9 () (_ BitVec 64) )

(declare-fun isalpha_ret () (_ BitVec 64) )
(declare-fun isalpha_ret_1 () (_ BitVec 64) )
(declare-fun isalpha_ret_2 () (_ BitVec 64) )
(declare-fun isalpha_ret_3 () (_ BitVec 64) )
(declare-fun isalpha_ret_4 () (_ BitVec 64) )
(declare-fun isalpha_ret_5 () (_ BitVec 64) )
(declare-fun isalpha_ret_6 () (_ BitVec 64) )
(declare-fun isalpha_ret_7 () (_ BitVec 64) )
(declare-fun isalpha_ret_8 () (_ BitVec 64) )
(declare-fun isalpha_ret_9 () (_ BitVec 64) )

(declare-fun isalpha__cb ((_ BitVec 64)) (_ BitVec 64))

(assert (= isalpha_ret (isalpha__cb buffer_0_3)))
(assert (= isalpha_ret_1 (isalpha__cb buffer_4_7)))
(assert (= isalpha_ret_2 (isalpha__cb buffer_8_11)))
(assert (= isalpha_ret_3 (isalpha__cb buffer_12_15)))
(assert (= isalpha_ret_4 (isalpha__cb buffer_16_19)))
(assert (= isalpha_ret_5 (isalpha__cb buffer_20_23)))
(assert (= isalpha_ret_6 (isalpha__cb buffer_23_26)))
(assert (= isalpha_ret_7 (isalpha__cb buffer_7)))
(assert (= isalpha_ret_8 (isalpha__cb buffer_8)))
(assert (= isalpha_ret_9 (isalpha__cb buffer_9)))

(assert (and  (and  (and  (and  (and  (and  (and (and ( and ( and ( and ( and ( and

(=  false (=  (_ bv0 64) buffer_0_3 ) )

(=  (_ bv0 64) isalpha_ret ) )

(=  false (= (_ bv0 64) buffer_4_7 ) ) )

(=  true (= (_ bv0 64) isalpha_ret_1 ) ) )

(=  false (= (_ bv0 64) buffer_8_11 ) ) )

(=  true (=  (_ bv0 64) isalpha_ret_2 ) ) )

(=  false (=  (_ bv0 64) buffer_12_15 ) ) )

(= true (=  (_ bv0 64) isalpha_ret_3 ) ) )

(=  false (=  (_ bv0 64) buffer_16_19 ) )

(=  (_ bv0 64) isalpha_ret_4 ) )

(=  false (=  (_ bv0 64) buffer_20_23 ) )

(=  (_ bv0 64) isalpha_ret_5 ) )

(=  false (=  (_ bv0 64) buffer_23_26 ) )

(=  (_ bv0 64) isalpha_ret_6 ) )

(=  false (=  (_ bv0 64) buffer_7 ) )
(=  true (= (_ bv0 64) isalpha_ret_7 ) ) )

(=  false (=  (_ bv0 64) buffer_8 ) )
(=  true (= (_ bv0 64) isalpha_ret_8 ) ) )

(=  false (=  (_ bv0 64) buffer_9 ) )
(=  true (= (_ bv0 64) isalpha_ret_9 ) ) )
)

(check-sat)
(get-model)
(exit)
