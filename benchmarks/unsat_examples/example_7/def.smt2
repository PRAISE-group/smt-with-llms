; lshift_cb: left shift a by b (BV16)
; a >> b
(define-fun rshift_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (bvlshr a b)
)

; pre_cb: while (a > b) a <<= c; return a  (BV16)
(define-fun-rec pre_cb ((a (_ BitVec 16)) (b (_ BitVec 16)) (c (_ BitVec 16))) (_ BitVec 16)
  (ite (bvugt a b)
       (pre_cb (bvshl a c) b c)
       a))
