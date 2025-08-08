(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun isPrimeLUT_cb ((_ BitVec 8) ) Bool)


(declare-fun factor1 () (_ BitVec 8))
(declare-fun factor2 () (_ BitVec 8))
(declare-fun factor3 () (_ BitVec 8))
(declare-fun factor4 () (_ BitVec 8))
(declare-fun factor5 () (_ BitVec 8))
(declare-fun factor6 () (_ BitVec 8))

(assert (isPrimeLUT_cb factor1))
(assert (isPrimeLUT_cb factor2))
(assert (isPrimeLUT_cb factor3))
(assert (isPrimeLUT_cb factor4))
(assert (isPrimeLUT_cb factor5))
(assert (isPrimeLUT_cb factor6))
(assert (= (bvmul factor1 factor2 factor3 factor4 factor5 factor6) (_ bv96 8)))

(check-sat)
(get-model)
