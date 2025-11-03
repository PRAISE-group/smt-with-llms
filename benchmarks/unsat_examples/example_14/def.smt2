; multiply_cb: a * b over 16-bit bitvectors (mod 2^16)
(define-fun multiply_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (bvmul a b)
)

; factorial_cb: N! over BV16 (mod 2^16), tail-recursive iterator
(define-fun-rec factorial_it ((i (_ BitVec 16)) (acc (_ BitVec 16))) (_ BitVec 16)
  (ite (= i #x0000)
      acc
      (factorial_it (bvsub i #x0001) (bvmul acc i)))
)

(define-fun factorial_cb ((n (_ BitVec 16))) (_ BitVec 16)
  (factorial_it n #x0001)
)
