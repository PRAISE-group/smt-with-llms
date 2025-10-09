(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const bit (_ BitVec 16))
( declare-const bit! (_ BitVec 16))
( declare-const num (_ BitVec 16))
( declare-const num! (_ BitVec 16))
( declare-const num_orig (_ BitVec 16))
( declare-const num_orig! (_ BitVec 16))
( declare-const res (_ BitVec 16))
( declare-const res! (_ BitVec 16))

( declare-const bit_0 (_ BitVec 16))
( declare-const bit_1 (_ BitVec 16))
( declare-const bit_2 (_ BitVec 16))
( declare-const bit_3 (_ BitVec 16))
( declare-const bit_4 (_ BitVec 16))
( declare-const bit_5 (_ BitVec 16))
( declare-const num_0 (_ BitVec 16))
( declare-const num_orig_0 (_ BitVec 16))
( declare-const num_orig_1 (_ BitVec 16))
( declare-const res_0 (_ BitVec 16))
( declare-const res_1 (_ BitVec 16))
( declare-const res_2 (_ BitVec 16))
( declare-const res_3 (_ BitVec 16))
( declare-const res_4 (_ BitVec 16))
( declare-const res_5 (_ BitVec 16))

( declare-fun rightshift_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

( define-fun inv-f( ( bit (_ BitVec 16))( num (_ BitVec 16))( num_orig (_ BitVec 16))( res (_ BitVec 16)) ) Bool
	true
)

( define-fun pre-f ( ( bit (_ BitVec 16))( num (_ BitVec 16))( num_orig (_ BitVec 16))( res (_ BitVec 16))( bit_0 (_ BitVec 16))( bit_1 (_ BitVec 16))( bit_2 (_ BitVec 16))( bit_3 (_ BitVec 16))( bit_4 (_ BitVec 16))( bit_5 (_ BitVec 16))( num_0 (_ BitVec 16))( num_orig_0 (_ BitVec 16))( num_orig_1 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16))( res_3 (_ BitVec 16))( res_4 (_ BitVec 16))( res_5 (_ BitVec 16)) ) Bool
	( and
		( = bit bit_1 )
		( = num num_0 )
		( = num_orig num_orig_1 )
		( = res res_1 )
		( bvuge num_0 (_ bv0 16))
		( = res_1 (_ bv0 16))
		( = bit_1 ( rightshift_cb (_ bv1 16) (_ bv30 16) ) )
		( = num_orig_1 num_0 )
	)
)

( define-fun trans-f ( ( bit (_ BitVec 16))( num (_ BitVec 16))( num_orig (_ BitVec 16))( res (_ BitVec 16))( bit! (_ BitVec 16))( num! (_ BitVec 16))( num_orig! (_ BitVec 16))( res! (_ BitVec 16))( bit_0 (_ BitVec 16))( bit_1 (_ BitVec 16))( bit_2 (_ BitVec 16))( bit_3 (_ BitVec 16))( bit_4 (_ BitVec 16))( bit_5 (_ BitVec 16))( num_0 (_ BitVec 16))( num_orig_0 (_ BitVec 16))( num_orig_1 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16))( res_3 (_ BitVec 16))( res_4 (_ BitVec 16))( res_5 (_ BitVec 16)) ) Bool
	( or
		( and
			( = bit_2 bit )
			( = bit_2 bit! )
			( = num num_0 )
			( = num! num_0 )
			( = num_orig num_orig! )
			( = res res! )
		)
		( and
			( = bit_2 bit )
			( bvugt bit_2 num_0 )
			( = bit_3 ( rightshift_cb bit_2 (_ bv2 16) ) )
			( = bit_3 bit! )
			(= num num_0 )
			(= num! num_0 )
			(= num_orig num_orig_1 )
			(= num_orig! num_orig_1 )
			(= res res_1 )
			(= res! res_1 )
		)
	)
)

( define-fun post-f ( ( bit (_ BitVec 16))( num (_ BitVec 16))( num_orig (_ BitVec 16))( res (_ BitVec 16))( bit_0 (_ BitVec 16))( bit_1 (_ BitVec 16))( bit_2 (_ BitVec 16))( bit_3 (_ BitVec 16))( bit_4 (_ BitVec 16))( bit_5 (_ BitVec 16))( num_0 (_ BitVec 16))( num_orig_0 (_ BitVec 16))( num_orig_1 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16))( res_3 (_ BitVec 16))( res_4 (_ BitVec 16))( res_5 (_ BitVec 16)) ) Bool
	( or
		( not
			( and
				( = bit bit_2)
				( = num num_0)
				( = num_orig num_orig_1)
				( = res res_1)
			)
		)
		( not
			( and
				( not ( bvugt bit_2 num_0 ) )
				( = bit_4 bit_2 )
				( = res_2 res_0 )
				( not ( not ( = bit_4 (_ bv0 16)) ) )
				( not ( bvule ( bvmul res_2 res_2 ) num_orig_1 ) )
			)
		)
	)
)
; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( pre-f bit num num_orig res bit_0 bit_1 bit_2 bit_3 bit_4 bit_5 num_0 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5  )
		( inv-f bit num num_orig res )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( and
			( inv-f bit num num_orig res )
			( trans-f bit num num_orig res bit! num! num_orig! res! bit_0 bit_1 bit_2 bit_3 bit_4 bit_5 num_0 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5 )
		)
		( inv-f bit! num! num_orig! res! )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( inv-f bit num num_orig res  )
		( post-f bit num num_orig res bit_0 bit_1 bit_2 bit_3 bit_4 bit_5 num_0 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5 )
	)
))

(check-sat)
(get-model)
(exit)