(set-logic QF_BV)


; closed-box (uninterpreted) if for cube helper
( declare-fun if ((_ BitVec 16)) (_ BitVec 16) )
( declare-const a (_ BitVec 16) )
( declare-const a! (_ BitVec 16) )
( declare-const b (_ BitVec 16) )
( declare-const b! (_ BitVec 16) )
( declare-const i (_ BitVec 16) )
( declare-const i! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const res (_ BitVec 16) )
( declare-const res! (_ BitVec 16) )

( declare-const a_0 (_ BitVec 16) )
( declare-const b_0 (_ BitVec 16) )
( declare-const i_0 (_ BitVec 16) )
( declare-const i_1 (_ BitVec 16) )
( declare-const i_2 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const res_0 (_ BitVec 16) )
( declare-const res_1 (_ BitVec 16) )
( declare-const res_2 (_ BitVec 16) )

( define-fun inv-f( ( a (_ BitVec 16) )( b (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( a_0 (_ BitVec 16) )( b_0 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) ) ) Bool
	( and
		( = a a_0 )
		( = b b_0 )
		( = n n_0 )
		( >= n_0 0 )
		( < ( + ( + a_0 b_0 ) n_0 ) 10000 )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( a! (_ BitVec 16) )( b! (_ BitVec 16) )( i! (_ BitVec 16) )( n! (_ BitVec 16) )( res! (_ BitVec 16) )( a_0 (_ BitVec 16) )( b_0 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = i_1 i )
			( = res_1 res )
			( = i_1 i! )
			( = res_1 res! )
			( = n n_0 )
			( = n! n_0 )
			( = a a! )
			( = b b! )
			( = res res! )
		)
		( and
			( = i_1 i )
			( = res_1 res )
			( <= i_1 n_0 )
			( = res_2 ( + ( + ( + ( + ( + ( + ( + ( + ( +   )  ) ( * ( * 3 ( * a_0 a_0 ) ) b_0 ) ) ( * ( * 3 a_0 ) ( * b_0 b_0 ) ) ) ( * ( * ( * 3 a_0 ) a_0 ) i_1 ) ) ( * ( * ( * 3 a_0 ) i_1 ) i_1 ) ) ( * ( * ( * 3 b_0 ) b_0 ) i_1 ) ) ( * ( * ( * 3 b_0 ) i_1 ) i_1 ) ) ( * ( * ( * 6 a_0 ) b_0 ) i_1 ) ) )
			( = i_2 ( + i_1 1 ) )
			( = i_2 i! )
			( = res_2 res! )
			(= a a_0 )
			(= a! a_0 )
			(= b b_0 )
			(= b! b_0 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16) )( b (_ BitVec 16) )( i (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( a_0 (_ BitVec 16) )( b_0 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = a a_0)
				( = b b_0)
				( = i i_1)
				( = n n_0)
				( = res res_1)
			)
		)
		( not
			( and
				( not ( <= i_1 n_0 ) )
				( not ( = res_1 ( * ( * ( + ( + a_0 b_0 ) n_0 ) ( + ( + a_0 b_0 ) n_0 ) ) ( + ( + a_0 b_0 ) n_0 ) ) ) )
			)
		)
	)
)

( assert ( not
	( =>
		( inv-f a b i n res  )
		( post-f a b i n res a_0 b_0 i_0 i_1 i_2 n_0 res_0 res_1 res_2 )
	)
))

