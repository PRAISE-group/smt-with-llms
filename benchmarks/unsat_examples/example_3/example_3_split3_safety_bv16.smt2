(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const a (_ BitVec 16))
( declare-const a_ (_ BitVec 16))
( declare-const b (_ BitVec 16))
( declare-const b_ (_ BitVec 16))
( declare-const result (_ BitVec 16))
( declare-const result_ (_ BitVec 16))
( declare-const x (_ BitVec 16))
( declare-const x_ (_ BitVec 16))
( declare-const y (_ BitVec 16))
( declare-const y_ (_ BitVec 16))

( declare-const a_0 (_ BitVec 16))
( declare-const a_1 (_ BitVec 16))
( declare-const a_2 (_ BitVec 16))
( declare-const b_0 (_ BitVec 16))
( declare-const b_1 (_ BitVec 16))
( declare-const b_2 (_ BitVec 16))
( declare-const result_0 (_ BitVec 16))
( declare-const result_1 (_ BitVec 16))
( declare-const result_2 (_ BitVec 16))
( declare-const x_0 (_ BitVec 16))
( declare-const x_1 (_ BitVec 16))
( declare-const y_0 (_ BitVec 16))
( declare-const y_1 (_ BitVec 16))

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_100 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv100 16))))

; INPUT VARIABLES CONSTRAINT
(assert (in_0_100 a))
(assert (in_0_100 a_))
(assert (in_0_100 b))
(assert (in_0_100 b_))
(assert (in_0_100 x))
(assert (in_0_100 x_))
(assert (in_0_100 y))
(assert (in_0_100 y_))

(assert (in_0_100 a_0))
(assert (in_0_100 a_1))
(assert (in_0_100 a_2))
(assert (in_0_100 b_0))
(assert (in_0_100 b_1))
(assert (in_0_100 b_2))
(assert (in_0_100 x_0))
(assert (in_0_100 x_1))
(assert (in_0_100 y_0))
(assert (in_0_100 y_1))
  
; Closed Box function: return a % b
( declare-fun retmod_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box function: return gcd(x, y). Greated common divisor of x and y
( declare-fun gcd_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )


( define-fun inv-f (( a (_ BitVec 16))( b (_ BitVec 16))( result (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
	; INVARIANT:
	( = (gcd_cb a b) (gcd_cb x y))
)

( define-fun pre-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( result (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( a_0 (_ BitVec 16))( a_1 (_ BitVec 16))( a_2 (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( result_0 (_ BitVec 16))( result_1 (_ BitVec 16))( result_2 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16)) ) Bool
	( and
		( = a a_0 )
		( = b b_0 )
		( = x x_1 )
		( = y y_1 )
		( = x_1 a_0 )
		( = y_1 b_0 )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( result (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( a_ (_ BitVec 16))( b_ (_ BitVec 16))( result_ (_ BitVec 16))( x_ (_ BitVec 16))( y_ (_ BitVec 16))( a_0 (_ BitVec 16))( a_1 (_ BitVec 16))( a_2 (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( result_0 (_ BitVec 16))( result_1 (_ BitVec 16))( result_2 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16)) ) Bool
	( or
		( and
			( = a_1 a )
			( = b_1 b )
			( = result_1 result )
			( = a_1 a_ )
			( = b_1 b_ )
			( = result_1 result_ )
			( = result result_ )
			( = x x_ )
			( = y y_ )
		)
		( and
			( = a_1 a )
			( = b_1 b )
			( = result_1 result )
			( not ( = ( retmod_cb a_1 b_1 ) (_ bv0 16)) )
			( = result_2 ( retmod_cb a_1 b_1 ) )
			( = a_2 b_1 )
			( = b_2 result_2 )
			( = a_2 a_ )
			( = b_2 b_ )
			( = result_2 result_ )
			(= x x_1 )
			(= x_ x_1 )
			(= y y_1 )
			(= y_ y_1 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( result (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( a_0 (_ BitVec 16))( a_1 (_ BitVec 16))( a_2 (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( result_0 (_ BitVec 16))( result_1 (_ BitVec 16))( result_2 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16)) ) Bool
	( or
		( not
			( and
				( = a a_1)
				( = b b_1)
				( = result result_1)
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( not ( = ( retmod_cb a_1 b_1 ) (_ bv0 16)) ) )
				( not ( = b_1 ( gcd_cb x_1 y_1 ) ) )
			)
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( inv-f a b result x y  )
		( post-f a b result x y a_0 a_1 a_2 b_0 b_1 b_2 result_0 result_1 result_2 x_0 x_1 y_0 y_1 )
	)
))

(check-sat)
(get-model)
(exit)
