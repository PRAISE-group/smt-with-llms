(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun foo_cb ((_ BitVec 64)) (_ BitVec 64))
(declare-fun ndx () (_ BitVec 64))
(declare-fun retval () (_ BitVec 64))

(assert (= retval (foo_cb ndx)))

(assert
     (and
	 (and
		(bvule ndx (_ bv32767 64) )
		(=  (_ bv0 64)  retval ))

	 (=  false (bvule  (bvadd  (_ bv1 64) ndx ) (_ bv32767 64) ) ) )
)

(check-sat)
(get-model)
(exit)
