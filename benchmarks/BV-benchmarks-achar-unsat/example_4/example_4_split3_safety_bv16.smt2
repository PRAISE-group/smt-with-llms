(set-logic QF_BV)


; closed-box (uninterpreted) body for loop body
( declare-fun body ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )
( declare-const c (_ BitVec 16) )
( declare-const c! (_ BitVec 16) )
( declare-const i (_ BitVec 16) )
( declare-const i! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const x (_ BitVec 16) )
( declare-const x! (_ BitVec 16) )
( declare-const y (_ BitVec 16) )
( declare-const y! (_ BitVec 16) )

( declare-const c_0 (_ BitVec 16) )
( declare-const c_1 (_ BitVec 16) )
( declare-const c_2 (_ BitVec 16) )
( declare-const c_3 (_ BitVec 16) )
( declare-const i_0 (_ BitVec 16) )
( declare-const i_1 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const x_2 (_ BitVec 16) )
( declare-const x_3 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_1 (_ BitVec 16) )
( declare-const y_2 (_ BitVec 16) )
( declare-const y_3 (_ BitVec 16) )

( define-fun inv-f( ( c (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( c (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( c_0 (_ BitVec 16) )( c_1 (_ BitVec 16) )( c_2 (_ BitVec 16) )( c_3 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( n_0 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_3 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) )( y_2 (_ BitVec 16) )( y_3 (_ BitVec 16) ) ) Bool
	( and
		( = c c_1 )
		( = i i_1 )
		( = n n_0 )
		( = x x_1 )
		( = y y_1 )
		( > n_0 0 )
		( = x_1 0 )
		( = y_1 1 )
		( = i_1 0 )
		( = c_1 0 )
	)
)

( define-fun trans-f ( ( c (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( c! (_ BitVec 16) )( i! (_ BitVec 16) )( n! (_ BitVec 16) )( x! (_ BitVec 16) )( y! (_ BitVec 16) )( c_0 (_ BitVec 16) )( c_1 (_ BitVec 16) )( c_2 (_ BitVec 16) )( c_3 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( n_0 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_3 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) )( y_2 (_ BitVec 16) )( y_3 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = c_2 c )
			( = x_2 x )
			( = y_2 y )
			( = c_2 c! )
			( = x_2 x! )
			( = y_2 y! )
			( = i i_1 )
			( = i! i_1 )
			( = n n_0 )
			( = n! n_0 )
			( = c c! )
			( = x x! )
			( = y y! )
		)
		( and
			( = c_2 c )
			( = x_2 x )
			( = y_2 y )
			( < i_1 n_0 )
			( = c_3  )
			( = x_3 y_2 )
			( = y_3 c_3 )
			( = c_3 c! )
			( = x_3 x! )
			( = y_3 y! )
			(= i i_1 )
			(= i! i_1 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( c (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( c_0 (_ BitVec 16) )( c_1 (_ BitVec 16) )( c_2 (_ BitVec 16) )( c_3 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( n_0 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_3 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) )( y_2 (_ BitVec 16) )( y_3 (_ BitVec 16) ) ) Bool
	( and
		( or
			( not
				( and
					( = c c_2)
					( = i i_1)
					( = n n_0)
					( = x x_2)
					( = y y_2)
				)
			)
			( not
				( and
					( not ( < i_1 n_0 ) )
					( <= ( <= 0 i_1 ) n_0 )
					( not ( and ( <= ( <= 0 i_1 ) n_0 ) ( = x_2  ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_2)
					( = i i_1)
					( = n n_0)
					( = x x_2)
					( = y y_2)
				)
			)
			( not
				( and
					( not ( < i_1 n_0 ) )
					( not ( <= ( <= 0 i_1 ) n_0 ) )
					( not ( and ( <= ( <= 0 i_1 ) n_0 ) ( = x_2  ) ) )
				)
			)
		)
	)
)

( assert ( not
	( =>
		( inv-f c i n x y  )
		( post-f c i n x y c_0 c_1 c_2 c_3 i_0 i_1 n_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
	)
))

