(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun isPrimeLUT ((_ BitVec 16) ) Bool)

(declare-fun factor1 () (_ BitVec 16))
(declare-fun factor2 () (_ BitVec 16))
(declare-fun factor3 () (_ BitVec 16))
(declare-fun factor4 () (_ BitVec 16))
(declare-fun factor5 () (_ BitVec 16))


(assert (isPrimeLUT factor1))
(assert (isPrimeLUT factor2))
(assert (isPrimeLUT factor3))
(assert (isPrimeLUT factor4))
(assert (isPrimeLUT factor5))

(assert (= (bvmul factor1 factor2 factor3 factor4 factor5 ) (_ bv420 16)))

(check-sat)
(get-model)
