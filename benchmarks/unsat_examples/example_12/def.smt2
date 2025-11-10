; setPowerValue_power_cb:
; while (a > b) { a >>= 1; c -= 1; } return c   over BV16 (mod 2^16)
(define-fun-rec setPowerValue_power_cb
  ((a (_ BitVec 16)) (b (_ BitVec 16)) (c (_ BitVec 16)))
  (_ BitVec 16)
  (ite (bvule a b)
      c
      (setPowerValue_power_cb (bvlshr a (_ bv1 16)) b (bvsub c (_ bv1 16)))))
    
; setPowerValue_ypower_cb:
; while (a > b) { a >>= 1; c -= 1; } return a   over BV16 (mod 2^16)
(define-fun-rec setPowerValue_ypower_cb
  ((a (_ BitVec 16)) (b (_ BitVec 16)) (c (_ BitVec 16)))
  (_ BitVec 16)
  (ite (bvule a b)
      a
      (setPowerValue_ypower_cb (bvlshr a (_ bv1 16)) b (bvsub c (_ bv1 16)))))