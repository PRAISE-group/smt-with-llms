; retmod_cb: a % b over 16-bit bitvectors (unsigned, mod 2^16)
(define-fun retmod_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (bvurem a b)
)

; binpow_cb: a^b over BV16 using binary exponentiation (mod 2^16)
(define-fun-rec binpow_it ((base (_ BitVec 16)) (exp (_ BitVec 16)) (acc (_ BitVec 16))) (_ BitVec 16)
  (ite (= exp #x0000)
      acc
      (let ((acc2 (ite (= (bvand exp #x0001) #x0001) (bvmul acc base) acc))
            (base2 (bvmul base base))
            (exp2 (bvlshr exp #x0001)))
        (binpow_it base2 exp2 acc2)))
)

(define-fun binpow_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (binpow_it a b #x0001)
)
