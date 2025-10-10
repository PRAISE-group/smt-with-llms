(set-logic QF_UFBV)
(set-option :produce-models true)

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
( declare-const res_2 (_ BitVec 16) )
( declare-const res_3 (_ BitVec 16) )

; Closed Box Function: retuns the multiplication of its two arguments
( declare-fun multiply_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

; Closed Box Function: retuns the factorial of its argument
( declare-fun factorial_cb ((_ BitVec 16)) (_ BitVec 16))

( define-fun inv-f( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) ) ) Bool
  (and
    (= res (factorial_cb k))
    (bvule k n)
    (bvuge n (_ bv0 16)))
)

( define-fun pre-f ( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( k_0 (_ BitVec 16) )( k_1 (_ BitVec 16) )( k_2 (_ BitVec 16) )( k_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) ) ) Bool
	( and
		( = k k_1 )
		( = res res_1 )
		( = k_1 (_ bv1 16) )
		( = res_1 (_ bv1 16) )
	)
)

( define-fun trans-f ( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( k! (_ BitVec 16) )( n! (_ BitVec 16) )( res! (_ BitVec 16) )( k_0 (_ BitVec 16) )( k_1 (_ BitVec 16) )( k_2 (_ BitVec 16) )( k_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = k_2 k )
			( = res_2 res )
			( = k_2 k! )
			( = res_2 res! )
			( = n n_0 )
			( = n! n_0 )
			( = res res! )
		)
		( and
			( = k_2 k )
			( = res_2 res )
			( not ( = k_2 n_0 ) )
			( = k_3 ( bvadd k_2 (_ bv1 16) ) )
			( = res_3 ( multiply_cb res_2 k_3 ) )
			( = k_3 k! )
			( = res_3 res! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( k_0 (_ BitVec 16) )( k_1 (_ BitVec 16) )( k_2 (_ BitVec 16) )( k_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = k k_2)
				( = n n_0 )
				( = res res_2)
			)
		)
		( not
			( and
				( not ( not ( = k_2 n_0 ) ) )
				( not ( = res_2 ( factorial_cb n_0 ) ) )
			)
		)
	)
)
; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f k n res k_0 k_1 k_2 k_3 n_0 res_0 res_1 res_2 res_3  )
		( inv-f k n res )
	)
))


(check-sat)
(get-model)
(exit)