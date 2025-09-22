(set-logic UFBV)
(set-option :produce-models true)


(declare-fun buffer_0_3 () (_ BitVec 16) )

(declare-fun isalpha_ret () (_ BitVec 16) )

(declare-fun foo_cb ((_ BitVec 16)) (_ BitVec 16))


(assert (= isalpha_ret (foo_cb buffer_0_3)))

(assert (and
(= false (=  (_ bv0 16) buffer_0_3 ) )
(= false ( = (_ bv0 16) isalpha_ret ) ) )
)

(assert (forall ((z (_ BitVec 16)))    (=> (not (= z (_ bv0 16)))        (= (isalpha_cb z) (_ bv0 16)))))
(assert (= (isalpha_cb (_ bv0 16)) (_ bv1 16)))
(assert (forall ((z (_ BitVec 16)))    (or (= (isalpha_cb z) (_ bv0 16))        (= (isalpha_cb z) (_ bv1 16)))))

(check-sat)
(get-model)
(exit)
