;(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const a (_ BitVec 16))
( declare-const a_ (_ BitVec 16))
( declare-const b (_ BitVec 16))
( declare-const b_ (_ BitVec 16))
( declare-const m (_ BitVec 16))
( declare-const m_ (_ BitVec 16))
( declare-const res (_ BitVec 16))
( declare-const res_ (_ BitVec 16))
( declare-const x (_ BitVec 16))
( declare-const x_ (_ BitVec 16))
( declare-const y (_ BitVec 16))
( declare-const y_ (_ BitVec 16))

( declare-const a_0 (_ BitVec 16))
( declare-const a_1 (_ BitVec 16))
( declare-const a_2 (_ BitVec 16))
( declare-const a_3 (_ BitVec 16))
( declare-const b_0 (_ BitVec 16))
( declare-const b_1 (_ BitVec 16))
( declare-const b_2 (_ BitVec 16))
( declare-const m_0 (_ BitVec 16))
( declare-const res_0 (_ BitVec 16))
( declare-const res_1 (_ BitVec 16))
( declare-const res_2 (_ BitVec 16))
( declare-const res_3 (_ BitVec 16))
( declare-const res_4 (_ BitVec 16))
( declare-const x_0 (_ BitVec 16))
( declare-const x_1 (_ BitVec 16))
( declare-const y_0 (_ BitVec 16))
( declare-const y_1 (_ BitVec 16))

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_100 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv6 16))))

(assert (in_0_100 m))
(assert (in_0_100 x))
(assert (in_0_100 y))
(assert (in_0_100 a))
(assert (in_0_100 b))
(assert (in_0_100 res))
(assert (bvugt b (_ bv0 16)))
; Closed Box Function: returns the modulo of two numbers a % b.
;( declare-fun retmod_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box Function: returns a ^ b (a to the power of b) via bianry exponentiation.
;( declare-fun binpow_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

 (define-fun retmod_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
   (bvurem a b)
 )

(define-fun-rec binpow_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (ite (= b #x0000)
       #x0001
       (bvmul a (binpow_cb a (bvsub b #x0001))))
)

( define-fun inv-f( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
  (= (bvurem (bvmul res (binpow_cb a b)) m)
     (bvurem (binpow_cb x y) m))
)

(define-fun loop((z (_ BitVec 16))) Bool
   (bvugt z (_ bv0 16))
)

( define-fun post-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))) Bool
	;(res == binpow(x, y) % m)
	(= res (bvurem (binpow_cb x y) m))
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		(and (not (loop b)) ( inv-f a b m res x y  ))
		( post-f a b m res x y )
	)
))

(check-sat)
;(get-model)
(exit)
