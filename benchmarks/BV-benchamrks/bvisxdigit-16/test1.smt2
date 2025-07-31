(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun isxdigit__cb ((_ BitVec 16)) (_ BitVec 16))
(declare-fun ndx () (_ BitVec 16))
(declare-fun retval () (_ BitVec 16))

(assert (= retval (isxdigit__cb ndx)))

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
