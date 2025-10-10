(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const a (_ BitVec 16))
( declare-const a! (_ BitVec 16))
( declare-const b (_ BitVec 16))
( declare-const b! (_ BitVec 16))
( declare-const m (_ BitVec 16))
( declare-const m! (_ BitVec 16))
( declare-const res (_ BitVec 16))
( declare-const res! (_ BitVec 16))
( declare-const x (_ BitVec 16))
( declare-const x! (_ BitVec 16))
( declare-const y (_ BitVec 16))
( declare-const y! (_ BitVec 16))

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

( define-fun inv-f( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
	true
)

( define-fun pre-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( a_0 (_ BitVec 16))( a_1 (_ BitVec 16))( a_2 (_ BitVec 16))( a_3 (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( m_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16))( res_3 (_ BitVec 16))( res_4 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16)) ) Bool
	( and
		( = a a_1 )
		( = b b_0 )
		( = m m_0 )
		( = res res_1 )
		( = x x_1 )
		( = y y_1 )
		( bvugt m_0 (_ bv0 16))
		( = x_1 a_0 )
		( = y_1 b_0 )
		( = res_1 (_ bv1 16))
		( = a_1 ( retmod_cb a_0 m_0 ) )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( m (_ BitVec 16) )( res (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a! (_ BitVec 16) )( b! (_ BitVec 16) )( m! (_ BitVec 16) )( res! (_ BitVec 16) )( x! (_ BitVec 16) )( y! (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( a_3 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( m_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = a_2 a )
			( = b_1 b )
			( = res_2 res )
			( = a_2 a! )
			( = b_1 b! )
			( = res_2 res! )
			( = a a! )
			( = m m! )
			( = res res! )
			( = x x! )
			( = y y! )
		)
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
			( = a_3 a! )
			( = b_2 b! )
			( = res_4 res! )
			(= m m_0 )
			(= m! m_0 )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
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
			( = a_3 a! )
			( = b_2 b! )
			( = res_4 res! )
			(= m m_0 )
			(= m! m_0 )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( m (_ BitVec 16))( res (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( a_0 (_ BitVec 16))( a_1 (_ BitVec 16))( a_2 (_ BitVec 16))( a_3 (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( m_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16))( res_3 (_ BitVec 16))( res_4 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16)) ) Bool
	( or
		( not
			( and
				( = a a_2)
				( = b b_0)
				( = m m_0)
				( = res res_2)
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( bvugt b_0 (_ bv0 16)) )
				( not ( = res_2 ( retmod_cb ( binpow_cb x_1 y_1 ) m_0 ) ) )
			)
		)
	)
)
; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f a b m res x y a_0 a_1 a_2 a_3 b_0 b_1 b_2 m_0 res_0 res_1 res_2 res_3 res_4 x_0 x_1 y_0 y_1 )
		( inv-f a b m res x y )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f a b m res x y )
			( trans-f a b m res x y a! b! m! res! x! y! a_0 a_1 a_2 a_3 b_0 b_1 b_2 m_0 res_0 res_1 res_2 res_3 res_4 x_0 x_1 y_0 y_1 )
		)
		( inv-f a! b! m! res! x! y! )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f a b m res x y  )
		( post-f a b m res x y a_0 a_1 a_2 a_3 b_0 b_1 b_2 m_0 res_0 res_1 res_2 res_3 res_4 x_0 x_1 y_0 y_1 )
	)
))

(check-sat)
(get-model)
(exit)