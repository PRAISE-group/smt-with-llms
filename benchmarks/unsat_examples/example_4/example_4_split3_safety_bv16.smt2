;(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const c (_ BitVec 16))
( declare-const c_ (_ BitVec 16))
( declare-const i (_ BitVec 16))
( declare-const i_ (_ BitVec 16))
( declare-const n (_ BitVec 16))
( declare-const n_ (_ BitVec 16))
( declare-const x (_ BitVec 16))
( declare-const x_ (_ BitVec 16))
( declare-const y (_ BitVec 16))
( declare-const y_ (_ BitVec 16))

( declare-const c_0 (_ BitVec 16))
( declare-const c_1 (_ BitVec 16))
( declare-const c_2 (_ BitVec 16))
( declare-const c_3 (_ BitVec 16))
( declare-const i_0 (_ BitVec 16))
( declare-const i_1 (_ BitVec 16))
( declare-const n_0 (_ BitVec 16))
( declare-const x_0 (_ BitVec 16))
( declare-const x_1 (_ BitVec 16))
( declare-const x_2 (_ BitVec 16))
( declare-const x_3 (_ BitVec 16))
( declare-const y_0 (_ BitVec 16))
( declare-const y_1 (_ BitVec 16))
( declare-const y_2 (_ BitVec 16))
( declare-const y_3 (_ BitVec 16))

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_100 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv100 16))))

(assert (in_0_100 c))
(assert (in_0_100 c_))
(assert (in_0_100 i))
(assert (in_0_100 i_))
(assert (in_0_100 n))
(assert (in_0_100 n_))

(assert (in_0_100 c_0))
(assert (in_0_100 c_1))
(assert (in_0_100 c_2))
(assert (in_0_100 c_3))
(assert (in_0_100 i_0))
(assert (in_0_100 i_1))
(assert (in_0_100 n_0))

; Closed Box Function: returns addition of two numbers
( declare-fun add_sum_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box Function: returns n-th Fibonacci number
( declare-fun fib_cb ((_ BitVec 16)) (_ BitVec 16) )

; add_sum_cb: a + b over 16-bit bitvectors (mod 2^16)
; (define-fun add_sum_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;   (bvadd a b)
; )

; ; fib_cb: N-th Fibonacci number over BV16 (mod 2^16)
; ; Tail-recursive helper: fib_it(i, a, b) returns F(i) with current pair (a=F(k), b=F(k+1))
; (define-fun-rec fib_it ((i (_ BitVec 16)) (a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;   (ite (= i #x0000)
;       a
;       (fib_it (bvsub i #x0001) b (bvadd a b)))
; )

; (define-fun fib_cb ((n (_ BitVec 16))) (_ BitVec 16)
;   (fib_it n #x0000 #x0001)
; )

( define-fun inv-f( ( c (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
; INVARIANT
 (and
    (bvuge n (_ bv0 16))
    (bvule i n)
    (= y (fib_cb (bvadd i (_ bv1 16))))
    (= x (fib_cb i)))
)

(define-fun loop ((i (_ BitVec 16)) (n (_ BitVec 16))) Bool
	( bvult i n )
)

(define-fun post-f ( ( c (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))) Bool
	(and (bvule (_ bv0 16) i) (bvule i n) (= x (fib_cb n)))
	;((0 <= i <= n) && (x == fib(n)))
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		(and ( inv-f c i n x y )
		(not (loop i n))
		)
		( post-f c i n x y )
	)
))

(check-sat)
;(get-model)
(exit)
