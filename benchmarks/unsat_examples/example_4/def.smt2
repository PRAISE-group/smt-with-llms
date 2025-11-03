; add_sum_cb: a + b over 16-bit bitvectors (mod 2^16)
(define-fun add_sum_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (bvadd a b)
)

; fib_cb: N-th Fibonacci number over BV16 (mod 2^16)
; Tail-recursive helper: fib_it(i, a, b) returns F(i) with current pair (a=F(k), b=F(k+1))
(define-fun-rec fib_it ((i (_ BitVec 16)) (a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (ite (= i #x0000)
      a
      (fib_it (bvsub i #x0001) b (bvadd a b)))
)

(define-fun fib_cb ((n (_ BitVec 16))) (_ BitVec 16)
  (fib_it n #x0000 #x0001)
)