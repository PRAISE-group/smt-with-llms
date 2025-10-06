(set-logic QF_BV)


; closed-box (uninterpreted) Example for sum-of-cubes helper
( declare-fun Example ((_ BitVec 16)) (_ BitVec 16) )
( declare-const i (_ BitVec 16) )
( declare-const i! (_ BitVec 16) )
( declare-const lin_sum (_ BitVec 16) )
( declare-const lin_sum! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const sum (_ BitVec 16) )
( declare-const sum! (_ BitVec 16) )

( declare-const i_0 (_ BitVec 16) )
( declare-const i_1 (_ BitVec 16) )
( declare-const i_2 (_ BitVec 16) )
( declare-const i_3 (_ BitVec 16) )
( declare-const lin_sum_0 (_ BitVec 16) )
( declare-const lin_sum_1 (_ BitVec 16) )
( declare-const lin_sum_2 (_ BitVec 16) )
( declare-const lin_sum_3 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const sum_0 (_ BitVec 16) )
( declare-const sum_1 (_ BitVec 16) )
( declare-const sum_2 (_ BitVec 16) )
( declare-const sum_3 (_ BitVec 16) )

( define-fun inv-f( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( i_3 (_ BitVec 16) )( lin_sum_0 (_ BitVec 16) )( lin_sum_1 (_ BitVec 16) )( lin_sum_2 (_ BitVec 16) )( lin_sum_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	( and
		( = i i_1 )
		( = lin_sum lin_sum_1 )
		( = n n_0 )
		( = sum sum_1 )
		( = i_1 0 )
		( = sum_1 0 )
		( = lin_sum_1 0 )
		( >= n_0 0 )
	)
)

( define-fun trans-f ( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i! (_ BitVec 16) )( lin_sum! (_ BitVec 16) )( n! (_ BitVec 16) )( sum! (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( i_3 (_ BitVec 16) )( lin_sum_0 (_ BitVec 16) )( lin_sum_1 (_ BitVec 16) )( lin_sum_2 (_ BitVec 16) )( lin_sum_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = i_2 i )
			( = lin_sum_2 lin_sum )
			( = sum_2 sum )
			( = i_2 i! )
			( = lin_sum_2 lin_sum! )
			( = sum_2 sum! )
			( = n n_0 )
			( = n! n_0 )
			( = lin_sum lin_sum! )
			( = sum sum! )
		)
		( and
			( = i_2 i )
			( = lin_sum_2 lin_sum )
			( = sum_2 sum )
			( < i_2 n_0 )
			( = i_3 ( + i_2 1 ) )
			( = lin_sum_3 ( + lin_sum_2 i_3 ) )
			( = sum_3  )
			( = i_3 i! )
			( = lin_sum_3 lin_sum! )
			( = sum_3 sum! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( i_3 (_ BitVec 16) )( lin_sum_0 (_ BitVec 16) )( lin_sum_1 (_ BitVec 16) )( lin_sum_2 (_ BitVec 16) )( lin_sum_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = lin_sum lin_sum_2)
				( = n n_0)
				( = sum sum_2)
			)
		)
		( not
			( and
				( not ( < i_2 n_0 ) )
				( not ( = sum_2 ( * lin_sum_2 lin_sum_2 ) ) )
			)
		)
	)
)

( assert ( not
	( =>
		( inv-f i lin_sum n sum  )
		( post-f i lin_sum n sum i_0 i_1 i_2 i_3 lin_sum_0 lin_sum_1 lin_sum_2 lin_sum_3 n_0 sum_0 sum_1 sum_2 sum_3 )
	)
))

