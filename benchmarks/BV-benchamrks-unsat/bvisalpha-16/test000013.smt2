(set-logic UFBV)
(set-option :produce-models true)


(declare-fun buffer_0_3 () (_ BitVec 16) )
(declare-fun buffer_4_7 () (_ BitVec 16) )
(declare-fun buffer_8_11 () (_ BitVec 16) )
(declare-fun buffer_12_15 () (_ BitVec 16) )

(declare-fun isalpha_ret () (_ BitVec 16) )
(declare-fun isalpha_ret_1 () (_ BitVec 16) )
(declare-fun isalpha_ret_2 () (_ BitVec 16) )

(declare-fun isalpha1_cb ((_ BitVec 16)) (_ BitVec 16))

(assert (= isalpha_ret (isalpha1_cb buffer_0_3)))
(assert (= isalpha_ret_1 (isalpha1_cb buffer_4_7)))
(assert (= isalpha_ret_2 (isalpha1_cb buffer_8_11)))

(assert (and  (and  (and  (and  (and  (and
(=  false (=  (_ bv0 16) buffer_0_3 ) )
(= (_ bv0 16) isalpha_ret ) )
(= false (=  (_ bv0 16) buffer_4_7 ) ) )
(= (_ bv0 16) isalpha_ret_1 ) )
(= false (=  (_ bv0 16) buffer_8_11 ) ) )
(= false (=  (_ bv0 16) isalpha_ret_2 ) ) )
(= (_ bv0 16) buffer_12_15 ) ) )

(check-sat)
(get-model)
(exit)
