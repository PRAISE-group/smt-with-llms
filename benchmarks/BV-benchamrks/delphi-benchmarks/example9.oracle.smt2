(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun isPrimeLUT ((_ BitVec 8) ) Bool)

(declare-fun factor1 () (_ BitVec 8))
(declare-fun factor2 () (_ BitVec 8))
(declare-fun factor3 () (_ BitVec 8))


(assert (and (isPrimeLUT factor1)(isPrimeLUT factor2)(isPrimeLUT factor3)))
(assert (= (bvmul factor1 factor2 factor3) (_ bv76 8)))

(check-sat)
(get-model)
