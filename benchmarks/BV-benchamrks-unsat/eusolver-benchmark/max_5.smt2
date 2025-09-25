(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-const x0 (_ BitVec 32))
(declare-const x1 (_ BitVec 32))
(declare-const x2 (_ BitVec 32))
(declare-const x3 (_ BitVec 32))
(declare-const x4 (_ BitVec 32))

(declare-fun foo5_cb  ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (bvuge (foo5_cb  x0 x1 x2 x3 x4) x0))
(assert (bvuge (foo5_cb  x0 x1 x2 x3 x4) x1))
(assert (bvuge (foo5_cb  x0 x1 x2 x3 x4) x2))
(assert (bvuge (foo5_cb  x0 x1 x2 x3 x4) x3))
(assert (bvuge (foo5_cb  x0 x1 x2 x3 x4) x4))
(assert
    (or (= (foo5_cb  x0 x1 x2 x3 x4) x0)
    (or (= (foo5_cb  x0 x1 x2 x3 x4) x1)
    (or (= (foo5_cb  x0 x1 x2 x3 x4) x2)
    (or (= (foo5_cb  x0 x1 x2 x3 x4) x3)
        (= (foo5_cb  x0 x1 x2 x3 x4) x4))))))


(check-sat)
(get-value (x0 x1 x2 x3 x4))
(exit)
