(set-logic QF_UFBV)
(set-option :produce-models true)
(declare-fun fg_array_search_4 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32) )

(declare-const x1 (_ BitVec 32))
(declare-const x2 (_ BitVec 32))
(declare-const x3 (_ BitVec 32))
(declare-const x4 (_ BitVec 32))
(declare-const k (_ BitVec 32))

(assert (and
	(and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4)))
	(and (bvult k x1) (= (fg_array_search_4 x1 x2 x3 x4 k) (_ bv0 32)))))
	
(assert (and (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (bvugt k x4) (= (fg_array_search_4 x1 x2 x3 x4 k) (_ bv4 32)))))
(assert (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x1) (bvult k x2)) (= (fg_array_search_4 x1 x2 x3 x4 k) (_ bv1 32)))))
(assert (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x2) (bvult k x3)) (= (fg_array_search_4 x1 x2 x3 x4 k) (_ bv2 32)))))
(assert (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x3) (bvult k x4)) (= (fg_array_search_4 x1 x2 x3 x4 k) (_ bv3 32)))))

(check-sat)
(get-model)
(exit)
