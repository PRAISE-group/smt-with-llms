; builtin_ctz_cb: count trailing zeros of a 16-bit bitvector.
; Convention: ctz(0x0000) = 16 (i.e., #x0010).
(define-fun-rec builtin_ctz_cb ((x (_ BitVec 16))) (_ BitVec 16)
  (ite (= x #x0000)
       #x0010
       (ite (= (bvand x #x0001) #x0001)
            #x0000
            (bvadd #x0001 (builtin_ctz_cb (bvlshr x #x0001))))))
