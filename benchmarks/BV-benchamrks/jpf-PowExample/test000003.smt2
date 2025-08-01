(set-logic QF_UFBV)
(set-option :produce-models true)
(set-option :simplification none)

(declare-fun ipow_cb ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun ipow_ret () (_ BitVec 32))
(declare-const x (_ BitVec 32))
(declare-const y (_ BitVec 32))

(assert ( = ipow_ret (ipow_cb x y)))

(assert

	(and
	    (and
		(bvult (_ bv0 32) x )
	 	(=  y ipow_ret )

         ) (bvult (_ bv8 32) y ) ) )

(check-sat)
(get-model)
(exit)
