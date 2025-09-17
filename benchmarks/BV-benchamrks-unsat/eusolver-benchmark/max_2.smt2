(set-logic QF_UFBV)

(set-option :produce-models true)

(declare-const x0 (_ BitVec 32))
(declare-const x1 (_ BitVec 32))

(declare-fun foo2_cb  ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (bvuge (foo2_cb  x0 x1) x0))
(assert (bvuge (foo2_cb  x0 x1) x1))
(assert
    (or (= (foo2_cb  x0 x1) x0)
        (= (foo2_cb  x0 x1) x1)))

(check-sat)
(get-value (x0 x1))
(exit)
