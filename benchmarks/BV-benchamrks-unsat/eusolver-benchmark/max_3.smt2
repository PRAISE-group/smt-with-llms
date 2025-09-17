(set-logic QF_UFBV)

(set-option :produce-models true)

(declare-const x0 (_ BitVec 32))
(declare-const x1 (_ BitVec 32))
(declare-const x2 (_ BitVec 32))

(declare-fun foo3_cb  ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (bvuge (foo3_cb  x0 x1 x2) x0))
(assert (bvuge (foo3_cb  x0 x1 x2) x1))
(assert (bvuge (foo3_cb  x0 x1 x2) x2))
(assert
    (or (= (foo3_cb  x0 x1 x2) x0)
    (or (= (foo3_cb  x0 x1 x2) x1)
        (= (foo3_cb  x0 x1 x2) x2))))


(check-sat)
(get-value (x0 x1 x2))
(exit)
