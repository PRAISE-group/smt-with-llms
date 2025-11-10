; predict_cb: returns floor(index / 10) for 0 <= index < 100, else 0
; Range is always 0..9 (BV16, unsigned semantics).
(define-fun predict_cb ((arg1 (_ BitVec 16))) (_ BitVec 16)
  (ite (bvult arg1 (_ bv100 16))
       (bvudiv arg1 (_ bv10 16))
       (_ bv0 16)))