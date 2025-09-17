(set-logic QF_UFBV)
(set-option :produce-models true)


(declare-fun buffer_0_3 () (_ BitVec 16) )
(declare-fun buffer_4_7 () (_ BitVec 16) )

(declare-fun isalpha_ret () (_ BitVec 16) )
(declare-fun isalpha_ret_1 () (_ BitVec 16) )

(declare-fun foo_cb ((_ BitVec 16)) (_ BitVec 16))

(assert (= isalpha_ret (foo_cb buffer_0_3)))
(assert (= isalpha_ret_1 (foo_cb buffer_4_7)))

(assert (and  (and  (and
(=  false (=  (_ bv0 16) buffer_0_3 ) )
(= false ( = (_ bv0 16) isalpha_ret ) ) )
(= false (=  (_ bv0 16) buffer_4_7 ) ) )
(= (_ bv0 16) isalpha_ret_1 ) )
)

(check-sat)
(get-model)
(exit)
