(set-logic QF_UFBV)
(set-option :produce-models true)
;(set-option :simplification none)


(declare-fun ipow_cb ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(declare-fun ipow_ret () (_ BitVec 32))
(declare-const x (_ BitVec 32))
(declare-const y (_ BitVec 32))


(assert (= (ipow_cb x y) ipow_ret ))


(assert
	(and
           (=  y ipow_ret)
           (=  false (bvult  (_ bv8 32) y ) )
	)
)

(check-sat)
(exit)
