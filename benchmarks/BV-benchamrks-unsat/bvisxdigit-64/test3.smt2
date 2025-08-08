(set-logic QF_UFBV)
(set-option :produce-models true)


(declare-fun ndx () (_ BitVec 64))
(declare-fun isxdigit__cb ((_ BitVec 64)) (_ BitVec 64))

(declare-fun retval () (_ BitVec 64) )
(declare-fun retval_1 () (_ BitVec 64) )
(declare-fun retval_2 () (_ BitVec 64) )
(declare-fun retval_3 () (_ BitVec 64) )

(assert (= retval (isxdigit__cb ndx)))
(assert (= retval_1 (isxdigit__cb (bvadd ndx (_ bv1 64)))))
(assert (= retval_2 (isxdigit__cb (bvadd ndx (_ bv2 64)))))
(assert (= retval_3 (isxdigit__cb (bvadd ndx (_ bv3 64)))))

(assert (and  (and  (and  (and  (and  (and

(bvule  ndx (_ bv32767 64) )

(=  false (=  (_ bv0 64) retval) ) )

(bvule  (bvadd  (_ bv1 64) ndx ) (_ bv32767 64) ) )

(=  true (=  (_ bv0 64) retval_1 ) ) )

(bvule  (bvadd  (_ bv2 64) ndx ) (_ bv32767 64) ) )

(=  true (=  (_ bv0 64) retval_2 ) ) )

(bvule  (bvadd  (_ bv3 64) ndx ) (_ bv32767 64) ) )

)

(check-sat)
(exit)
