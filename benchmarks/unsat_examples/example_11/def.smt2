; cube_cb: n * n * n over 16-bit bitvectors (mod 2^16)
(define-fun cube_cb ((n (_ BitVec 16))) (_ BitVec 16)
  (bvmul n (bvmul n n))
)
; sum_cubes_cb: return a^3 + b^3 + n^3 over BV16
(define-fun sum_cubes_cb ((a (_ BitVec 16)) (b (_ BitVec 16)) (n (_ BitVec 16))) (_ BitVec 16)
  (bvadd (bvadd (cube_cb a) (cube_cb b)) (cube_cb n))
) 