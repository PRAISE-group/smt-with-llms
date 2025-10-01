;; status = SAT

(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun test3ext_cb ((_ BitVec 32)) (_ BitVec 32))

(declare-fun x () (_ BitVec 32))
(declare-fun retval () (_ BitVec 32))


(assert (= retval (test3ext_cb x)))

(assert
	(and
		(bvule x (_ bv4 32))
		(=  false (bvule retval (_ bv5 32) ) ) )

)



(check-sat)
(get-model)
(exit)
