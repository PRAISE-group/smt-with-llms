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
(declare-fun ___z2z___ (Int) Int)
(declare-fun ___z3z___ (Int) Bool)
(declare-fun ___z4z___ (Int) Int)
(declare-fun ___z5z___ (Int) Int)
(declare-fun ___z6z___ (Int) Bool)

(declare-fun traffic_e7_temp1 (Int Int Int) Int)
;	(ite (and (not (<= ?v_0 0)) (not (<= 0 ?v_1))) ?v_2 (ite (and (not (<= 10 ?v_0)) (not (<= ?v_1 0))) ?v_2 ?v_0))

;(ite (= _base 0) 0 (___z4z___ (- 1)))
(declare-fun traffic_e7_temp2 (Int Int Int) Int)

;(ite (and (not (<= ?v_0 0)) (not (<= 0 ?v_1))) ?v_2 (ite (and (not (<= 10 ?v_0)) (not (<= ?v_1 0))) ?v_2 ?v_0))
(declare-fun traffic_e7_temp3 (Int Int Int) Int)

;(ite (= _base (- 1)) 0 (___z4z___ (- 2)))
(declare-fun traffic_e7_temp4 (Int) Int)

(assert (let ((?v_0 (___z4z___ 0))) (not (= (or (not (___z6z___ 0)) (and (<= ?v_0 20) (<= 0 ?v_0))) (___z3z___ 0)))))

(assert (let ((?v_0 (___z5z___ 0)) (?v_1 (___z2z___ 0))) (let ((?v_2 (+ ?v_0 ?v_1))) (not (= (___z4z___ 0) (traffic_e7_temp1 ?v_0 ?v_1 ?v_2))
))))
	
(assert (= (___z5z___ 0) (traffic_e7_temp2 _base 0 1)))
(assert (let ((?v_0 (___z2z___ 0))) (= (___z6z___ 0) (or (and (<= ?v_0 1) (<= (- 1) ?v_0)) (or (= _base 0) (___z6z___ (- 1)))))))
(assert (let ((?v_0 (___z4z___ (- 1)))) (= (or (not (___z6z___ (- 1))) (and (<= ?v_0 20) (<= 0 ?v_0))) (___z3z___ (- 1)))))
(assert (let ((?v_0 (___z5z___ (- 1))) (?v_1 (___z2z___ (- 1)))) (let ((?v_2 (+ ?v_0 ?v_1))) (> (___z4z___ (- 1)) (traffic_e7_temp3 ?v_0 ?v_1 ?v_2)))))
(assert (not (= (___z5z___ (- 1)) (traffic_e7_temp4 _base))))
(assert (let ((?v_0 (___z2z___ (- 1)))) (= (___z6z___ (- 1)) (or (and (<= ?v_0 1) (<= (- 1) ?v_0)) (___z6z___ (- 2))))))

(assert (___z3z___ (- 1)))

(set-info :status sat)
(check-sat)
(get-model)
(exit)
