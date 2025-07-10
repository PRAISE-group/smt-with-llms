(set-logic QF_UFBV)
(set-option :produce-models true)


(declare-fun buffer_0_3 () (_ BitVec 64) )

(declare-fun isalpha_ret () (_ BitVec 64) )

(declare-fun isalpha_ ((_ BitVec 64)) (_ BitVec 64))

(assert (= isalpha_ret (isalpha_ buffer_0_3)))

(assert (and
(= false (=  (_ bv0 64) buffer_0_3 ) )
(= false ( = (_ bv0 64) isalpha_ret ) ) )
)

(check-sat)
(get-model)
(exit)
