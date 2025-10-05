(set-logic QF_BV)


; closed-box (uninterpreted) foo for loop body
( declare-fun foo ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )
( declare-const bit (_ BitVec 16) )
( declare-const bit! (_ BitVec 16) )
( declare-const num (_ BitVec 16) )
( declare-const num! (_ BitVec 16) )
( declare-const num_orig (_ BitVec 16) )
( declare-const num_orig! (_ BitVec 16) )
( declare-const res (_ BitVec 16) )
( declare-const res! (_ BitVec 16) )

( declare-const bit_0 (_ BitVec 16) )
( declare-const bit_1 (_ BitVec 16) )
( declare-const bit_2 (_ BitVec 16) )
( declare-const bit_3 (_ BitVec 16) )
( declare-const num_0 (_ BitVec 16) )
( declare-const num_orig_0 (_ BitVec 16) )
( declare-const num_orig_1 (_ BitVec 16) )
( declare-const res_0 (_ BitVec 16) )
( declare-const res_1 (_ BitVec 16) )
( declare-const res_2 (_ BitVec 16) )
( declare-const res_3 (_ BitVec 16) )
( declare-const res_4 (_ BitVec 16) )
( declare-const res_5 (_ BitVec 16) )

( define-fun inv-f( ( bit (_ BitVec 16) )( num (_ BitVec 16) )( num_orig (_ BitVec 16) )( res (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( bit (_ BitVec 16) )( num (_ BitVec 16) )( num_orig (_ BitVec 16) )( res (_ BitVec 16) )( bit_0 (_ BitVec 16) )( bit_1 (_ BitVec 16) )( bit_2 (_ BitVec 16) )( bit_3 (_ BitVec 16) )( num_0 (_ BitVec 16) )( num_orig_0 (_ BitVec 16) )( num_orig_1 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( res_5 (_ BitVec 16) ) ) Bool
	( and
		( = bit bit_1 )
		( = num num_0 )
		( = num_orig num_orig_1 )
		( = res res_1 )
		( >= num_0 0 )
		( = res_1 0 )
		( = bit_1 ( << 1 30 ) )
		( = num_orig_1 num_0 )
	)
)

( define-fun trans-f ( ( bit (_ BitVec 16) )( num (_ BitVec 16) )( num_orig (_ BitVec 16) )( res (_ BitVec 16) )( bit! (_ BitVec 16) )( num! (_ BitVec 16) )( num_orig! (_ BitVec 16) )( res! (_ BitVec 16) )( bit_0 (_ BitVec 16) )( bit_1 (_ BitVec 16) )( bit_2 (_ BitVec 16) )( bit_3 (_ BitVec 16) )( num_0 (_ BitVec 16) )( num_orig_0 (_ BitVec 16) )( num_orig_1 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( res_5 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = bit bit_1 )
			( = bit! bit_1 )
			( = num num_0 )
			( = num! num_0 )
			( = num_orig num_orig! )
			( = res res! )
		)
		( and
			( > bit_1 num_0 )
			(= bit bit_1 )
			(= bit! bit_1 )
			(= num num_0 )
			(= num! num_0 )
			(= num_orig num_orig_1 )
			(= num_orig! num_orig_1 )
			(= res res_1 )
			(= res! res_1 )
		)
	)
)

( define-fun post-f ( ( bit (_ BitVec 16) )( num (_ BitVec 16) )( num_orig (_ BitVec 16) )( res (_ BitVec 16) )( bit_0 (_ BitVec 16) )( bit_1 (_ BitVec 16) )( bit_2 (_ BitVec 16) )( bit_3 (_ BitVec 16) )( num_0 (_ BitVec 16) )( num_orig_0 (_ BitVec 16) )( num_orig_1 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) )( res_4 (_ BitVec 16) )( res_5 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = bit bit_1)
				( = num num_0)
				( = num_orig num_orig_1)
				( = res res_1)
			)
		)
		( not
			( and
				( not ( > bit_1 num_0 ) )
				( = res_2 res_0 )
				( not ( not ( = bit_1 0 ) ) )
				( not ( <= ( * res_2 res_2 ) num_orig_1 ) )
			)
		)
	)
)

( assert ( not
	( =>
		( and
			( inv-f bit num num_orig res )
			( trans-f bit num num_orig res bit! num! num_orig! res! bit_0 bit_1 bit_2 bit_3 num_0 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5 )
		)
		( inv-f bit! num! num_orig! res! )
	)
))

