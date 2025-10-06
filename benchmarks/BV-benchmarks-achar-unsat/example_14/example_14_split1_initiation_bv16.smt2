(set-logic QF_BV)


; closed-box (uninterpreted) __multiply for factorial multiply
( declare-fun __multiply ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )
( declare-const k (_ BitVec 16) )
( declare-const k! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const res (_ BitVec 16) )
( declare-const res! (_ BitVec 16) )

( declare-const k_0 (_ BitVec 16) )
( declare-const k_1 (_ BitVec 16) )
( declare-const k_2 (_ BitVec 16) )
( declare-const k_3 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const res_0 (_ BitVec 16) )
( declare-const res_1 (_ BitVec 16) )

( define-fun inv-f( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( k_0 (_ BitVec 16) )( k_1 (_ BitVec 16) )( k_2 (_ BitVec 16) )( k_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) ) ) Bool
	( and
		( = k k_1 )
		( = res res_1 )
		( = k_1 1 )
		( = res_1 1 )
	)
)

( define-fun trans-f ( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( k! (_ BitVec 16) )( n! (_ BitVec 16) )( res! (_ BitVec 16) )( k_0 (_ BitVec 16) )( k_1 (_ BitVec 16) )( k_2 (_ BitVec 16) )( k_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = k_2 k )
			( = k_2 k! )
			( = n n_0 )
			( = n! n_0 )
			( = res res! )
		)
		( and
			( = k_2 k )
			( not ( = k_2 n_0 ) )
			( = k_3 ( + k_2 1 ) )
			( = k_3 k! )
			(= n n_0 )
			(= n! n_0 )
			(= res res_1 )
			(= res! res_1 )
		)
	)
)

( define-fun post-f ( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( k_0 (_ BitVec 16) )( k_1 (_ BitVec 16) )( k_2 (_ BitVec 16) )( k_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = k k_2)
				( = n n_0 )
				( = res res_1)
			)
		)
		( not
			( and
				( not ( not ( = k_2 n_0 ) ) )
				( not ( = res_1  ) )
			)
		)
	)
)

( assert ( not
	( =>
		( pre-f k n res k_0 k_1 k_2 k_3 n_0 res_0 res_1  )
		( inv-f k n res )
	)
))

