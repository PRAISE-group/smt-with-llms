(set-logic QF_BV)


; closed-box (uninterpreted) main for multiply loop
( declare-fun main () (_ BitVec 16) )
( declare-const a (_ BitVec 16) )
( declare-const a! (_ BitVec 16) )
( declare-const b (_ BitVec 16) )
( declare-const b! (_ BitVec 16) )
( declare-const r (_ BitVec 16) )
( declare-const r! (_ BitVec 16) )
( declare-const shift (_ BitVec 16) )
( declare-const shift! (_ BitVec 16) )
( declare-const x (_ BitVec 16) )
( declare-const x! (_ BitVec 16) )
( declare-const y (_ BitVec 16) )
( declare-const y! (_ BitVec 16) )

( declare-const a_0 (_ BitVec 16) )
( declare-const b_0 (_ BitVec 16) )
( declare-const b_1 (_ BitVec 16) )
( declare-const b_2 (_ BitVec 16) )
( declare-const b_3 (_ BitVec 16) )
( declare-const r_0 (_ BitVec 16) )
( declare-const r_1 (_ BitVec 16) )
( declare-const r_2 (_ BitVec 16) )
( declare-const r_3 (_ BitVec 16) )
( declare-const r_4 (_ BitVec 16) )
( declare-const shift_0 (_ BitVec 16) )
( declare-const shift_1 (_ BitVec 16) )
( declare-const shift_2 (_ BitVec 16) )
( declare-const shift_3 (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_1 (_ BitVec 16) )

( define-fun inv-f( ( a (_ BitVec 16) )( b (_ BitVec 16) )( r (_ BitVec 16) )( shift (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( r (_ BitVec 16) )( shift (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_0 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( b_3 (_ BitVec 16) )( r_0 (_ BitVec 16) )( r_1 (_ BitVec 16) )( r_2 (_ BitVec 16) )( r_3 (_ BitVec 16) )( r_4 (_ BitVec 16) )( shift_0 (_ BitVec 16) )( shift_1 (_ BitVec 16) )( shift_2 (_ BitVec 16) )( shift_3 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( and
		( = a a_0 )
		( = b b_0 )
		( = r r_1 )
		( = shift shift_1 )
		( = x x_1 )
		( = y y_1 )
		( = x_1 a_0 )
		( = y_1 b_0 )
		( = r_1 0 )
		( = shift_1 0 )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( r (_ BitVec 16) )( shift (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a! (_ BitVec 16) )( b! (_ BitVec 16) )( r! (_ BitVec 16) )( shift! (_ BitVec 16) )( x! (_ BitVec 16) )( y! (_ BitVec 16) )( a_0 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( b_3 (_ BitVec 16) )( r_0 (_ BitVec 16) )( r_1 (_ BitVec 16) )( r_2 (_ BitVec 16) )( r_3 (_ BitVec 16) )( r_4 (_ BitVec 16) )( shift_0 (_ BitVec 16) )( shift_1 (_ BitVec 16) )( shift_2 (_ BitVec 16) )( shift_3 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = b_1 b )
			( = r_2 r )
			( = shift_2 shift )
			( = b_1 b! )
			( = r_2 r! )
			( = shift_2 shift! )
			( = a a! )
			( = r r! )
			( = shift shift! )
			( = x x! )
			( = y y! )
		)
		( and
			( = b_1 b )
			( = r_2 r )
			( = shift_2 shift )
			( not ( = b_1 0 ) )
			( = shift_3  )
			shift_3
			( = b_2 b_1 )
			( = r_3 r_2 )
			( = b_2 b! )
			( = r_3 r! )
			( = shift_3 shift! )
			(= a a_0 )
			(= a! a_0 )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
		)
		( and
			( = b_1 b )
			( = r_2 r )
			( = shift_2 shift )
			( not ( = b_1 0 ) )
			( = shift_3  )
			( not shift_3 )
			( = r_4 ( + r_2 a_0 ) )
			( = b_3 ( - b_1 1 ) )
			( = b_2 b_3 )
			( = r_3 r_4 )
			( = b_2 b! )
			( = r_3 r! )
			( = shift_3 shift! )
			(= a a_0 )
			(= a! a_0 )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( r (_ BitVec 16) )( shift (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( a_0 (_ BitVec 16) )( b_0 (_ BitVec 16) )( b_1 (_ BitVec 16) )( b_2 (_ BitVec 16) )( b_3 (_ BitVec 16) )( r_0 (_ BitVec 16) )( r_1 (_ BitVec 16) )( r_2 (_ BitVec 16) )( r_3 (_ BitVec 16) )( r_4 (_ BitVec 16) )( shift_0 (_ BitVec 16) )( shift_1 (_ BitVec 16) )( shift_2 (_ BitVec 16) )( shift_3 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = a a_0)
				( = b b_1)
				( = r r_2)
				( = shift shift_2)
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( not ( = b_1 0 ) ) )
				( not ( = r_2 ( * x_1 y_1 ) ) )
			)
		)
	)
)

( assert ( not
	( =>
		( pre-f a b r shift x y a_0 b_0 b_1 b_2 b_3 r_0 r_1 r_2 r_3 r_4 shift_0 shift_1 shift_2 shift_3 x_0 x_1 y_0 y_1  )
		( inv-f a b r shift x y )
	)
))

