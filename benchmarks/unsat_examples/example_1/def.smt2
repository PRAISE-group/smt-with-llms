; Given:
; (declare-fun foo_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
; Spec: return sum + (i * i) over BV16 (mod 2^16 arithmetic).

(set-logic QF_BV)

(define-fun foo_cb ((sum (_ BitVec 16)) (i (_ BitVec 16))) (_ BitVec 16)
  (bvadd sum (bvmul i i))
)
