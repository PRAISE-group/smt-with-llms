(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const power (_ BitVec 16) )
( declare-const power! (_ BitVec 16) )
( declare-const result (_ BitVec 16) )
( declare-const result! (_ BitVec 16) )
( declare-const x (_ BitVec 16) )
( declare-const x! (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_0! (_ BitVec 16) )
( declare-const y (_ BitVec 16) )
( declare-const y! (_ BitVec 16) )
( declare-const y_power (_ BitVec 16) )
( declare-const y_power! (_ BitVec 16) )

( declare-const power_0 (_ BitVec 16) )
( declare-const power_1 (_ BitVec 16) )
( declare-const power_2 (_ BitVec 16) )
( declare-const power_3 (_ BitVec 16) )
( declare-const result_0 (_ BitVec 16) )
( declare-const result_1 (_ BitVec 16) )
( declare-const result_2 (_ BitVec 16) )
( declare-const result_3 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const x_2 (_ BitVec 16) )
( declare-const x_0_0 (_ BitVec 16) )
( declare-const x_0_1 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_power_0 (_ BitVec 16) )
( declare-const y_power_1 (_ BitVec 16) )

; setPowerValue(&y_power, &x, &power);
; 
; Closed Box Function: Set power value based on y_power and x
( declare-fun setPowerValue_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

( define-fun inv-f( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) ) ) Bool
    true
)

( define-fun pre-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( power_2 (_ BitVec 16) )( power_3 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( result_2 (_ BitVec 16) )( result_3 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
	( and
		( = power power_1 )
		( = result result_1 )
		( = x x_0 )
		( = x_0 x_0_1 )
		( = y y_0 )
		( = y_power y_power_1 )
		( bvuge x_0 (_ bv0 16) )
		( not ( = y_0 (_ bv0 16) ) )
		( bvuge y_power_0 (_ bv0 16) )
		( = x_0_1 x_0 )
		( = result_1 (_ bv0 16) )
		( = power_1 (_ bv32 16) )
		( = y_power_1 ( bvshl y_0 power_1 ) )
	)
)

( define-fun trans-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power! (_ BitVec 16) )( result! (_ BitVec 16) )( x! (_ BitVec 16) )( x_0! (_ BitVec 16) )( y! (_ BitVec 16) )( y_power! (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( power_2 (_ BitVec 16) )( power_3 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( result_2 (_ BitVec 16) )( result_3 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = power_2 power )
			( = result_2 result )
			( = x_1 x )
			( = power_2 power! )
			( = result_2 result! )
			( = x_1 x! )
			( = y y_0 )
			( = y! y_0 )
			( = power power! )
			( = result result! )
			( = x_0 x_0! )
			( = y_power y_power! )
		)
		( and
			( = power_2 power )
			( = result_2 result )
			( = x_1 x )
			( bvuge x_1 y_0 )
			( = power_3 ( setPowerValue_cb y_power_1 x_1 ) )
			( = result_3 ( bvadd result_2 ( bvshl (_ bv1 16) power_3 ) ) )
			( = x_2 ( bvsub x_1 y_power_1 ) )
			( = power_3 power! )
			( = result_3 result! )
			( = x_2 x! )
			(= x_0 x_0_1 )
			(= x_0! x_0_1 )
			(= y y_0 )
			(= y! y_0 )
			(= y_power y_power_1 )
			(= y_power! y_power_1 )
		)
	)
)

( define-fun post-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( power_2 (_ BitVec 16) )( power_3 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( result_2 (_ BitVec 16) )( result_3 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = power power_2)
				( = result result_2)
				( = x x_1)
				( = x_0 x_0_1)
				( = y y_0)
				( = y_power y_power_1)
			)
		)
		( not
			( and
				( not ( bvuge x_1 y_0 ) )
				( not ( = x_0_1 ( bvadd x_1 ( bvmul y_0 result_2 ) ) ) )
			)
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f power result x x_0 y y_power )
			( trans-f power result x x_0 y y_power power! result! x! x_0! y! y_power! power_0 power_1 power_2 power_3 result_0 result_1 result_2 result_3 x_0 x_1 x_2 x_0_0 x_0_1 y_0 y_power_0 y_power_1 )
		)
		( inv-f power! result! x! x_0! y! y_power! )
	)
))

(check-sat)
(get-model)
(exit)