(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun isPrimeLUT_cb ((_ BitVec 8) ) Bool)

(declare-fun factor1 () (_ BitVec 8))
(declare-fun factor2 () (_ BitVec 8))
(declare-fun factor3 () (_ BitVec 8))
(declare-fun factor4 () (_ BitVec 8))

(assert (isPrimeLUT_cb factor1))
(assert (isPrimeLUT_cb factor2))
(assert (isPrimeLUT_cb factor3))
(assert (isPrimeLUT_cb factor4))
(assert (= (bvmul factor1 factor2 factor3 factor4) (_ bv24 8)))

(check-sat)
(get-model)
