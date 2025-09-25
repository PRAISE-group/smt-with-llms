(set-logic QF_UFBV)
(set-option :produce-models true)


(declare-fun ndx () (_ BitVec 32))
(declare-fun foo_cb ((_ BitVec 32)) (_ BitVec 32))

(declare-fun retval () (_ BitVec 32) )
(declare-fun retval_1 () (_ BitVec 32) )
(declare-fun retval_2 () (_ BitVec 32) )
(declare-fun retval_3 () (_ BitVec 32) )
(declare-fun retval_4 () (_ BitVec 32) )

(assert (= retval (foo_cb ndx)))
(assert (= retval_1 (foo_cb (bvadd ndx (_ bv1 32)))))
(assert (= retval_2 (foo_cb (bvadd ndx (_ bv2 32)))))
(assert (= retval_3 (foo_cb (bvadd ndx (_ bv3 32)))))
(assert (= retval_4 (foo_cb (bvadd ndx (_ bv4 32)))))

(assert (and  (and  (and  (and  (and  (and  (and  (and  (and  (and

(bvule  ndx (_ bv32767 32) )

(=  false (=  (_ bv0 32) retval) ) )

(bvule  (bvadd  (_ bv1 32) ndx ) (_ bv32767 32) ) )

(=  true (=  (_ bv0 32) retval_1 ) ) )

(bvule  (bvadd  (_ bv2 32) ndx ) (_ bv32767 32) ) )

(=  true (=  (_ bv0 32) retval_2 ) ) )

(bvule  (bvadd  (_ bv3 32) ndx ) (_ bv32767 32) ) )

(=  (_ bv0 32) retval_3 ) )

(bvule  (bvadd  (_ bv4 32) ndx ) (_ bv32767 32) ) )

(=  (_ bv0 32) retval_4 ) )

))

(check-sat)
(exit)
