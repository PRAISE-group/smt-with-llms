; foo_cb: sum + (i * i * i) over 16-bit bitvectors (mod 2^16)
(define-fun foo_cb ((sum (_ BitVec 16)) (i (_ BitVec 16))) (_ BitVec 16)
  (bvadd sum (bvmul i (bvmul i i)))
)
