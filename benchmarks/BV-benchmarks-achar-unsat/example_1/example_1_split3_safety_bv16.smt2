(set-logic QF_BV)


; closed-box (uninterpreted) foo to model opaque C function
( declare-fun foo ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )
( declare-const i (_ BitVec 16) )
( declare-const i! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const sum (_ BitVec 16) )
( declare-const sum! (_ BitVec 16) )

( declare-const i_0 (_ BitVec 16) )
( declare-const i_1 (_ BitVec 16) )
( declare-const i_2 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const sum_0 (_ BitVec 16) )
( declare-const sum_1 (_ BitVec 16) )
( declare-const sum_2 (_ BitVec 16) )

( define-fun inv-f( ( i (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( i (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) ) ) Bool
	( and
		( = i i_0 )
		( = n n_0 )
		( = sum sum_0 )
		( = i_0 0 )
		( = sum_0 0 )
		( >= n_0 0 )
	)
)

( define-fun trans-f ( ( i (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i! (_ BitVec 16) )( n! (_ BitVec 16) )( sum! (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = i_1 i )
			( = sum_1 sum )
			( = i_1 i! )
			( = sum_1 sum! )
			( = n n_0 )
			( = n! n_0 )
			( = sum sum! )
		)
		( and
			( = i_1 i )
			( = sum_1 sum )
			( < i_1 n_0 )
			( = i_2 ( + i_1 1 ) )
			( = sum_2  )
			( = i_2 i! )
			( = sum_2 sum! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = i i_1)
				( = n n_0)
				( = sum sum_1)
			)
		)
		( not
			( and
				( not ( < i_1 n_0 ) )
				( not ( = sum_1 ( / ( * ( * n_0 ( + n_0 1 ) ) ( + ( * 2 n_0 ) 1 ) ) 6 ) ) )
			)
		)
	)
)

( assert ( not
	( =>
		( inv-f i n sum  )
		( post-f i n sum i_0 i_1 i_2 n_0 sum_0 sum_1 sum_2 )
	)
))

