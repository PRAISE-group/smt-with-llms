(set-logic QF_UFBV)
(set-option :produce-models true)
;; (set-option :simplification none)

(declare-fun absx ((_ BitVec 32)) (_ BitVec 32))

(declare-fun x10 () (_ BitVec 32))
(declare-const x34 (_ BitVec 32))
(declare-const y (_ BitVec 32))
(declare-const tempx (_ BitVec 32))

(assert ( = (absx x10) tempx))
(assert ( bvugt tempx (_ bv0 32)))
(assert (= x34 (bvmul (_ bv2 32) y)))
(assert (bvugt x10 x34))

(check-sat)
(get-model)
