(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun numvowels_ret () (_ BitVec 8))

(declare-const s0 (_ BitVec 8))
(declare-const s1 (_ BitVec 8))
(declare-const s2 (_ BitVec 8))
(declare-const s3 (_ BitVec 8))


(declare-fun foo4_cb ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8) (_ BitVec 8)) (_ BitVec 8))

(assert (= numvowels_ret (foo4_cb s0 s1 s2 s3 )))
(assert (bvugt (_ bv6 8) numvowels_ret))

(assert

(and  (and  (and  (and
      (=  false (=  (_ bv0 8)  numvowels_ret ) )
      (=  true  (=  (_ bv1 8)  numvowels_ret ) ) )
      (=  false (=  (_ bv2 8)  numvowels_ret ) ) )
      (=  false (=  (_ bv3 8)  numvowels_ret ) ) )
      (=  false (=  (_ bv4 8)  numvowels_ret ) ) ) )

(check-sat)
(get-model)
(exit)
