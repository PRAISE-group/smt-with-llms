(set-logic QF_UFBV)
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
( declare-fun binpow_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

;(assert  (and    (forall ((a (_ BitVec 16)))      (= (binpow_cb a #x0000)         #x0001))    (forall ((a (_ BitVec 16))             (b (_ BitVec 16)))      (=> (bvugt b #x0000)          (= (binpow_cb a b)             (bvmul a                    (binpow_cb a (bvsub b #x0001))))))))

 (define-fun retmod_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
   (bvurem a b)
 )

;(define-fun-rec binpow_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;  (ite (= b #x0000)
;       #x0001
;       (bvmul a (binpow_cb a (bvsub b #x0001))))
;)

( define-fun inv-f( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
  (= (bvurem (bvmul res (binpow_cb a b)) m)
     (bvurem (binpow_cb x y) m))
)

(define-fun loop ((z (_ BitVec 16))) Bool
   (bvult (_ bv0 16) z)
)

( define-fun trans-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( m (_ BitVec 16) )( res (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_ (_ BitVec 16) )( b_ (_ BitVec 16) )( m_ (_ BitVec 16) )( res_ (_ BitVec 16) )( x_ (_ BitVec 16) )( y_ (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( a_3 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( m_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = a_2 a )
			( = b_1 b )
			( = res_2 res )
			( bvugt b_1 (_ bv0 16) )
			( = ( bvand b_1 (_ bv1 16)) (_ bv1 16))
			( = res_3 ( retmod_cb ( bvmul ( bvmul res_2 (_ bv1 16) ) a_2 ) m_0 ) )
			( = res_4 res_3 )
			( = a_3 ( retmod_cb ( bvmul ( bvmul a_2 (_ bv1 16) ) a_2 ) m_0 ) )
			(= b_2 ( bvudiv b_1 (_ bv2 16) ) )
			( = a_3 a_ )
			( = b_2 b_ )
			( = res_4 res_ )
			(= m m_0 )
			(= m_ m_0 )
			(= x x_1 )
			(= x_ x_1 )
			(= y y_1 )
			(= y_ y_1 )
		)
		( and
			( = a_2 a )
			( = b_1 b )
			( = res_2 res )
			( bvugt b_1 (_ bv0 16) )
			( not ( = ( bvand b_1 (_ bv1 16)) (_ bv1 16)) )
			( = res_4 res_2 )
			( = a_3 ( retmod_cb ( bvmul ( bvmul a_2 (_ bv1 16) ) a_2 ) m_0 ) )
			(= b_2 ( bvudiv b_1 (_ bv2 16) ) )
			( = a_3 a_ )
			( = b_2 b_ )
			( = res_4 res_ )
			(= m m_0 )
			(= m_ m_0 )
			(= x x_1 )
			(= x_ x_1 )
			(= y y_1 )
			(= y_ y_1 )
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f a b m res x y )
			(loop b)
			( trans-f a b m res x y a_ b_ m_ res_ x_ y_ a_0 a_1 a_2 a_3 b_0 b_1 b_2 m_0 res_0 res_1 res_2 res_3 res_4 x_0 x_1 y_0 y_1 )
		)
		( inv-f a_ b_ m_ res_ x_ y_ )
	)
))

(check-sat)
;(get-model)
(exit)
