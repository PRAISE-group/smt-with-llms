(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun foo_cb ((_ BitVec 16)) (_ BitVec 16))
(declare-fun ndx () (_ BitVec 16))
(declare-fun retval () (_ BitVec 16))

(assert (= retval (foo_cb ndx)))

(assert
     (and
	 (and
		(bvule ndx (_ bv32767 16) )
		(=  (_ bv0 16)  retval ))

	 (=  false (bvule  (bvadd  (_ bv1 16) ndx ) (_ bv32767 16) ) ) )
)

(check-sat)
(get-model)
(exit)
