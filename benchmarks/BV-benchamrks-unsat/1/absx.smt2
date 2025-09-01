(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun absx_cb ((_ BitVec 32)) (_ BitVec 32))

(declare-fun x10 () (_ BitVec 32))
(declare-const x34 (_ BitVec 32))
(declare-const y (_ BitVec 32))
(declare-const tempx (_ BitVec 32))

(assert (= (absx_cb x10) tempx))
(assert (bvugt tempx (_ bv0 32)))
(assert (= x34 (bvmul (_ bv2 32) y)))
(assert (bvugt x10 x34))

;; This makes it UNSAT:
(assert (= tempx (_ bv0 32)))

(check-sat)
(get-model)
