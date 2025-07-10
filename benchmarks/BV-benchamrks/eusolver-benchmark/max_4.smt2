(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-const x0 (_ BitVec 32))
(declare-const x1 (_ BitVec 32))
(declare-const x2 (_ BitVec 32))
(declare-const x3 (_ BitVec 32))

(declare-fun max4 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (bvuge (max4 x0 x1 x2 x3) x0))
(assert (bvuge (max4 x0 x1 x2 x3) x1))
(assert (bvuge (max4 x0 x1 x2 x3) x2))
(assert (bvuge (max4 x0 x1 x2 x3) x3))
(assert
    (or (= (max4 x0 x1 x2 x3) x0)
    (or (= (max4 x0 x1 x2 x3) x1)
    (or (= (max4 x0 x1 x2 x3) x2)
        (= (max4 x0 x1 x2 x3) x3)))))


(check-sat)
(get-value (x0 x1 x2 x3))
(exit)

