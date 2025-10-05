(set-logic QF_BV)


; closed-box (uninterpreted) if for loop/spec
( declare-fun if ((_ BitVec 16)) (_ BitVec 16) )
( declare-const a (_ BitVec 16) )
( declare-const a! (_ BitVec 16) )
( declare-const b (_ BitVec 16) )
( declare-const b! (_ BitVec 16) )
( declare-const res (_ BitVec 16) )
( declare-const res! (_ BitVec 16) )
( declare-const x (_ BitVec 16) )
( declare-const x! (_ BitVec 16) )
( declare-const y (_ BitVec 16) )
( declare-const y! (_ BitVec 16) )

( declare-const a_0 (_ BitVec 16) )
( declare-const a_1 (_ BitVec 16) )
( declare-const a_2 (_ BitVec 16) )
( declare-const b_0 (_ BitVec 16) )
( declare-const b_1 (_ BitVec 16) )
( declare-const res_0 (_ BitVec 16) )
( declare-const res_1 (_ BitVec 16) )
( declare-const res_2 (_ BitVec 16) )
( declare-const res_3 (_ BitVec 16) )
( declare-const res_4 (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_1 (_ BitVec 16) )

( define-fun inv-f( ( a (_ BitVec 16) )( b (_ BitVec 16) )( res (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( res (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( and
		( = a a_0 )
		( = b b_0 )
		( = res res_1 )
		( = x x_1 )
		( = y y_1 )
		( > b_0 0 )
		( = x_1 a_0 )
		( = y_1 b_0 )
		( = res_1 1 )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( res (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a! (_ BitVec 16) )( b! (_ BitVec 16) )( res! (_ BitVec 16) )( x! (_ BitVec 16) )( y! (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = a_1 a )
			( = res_2 res )
			( = a_1 a! )
			( = res_2 res! )
			( = b b_0 )
			( = b! b_0 )
			( = a a! )
			( = res res! )
			( = x x! )
			( = y y! )
		)
		( and
			( = a_1 a )
			( = res_2 res )
			( > b_0 0 )
			( & b_0 1 )
			( = res_3 ( * ( * res_2 1 ) a_1 ) )
			( = res_4 res_3 )
			( = a_2 ( * ( * a_1 1 ) a_1 ) )
			( = a_2 a! )
			( = res_4 res! )
			(= b b_0 )
			(= b! b_0 )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
		)
		( and
			( = a_1 a )
			( = res_2 res )
			( > b_0 0 )
			( not ( & b_0 1 ) )
			( = res_4 res_2 )
			( = a_2 ( * ( * a_1 1 ) a_1 ) )
			( = a_2 a! )
			( = res_4 res! )
			(= b b_0 )
			(= b! b_0 )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( res (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = a a_1)
				( = b b_0)
				( = res res_2)
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( > b_0 0 ) )
				( not ( = res_2  ) )
			)
		)
	)
)

( assert ( not
	( =>
		( and
			( inv-f a b res x y )
			( trans-f a b res x y a! b! res! x! y! a_0 a_1 a_2 b_0 b_1 res_0 res_1 res_2 res_3 res_4 x_0 x_1 y_0 y_1 )
		)
		( inv-f a! b! res! x! y! )
	)
))

