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

; Closed Box Function: returns the modulo of two numbers a % b.
( declare-fun retmod_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box Function: returns a ^ b (a to the power of b) via bianry exponentiation.
( declare-fun binpow_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; (define-fun retmod_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;   (bvurem a b)
; )

;(define-fun-rec binpow_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;  (ite (= b #x0000)
;       #x0001
;       (bvmul a (binpow_cb a (bvsub b #x0001))))
;)

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_100 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv6 16))))

(assert (in_0_100 m))
(assert (in_0_100 m_))
(assert (in_0_100 x))
(assert (in_0_100 x_))
(assert (in_0_100 y))
(assert (in_0_100 y_))

(assert (in_0_100 m_0))
(assert (in_0_100 x_0))
(assert (in_0_100 x_1))
(assert (in_0_100 y_0))
(assert (in_0_100 y_1))

( define-fun inv-f( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
  (= (bvurem (bvmul res (binpow_cb a b)) m)
     (bvurem (binpow_cb x y) m))
)

( define-fun pre-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( a_0 (_ BitVec 16))( a_1 (_ BitVec 16))( a_2 (_ BitVec 16))( a_3 (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( m_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16))( res_3 (_ BitVec 16))( res_4 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16)) ) Bool
	( and
		( = a a_1 )
		( = b b_0 )
		( = m (_ bv1 16) )
		( = res res_1 )
		( = x x_1 )
		( = y y_1 )
		( bvugt (_ bv1 16) (_ bv0 16))
		( = x_1 a_0 )
		( = y_1 b_0 )
		( = res_1 (_ bv1 16))
		( = a_1 ( retmod_cb a_0 (_ bv1 16) ) )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( m (_ BitVec 16) )( res (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_ (_ BitVec 16) )( b_ (_ BitVec 16) )( m_ (_ BitVec 16) )( res_ (_ BitVec 16) )( x_ (_ BitVec 16) )( y_ (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( a_3 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( m_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = a_2 a )
			( = b_1 b )
			( = res_2 res )
			( = a_2 a_ )
			( = b_1 b_ )
			( = res_2 res_ )
			( = a a_ )
			( = m m_ )
			( = res res_ )
			( = x x_ )
			( = y y_ )
		)
		( and
			( = a_2 a )
			( = b_1 b )
			( = res_2 res )
			( bvugt b_1 (_ bv0 16) )
			( = ( bvand b_1 (_ bv1 16)) (_ bv1 16))
			( = res_3 ( retmod_cb ( bvmul ( bvmul res_2 (_ bv1 16) ) a_2 ) (_ bv1 16) ) )
			( = res_4 res_3 )
			( = a_3 ( retmod_cb ( bvmul ( bvmul a_2 (_ bv1 16) ) a_2 ) (_ bv1 16) ) )
			(= b_2 ( bvudiv b_1 (_ bv2 16) ) )
			( = a_3 a_ )
			( = b_2 b_ )
			( = res_4 res_ )
			(= m (_ bv1 16) )
			(= m_ (_ bv1 16) )
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
			( = a_3 ( retmod_cb ( bvmul ( bvmul a_2 (_ bv1 16) ) a_2 ) (_ bv1 16) ) )
			(= b_2 ( bvudiv b_1 (_ bv2 16) ) )
			( = a_3 a_ )
			( = b_2 b_ )
			( = res_4 res_ )
			(= m (_ bv1 16) )
			(= m_ (_ bv1 16) )
			(= x x_1 )
			(= x_ x_1 )
			(= y y_1 )
			(= y_ y_1 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( a_0 (_ BitVec 16))( a_1 (_ BitVec 16))( a_2 (_ BitVec 16))( a_3 (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( m_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16))( res_3 (_ BitVec 16))( res_4 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16)) ) Bool
	( or
		( not
			( and
				( = a a_2)
				( = b b_0)
				( = m (_ bv1 16))
				( = res res_2)
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( bvugt b_0 (_ bv0 16)) )
				( not ( = res_2 ( retmod_cb ( binpow_cb x_1 y_1 ) (_ bv1 16) ) ) )
			)
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f a b m res x y )
			( trans-f a b m res x y a_ b_ m_ res_ x_ y_ a_0 a_1 a_2 a_3 b_0 b_1 b_2 m_0 res_0 res_1 res_2 res_3 res_4 x_0 x_1 y_0 y_1 )
		)
		( inv-f a_ b_ m_ res_ x_ y_ )
	)
))

(check-sat)
;(get-model)
(exit)
