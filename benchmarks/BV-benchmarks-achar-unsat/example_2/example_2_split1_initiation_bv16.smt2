(set-logic QF_BV)


; closed-box (uninterpreted) isprime for loop body
( declare-fun isprime () (_ BitVec 16) )
( declare-const i (_ BitVec 16) )
( declare-const i! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const out (_ BitVec 16) )
( declare-const out! (_ BitVec 16) )

( declare-const i_0 (_ BitVec 16) )
( declare-const i_1 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const out_0 (_ BitVec 16) )
( declare-const out_1 (_ BitVec 16) )
( declare-const out_2 (_ BitVec 16) )
( declare-const out_3 (_ BitVec 16) )
( declare-const out_4 (_ BitVec 16) )
( declare-const out_5 (_ BitVec 16) )

( define-fun inv-f( ( i (_ BitVec 16) )( n (_ BitVec 16) )( out (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( i (_ BitVec 16) )( n (_ BitVec 16) )( out (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( n_0 (_ BitVec 16) )( out_0 (_ BitVec 16) )( out_1 (_ BitVec 16) )( out_2 (_ BitVec 16) )( out_3 (_ BitVec 16) )( out_4 (_ BitVec 16) )( out_5 (_ BitVec 16) ) ) Bool
	( and
		( = i i_1 )
		( = n n_0 )
		( = out out_1 )
		( > n_0 2 )
		( = i_1 0 )
		( = out_1 0 )
	)
)

( define-fun trans-f ( ( i (_ BitVec 16) )( n (_ BitVec 16) )( out (_ BitVec 16) )( i! (_ BitVec 16) )( n! (_ BitVec 16) )( out! (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( n_0 (_ BitVec 16) )( out_0 (_ BitVec 16) )( out_1 (_ BitVec 16) )( out_2 (_ BitVec 16) )( out_3 (_ BitVec 16) )( out_4 (_ BitVec 16) )( out_5 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = out_2 out )
			( = out_2 out! )
			( = i i_1 )
			( = i! i_1 )
			( = n n_0 )
			( = n! n_0 )
			( = out out! )
		)
		( and
			( = out_2 out )
			( < i_1 n_0 )
			( = out_5 ( + out_2 2 ) )
			( = out_4 out_5 )
			( = out_4 out! )
			(= i i_1 )
			(= i! i_1 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = out_2 out )
			( < i_1 n_0 )
			( = out_3 ( + out_2 1 ) )
			( = out_4 out_3 )
			( = out_4 out! )
			(= i i_1 )
			(= i! i_1 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( not ( < i_1 n_0 ) )
			(= i i_1 )
			(= i! i_1 )
			(= n n_0 )
			(= n! n_0 )
			(= out out_1 )
			(= out! out_1 )
		)
	)
)

( define-fun post-f ( ( i (_ BitVec 16) )( n (_ BitVec 16) )( out (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( n_0 (_ BitVec 16) )( out_0 (_ BitVec 16) )( out_1 (_ BitVec 16) )( out_2 (_ BitVec 16) )( out_3 (_ BitVec 16) )( out_4 (_ BitVec 16) )( out_5 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = i i_1)
				( = n n_0)
				( = out out_2)
			)
		)
		( not
			( and
				( not ( < i_1 n_0 ) )
				( not ( = out_2 ( * 2 n_0 ) ) )
			)
		)
	)
)

( assert ( not
	( =>
		( pre-f i n out i_0 i_1 n_0 out_0 out_1 out_2 out_3 out_4 out_5  )
		( inv-f i n out )
	)
))

