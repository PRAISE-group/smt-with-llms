(set-logic QF_UFBV)
(set-option :produce-models true)
(set-option :simplification none)

(declare-fun isxdigit__cb ((_ BitVec 16)) (_ BitVec 16))
(declare-fun ndx () (_ BitVec 16) )

(declare-fun retval () (_ BitVec 16))
(declare-fun retval_1 () (_ BitVec 16))
(declare-fun retval_2 () (_ BitVec 16))

(assert (= retval (isxdigit__cb ndx)))
(assert (= retval_1 (isxdigit__cb (bvadd ndx (_ bv1 16)))))
(assert (= retval_2 (isxdigit__cb (bvadd ndx (_ bv2 16)))))


(assert
  (and
    (and
      (and
        (and
          (and
	    (and
	      (bvule ndx (_ bv32767 16) )
	      (=  (_ bv0 16) retval ) )
	    (bvule (bvadd (_ bv1 16) ndx) (_ bv32767 16) ))
	    (=  (_ bv0 16) retval_1 ))

	(bvule  (bvadd (_ bv2 16) ndx) (_ bv32767 16) ))
	(=  (_ bv0 16) retval_2 ))
   (=  false (bvule  (bvadd (_ bv3 16) ndx ) (_ bv32767 16) ))
 ))


(check-sat)
(get-model)
(exit)
