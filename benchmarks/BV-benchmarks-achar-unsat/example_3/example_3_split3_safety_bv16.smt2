(set-logic QF_BV)


; closed-box (uninterpreted) swap for loop body
( declare-fun swap ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )
( declare-const a (_ BitVec 16) )
( declare-const a! (_ BitVec 16) )
( declare-const b (_ BitVec 16) )
( declare-const b! (_ BitVec 16) )
( declare-const result (_ BitVec 16) )
( declare-const result! (_ BitVec 16) )
( declare-const x (_ BitVec 16) )
( declare-const x! (_ BitVec 16) )
( declare-const y (_ BitVec 16) )
( declare-const y! (_ BitVec 16) )

( declare-const a_0 (_ BitVec 16) )
( declare-const a_1 (_ BitVec 16) )
( declare-const a_2 (_ BitVec 16) )
( declare-const b_0 (_ BitVec 16) )
( declare-const b_1 (_ BitVec 16) )
( declare-const b_2 (_ BitVec 16) )
( declare-const result_0 (_ BitVec 16) )
( declare-const result_1 (_ BitVec 16) )
( declare-const result_2 (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_1 (_ BitVec 16) )

( define-fun inv-f( ( a (_ BitVec 16) )( b (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( result_2 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( and
		( = a a_0 )
		( = b b_0 )
		( = x x_1 )
		( = y y_1 )
		( = x_1 a_0 )
		( = y_1 b_0 )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a! (_ BitVec 16) )( b! (_ BitVec 16) )( result! (_ BitVec 16) )( x! (_ BitVec 16) )( y! (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( result_2 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = a_1 a )
			( = b_1 b )
			( = result_1 result )
			( = a_1 a! )
			( = b_1 b! )
			( = result_1 result! )
			( = result result! )
			( = x x! )
			( = y y! )
		)
		( and
			( = a_1 a )
			( = b_1 b )
			( = result_1 result )
			( not ( = ( mod a_1 b_1 ) 0 ) )
			( = result_2  )
			( = a_2 b_1 )
			( = b_2 result_2 )
			( = a_2 a! )
			( = b_2 b! )
			( = result_2 result! )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_0 (_ BitVec 16) )( a_1 (_ BitVec 16) )( a_2 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( result_2 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = a a_1)
				( = b b_1)
				( = result result_1)
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( not ( = ( mod a_1 b_1 ) 0 ) ) )
				( not ( = b_1  ) )
			)
		)
	)
)

( assert ( not
	( =>
		( inv-f a b result x y  )
		( post-f a b result x y a_0 a_1 a_2 b_0 b_1 b_2 result_0 result_1 result_2 x_0 x_1 y_0 y_1 )
	)
))

