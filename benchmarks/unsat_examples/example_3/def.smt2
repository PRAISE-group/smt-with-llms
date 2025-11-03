; Given:
; (declare-fun retmod_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
; Spec: return a % b over BV16 (unsigned remainder).

(set-logic QF_BV)

(define-fun retmod_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (bvurem a b)
)
; Given:
; (declare-fun gcd_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
; Spec: greatest common divisor of a and b over BV16 (unsigned).
; Uses Euclidean algorithm with recursion.

(define-fun-rec gcd_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (ite (= b #x0000)
       a
       (gcd_cb b (bvurem a b)))
)
