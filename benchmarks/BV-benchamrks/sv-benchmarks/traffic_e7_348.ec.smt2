(set-info :smt-lib-version 2.6)
(set-logic QF_UFLIA)
(set-option :produce-models true)

(set-info :source |
  These benchmarks were obtained from the KIND tool during verification of
  Lustre programs.  See also the lustre family of benchmarks in QF_LIA.
|)

(set-info :category "industrial")
(declare-fun _base () Int)
(declare-fun _n () Int)
(assert (<= 0 _n))
(declare-fun ___z2z____cb (Int) Int)
(declare-fun ___z3z____cb (Int) Bool)
(declare-fun ___z4z____cb (Int) Int)
(declare-fun ___z5z____cb (Int) Int)
(declare-fun ___z6z____cb (Int) Bool)

(declare-fun traffic_e7_temp1_cb (Int Int Int) Int)
;	(ite (and (not (<= ?v_0 0)) (not (<= 0 ?v_1))) ?v_2 (ite (and (not (<= 10 ?v_0)) (not (<= ?v_1 0))) ?v_2 ?v_0))

;(ite (= _base 0) 0 (___z4z____cb (- 1)))
(declare-fun traffic_e7_temp2_cb (Int Int Int) Int)

;(ite (and (not (<= ?v_0 0)) (not (<= 0 ?v_1))) ?v_2 (ite (and (not (<= 10 ?v_0)) (not (<= ?v_1 0))) ?v_2 ?v_0))
(declare-fun traffic_e7_temp3_cb (Int Int Int) Int)

;(ite (= _base (- 1)) 0 (___z4z____cb (- 2)))
(declare-fun traffic_e7_temp4_cb (Int) Int)

(assert (let ((?v_0 (___z4z____cb 0))) (not (= (or (not (___z6z____cb 0)) (and (<= ?v_0 20) (<= 0 ?v_0))) (___z3z____cb 0)))))

(assert (let ((?v_0 (___z5z____cb 0)) (?v_1 (___z2z____cb 0))) (let ((?v_2 (+ ?v_0 ?v_1))) (not (= (___z4z____cb 0) (traffic_e7_temp1_cb ?v_0 ?v_1 ?v_2))
))))

(assert (= (___z5z____cb 0) (traffic_e7_temp2_cb _base 0 1)))
(assert (let ((?v_0 (___z2z____cb 0))) (= (___z6z____cb 0) (or (and (<= ?v_0 1) (<= (- 1) ?v_0)) (or (= _base 0) (___z6z____cb (- 1)))))))
(assert (let ((?v_0 (___z4z____cb (- 1)))) (= (or (not (___z6z____cb (- 1))) (and (<= ?v_0 20) (<= 0 ?v_0))) (___z3z____cb (- 1)))))
(assert (let ((?v_0 (___z5z____cb (- 1))) (?v_1 (___z2z____cb (- 1)))) (let ((?v_2 (+ ?v_0 ?v_1))) (> (___z4z____cb (- 1)) (traffic_e7_temp3_cb ?v_0 ?v_1 ?v_2)))))
(assert (not (= (___z5z____cb (- 1)) (traffic_e7_temp4_cb _base))))
(assert (let ((?v_0 (___z2z____cb (- 1)))) (= (___z6z____cb (- 1)) (or (and (<= ?v_0 1) (<= (- 1) ?v_0)) (___z6z____cb (- 2))))))

(assert (___z3z____cb (- 1)))

(set-info :status sat)
(check-sat)
(get-model)
(exit)
