(set-logic LIA)

( declare-const bit Int )
( declare-const bit! Int )
( declare-const num Int )
( declare-const num! Int )
( declare-const num_orig Int )
( declare-const num_orig! Int )
( declare-const res Int )
( declare-const res! Int )

( declare-const bit_0 Int )
( declare-const bit_1 Int )
( declare-const bit_2 Int )
( declare-const bit_3 Int )
( declare-const bit_4 Int )
( declare-const num_0 Int )
( declare-const num_1 Int )
( declare-const num_2 Int )
( declare-const num_3 Int )
( declare-const num_orig_0 Int )
( declare-const num_orig_1 Int )
( declare-const res_0 Int )
( declare-const res_1 Int )
( declare-const res_2 Int )
( declare-const res_3 Int )
( declare-const res_4 Int )
( declare-const res_5 Int )

( define-fun inv-f( ( bit Int )( num Int )( num_orig Int )( res Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( bit Int )( num Int )( num_orig Int )( res Int )( bit_0 Int )( bit_1 Int )( bit_2 Int )( bit_3 Int )( bit_4 Int )( num_0 Int )( num_1 Int )( num_2 Int )( num_3 Int )( num_orig_0 Int )( num_orig_1 Int )( res_0 Int )( res_1 Int )( res_2 Int )( res_3 Int )( res_4 Int )( res_5 Int ) ) Bool
	( and
		( = bit bit_2 )
		( = num num_0 )
		( = num_orig num_orig_1 )
		( = res res_1 )
		( >= num_0 0 )
		( = res_1 0 )
		( = bit_1 ( << 1 30 ) )
		( = num_orig_1 num_0 )
		( = bit_2 ( + ( mod bit_1 num_0 ) 2 ) )
	)
)

( define-fun trans-f ( ( bit Int )( num Int )( num_orig Int )( res Int )( bit! Int )( num! Int )( num_orig! Int )( res! Int )( bit_0 Int )( bit_1 Int )( bit_2 Int )( bit_3 Int )( bit_4 Int )( num_0 Int )( num_1 Int )( num_2 Int )( num_3 Int )( num_orig_0 Int )( num_orig_1 Int )( res_0 Int )( res_1 Int )( res_2 Int )( res_3 Int )( res_4 Int )( res_5 Int ) ) Bool
	( or
		( and
			( = bit_3 bit )
			( = num_1 num )
			( = res_2 res )
			( = bit_3 bit! )
			( = num_1 num! )
			( = res_2 res! )
			( = num num! )
			( = num_orig num_orig! )
			( = res res! )
		)
		( and
			( = bit_3 bit )
			( = num_1 num )
			( = res_2 res )
			( not ( = bit_3 0 ) )
			( >= num_1 ( + res_2 bit_3 ) )
			( = num_2 ( + ( - num_1 res_2 ) bit_3 ) )
			( = res_3 ( + ( mod res_2 1 ) bit_3 ) )
			( = num_3 num_2 )
			( = res_4 res_3 )
			( = bit_4 ( mod bit_3 2 ) )
			( = bit_4 bit! )
			( = num_3 num! )
			( = res_4 res! )
			(= num_orig num_orig_1 )
			(= num_orig! num_orig_1 )
		)
		( and
			( = bit_3 bit )
			( = num_1 num )
			( = res_2 res )
			( not ( = bit_3 0 ) )
			( not ( >= num_1 ( + res_2 bit_3 ) ) )
			( = res_5 ( mod res_2 1 ) )
			( = num_3 num_1 )
			( = res_4 res_5 )
			( = bit_4 ( mod bit_3 2 ) )
			( = bit_4 bit! )
			( = num_3 num! )
			( = res_4 res! )
			(= num_orig num_orig_1 )
			(= num_orig! num_orig_1 )
		)
	)
)

( define-fun post-f ( ( bit Int )( num Int )( num_orig Int )( res Int )( bit_0 Int )( bit_1 Int )( bit_2 Int )( bit_3 Int )( bit_4 Int )( num_0 Int )( num_1 Int )( num_2 Int )( num_3 Int )( num_orig_0 Int )( num_orig_1 Int )( res_0 Int )( res_1 Int )( res_2 Int )( res_3 Int )( res_4 Int )( res_5 Int ) ) Bool
	( or
		( not
			( and
				( = bit bit_3)
				( = num num_1)
				( = num_orig num_orig_1)
				( = res res_2)
			)
		)
		( not
			( and
				( not ( not ( = bit_3 0 ) ) )
				( not ( <= ( * res_2 res_2 ) num_orig_1 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f bit num num_orig res bit_0 bit_1 bit_2 bit_3 bit_4 num_0 num_1 num_2 num_3 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5  )
		( inv-f bit num num_orig res )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f bit num num_orig res )
			( trans-f bit num num_orig res bit! num! num_orig! res! bit_0 bit_1 bit_2 bit_3 bit_4 num_0 num_1 num_2 num_3 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5 )
		)
		( inv-f bit! num! num_orig! res! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f bit num num_orig res  )
		( post-f bit num num_orig res bit_0 bit_1 bit_2 bit_3 bit_4 num_0 num_1 num_2 num_3 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5 )
	)
))
