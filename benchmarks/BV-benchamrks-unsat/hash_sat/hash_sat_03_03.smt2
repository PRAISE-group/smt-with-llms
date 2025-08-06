(set-info :smt-lib-version 2.6)
(set-logic QF_UFBV)
(set-option :produce-models true)
(set-info :source | MathSat group |)
(set-info :category "crafted")
(set-info :status sat)

(declare-fun hash_1_03_03_cb  ((_ BitVec 32)) (_ BitVec 32))
(declare-fun hash_2_03_03_cb  ((_ BitVec 32)) (_ BitVec 32))
(declare-fun hash_3_03_03_cb  ((_ BitVec 32)) (_ BitVec 32))
(declare-fun ite_lt_cb  ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))


(declare-fun x1 () (_ BitVec 32))
(declare-fun x2 () (_ BitVec 32))
(declare-fun x3 () (_ BitVec 32))




(assert (let ((?v_0 (hash_1_03_03_cb  x1)) (?v_1 (hash_1_03_03_cb  x2)) (?v_2 (hash_1_03_03_cb  x3)) (?v_3 (hash_2_03_03_cb  x1)) (?v_4 (hash_2_03_03_cb  x2)) (?v_5 (hash_2_03_03_cb  x3)) (?v_6 (hash_3_03_03_cb  x1)) (?v_7 (hash_3_03_03_cb  x2)) (?v_8 (hash_3_03_03_cb  x3)) (?v_9 (bvadd x1 x3)) (?v_10 (bvadd x1 x2))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (distinct ?v_0 ?v_1) (distinct ?v_0 ?v_2)) (distinct ?v_1 ?v_2)) (distinct ?v_3 ?v_4)) (distinct ?v_3 ?v_5)) (distinct ?v_4 ?v_5)) (distinct ?v_6 ?v_7)) (distinct ?v_6 ?v_8)) (distinct ?v_7 ?v_8)) (or (or (= ?v_0 x1) (= ?v_0 x2)) (= ?v_0 x3))) (or (or (= ?v_1 x1) (= ?v_1 x2)) (= ?v_1 x3))) (or (or (= ?v_2 x1) (= ?v_2 x2)) (= ?v_2 x3))) (or (or (= ?v_3 x1) (= ?v_3 x2)) (= ?v_3 x3))) (or (or (= ?v_4 x1) (= ?v_4 x2)) (= ?v_4 x3))) (or (or (= ?v_5 x1) (= ?v_5 x2)) (= ?v_5 x3))) (or (or (= ?v_6 x1) (= ?v_6 x2)) (= ?v_6 x3))) (or (or (= ?v_7 x1) (= ?v_7 x2)) (= ?v_7 x3))) (or (or (= ?v_8 x1) (= ?v_8 x2)) (= ?v_8 x3))) (distinct x1 x2)) (distinct x1 x3)) (distinct x2 x3)) (bvule (_ bv0 32) x1)) (bvult x1 (_ bv4 32))) (bvule (_ bv0 32) x2)) (bvult x2 (_ bv4 32))) (bvule (_ bv0 32) x3)) (bvult x3 (_ bv4 32))) (not (= (hash_1_03_03_cb  (hash_1_03_03_cb  (hash_3_03_03_cb  (ite_lt_cb  (bvsub ?v_9 (_ bv4 32)) ?v_9 x1)))) (hash_1_03_03_cb  (hash_1_03_03_cb  (hash_3_03_03_cb  (ite_lt_cb  (bvsub ?v_10 (_ bv4 32)) ?v_10 x1)))))))))

(check-sat)
(get-model)
(exit)
