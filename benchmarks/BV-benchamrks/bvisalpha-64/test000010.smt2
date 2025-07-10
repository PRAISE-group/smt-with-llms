(set-logic QF_UFBV)
(set-option :produce-models true)


(declare-fun buffer_0_3 () (_ BitVec 64) )
(declare-fun buffer_4_7 () (_ BitVec 64) )

(declare-fun isalpha_ret () (_ BitVec 64) )
(declare-fun isalpha_ret_1 () (_ BitVec 64) )

(declare-fun isalpha_ ((_ BitVec 64)) (_ BitVec 64))

(assert (= isalpha_ret (isalpha_ buffer_0_3)))
(assert (= isalpha_ret_1 (isalpha_ buffer_4_7)))

(assert (and  (and 
(= false (=  (_ bv0 64) buffer_0_3 ) )
(= false ( = (_ bv0 64) isalpha_ret ) ) )
(= true (=  (_ bv0 64) buffer_4_7 ) ) )
)

(check-sat)
(get-model)
(exit)
