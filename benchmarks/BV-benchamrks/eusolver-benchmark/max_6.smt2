(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-const x0 (_ BitVec 32))
(declare-const x1 (_ BitVec 32))
(declare-const x2 (_ BitVec 32))
(declare-const x3 (_ BitVec 32))
(declare-const x4 (_ BitVec 32))
(declare-const x5 (_ BitVec 32))

(declare-fun max6_cb  ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (bvuge (max6_cb  x0 x1 x2 x3 x4 x5) x0))
(assert (bvuge (max6_cb  x0 x1 x2 x3 x4 x5) x1))
(assert (bvuge (max6_cb  x0 x1 x2 x3 x4 x5) x2))
(assert (bvuge (max6_cb  x0 x1 x2 x3 x4 x5) x3))
(assert (bvuge (max6_cb  x0 x1 x2 x3 x4 x5) x4))
(assert (bvuge (max6_cb  x0 x1 x2 x3 x4 x5) x5))
(assert
    (or (= (max6_cb  x0 x1 x2 x3 x4 x5) x0)
    (or (= (max6_cb  x0 x1 x2 x3 x4 x5) x1)
    (or (= (max6_cb  x0 x1 x2 x3 x4 x5) x2)
    (or (= (max6_cb  x0 x1 x2 x3 x4 x5) x3)
    (or (= (max6_cb  x0 x1 x2 x3 x4 x5) x4)
        (= (max6_cb  x0 x1 x2 x3 x4 x5) x5)))))))


(check-sat)
(get-value (x0 x1 x2 x3 x4 x5))
(exit)
