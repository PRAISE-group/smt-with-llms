(set-logic QF_UFBV)

(set-option :produce-models true)

(declare-fun fg_array_sum_2_15  ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32) )

(declare-const x1 (_ BitVec 32))
(declare-const x2 (_ BitVec 32))

(assert (or (bvugt (bvadd x1 x2) (_ bv16 32)) (= (fg_array_sum_2_15 x1 x2 ) (bvadd x1 x2))))
(assert (or (bvule (bvadd x1 x2) (_ bv15 32)) (= (fg_array_sum_2_15 x1 x2 ) (_ bv127 32))))

(check-sat)
(get-model)
(exit)
