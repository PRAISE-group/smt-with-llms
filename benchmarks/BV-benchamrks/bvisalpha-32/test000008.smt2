(set-logic QF_UFBV)
(set-option :produce-models true)


(declare-fun buffer_0_3 () (_ BitVec 32) )

(declare-fun isalpha_ret () (_ BitVec 32) )

(declare-fun isalpha_cb ((_ BitVec 32)) (_ BitVec 32))

(assert (= isalpha_ret (isalpha_cb buffer_0_3)))

(assert (and
(= false (=  (_ bv0 32) buffer_0_3 ) )
(= false ( = (_ bv0 32) isalpha_ret ) ) )
)

(check-sat)
(get-model)
(exit)
