(set-logic QF_UFBV)
(set-option :produce-models true)


(declare-fun buffer_0_3 () (_ BitVec 64) )
(declare-fun buffer_4_7 () (_ BitVec 64) )

(declare-fun isalpha_ret () (_ BitVec 64) )
(declare-fun isalpha_ret_1 () (_ BitVec 64) )

(declare-fun isalpha__cb ((_ BitVec 64)) (_ BitVec 64))

(assert (= isalpha_ret (isalpha__cb buffer_0_3)))
(assert (= isalpha_ret_1 (isalpha__cb buffer_4_7)))

(assert (and  (and  (and
(=  false (=  (_ bv0 64) buffer_0_3 ) )
(= false ( = (_ bv0 64) isalpha_ret ) ) )
(= false (=  (_ bv0 64) buffer_4_7 ) ) )
(= (_ bv0 64) isalpha_ret_1 ) )
)

(check-sat)
(get-model)
(exit)
