(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-const x0 (_ BitVec 32))
(declare-const x1 (_ BitVec 32))
(declare-const x2 (_ BitVec 32))
(declare-const x3 (_ BitVec 32))
(declare-const x4 (_ BitVec 32))

(declare-fun max5 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (bvuge (max5 x0 x1 x2 x3 x4) x0))
(assert (bvuge (max5 x0 x1 x2 x3 x4) x1))
(assert (bvuge (max5 x0 x1 x2 x3 x4) x2))
(assert (bvuge (max5 x0 x1 x2 x3 x4) x3))
(assert (bvuge (max5 x0 x1 x2 x3 x4) x4))
(assert
    (or (= (max5 x0 x1 x2 x3 x4) x0)
    (or (= (max5 x0 x1 x2 x3 x4) x1)
    (or (= (max5 x0 x1 x2 x3 x4) x2)
    (or (= (max5 x0 x1 x2 x3 x4) x3)
        (= (max5 x0 x1 x2 x3 x4) x4))))))


(check-sat)
(get-value (x0 x1 x2 x3 x4))
(exit)

