(set-logic QF_BV)


; closed-box (uninterpreted) setPowerValue for division loop helper
( declare-fun setPowerValue ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )
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
( declare-const result_0 (_ BitVec 16) )
( declare-const result_1 (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const x_2 (_ BitVec 16) )
( declare-const x_0_0 (_ BitVec 16) )
( declare-const x_0_1 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_power_0 (_ BitVec 16) )
( declare-const y_power_1 (_ BitVec 16) )

( define-fun inv-f( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
	( and
		( = power power_1 )
		( = result result_1 )
		( = x x_0 )
		( = x_0 x_0_1 )
		( = y y_0 )
		( = y_power y_power_1 )
		( >= x_0 0 )
		( not ( = y_0 0 ) )
		( >= y_power_0 0 )
		( = x_0_1 x_0 )
		( = result_1 0 )
		( = power_1 32 )
		( = y_power_1 ( << y_0 power_1 ) )
	)
)

( define-fun trans-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power! (_ BitVec 16) )( result! (_ BitVec 16) )( x! (_ BitVec 16) )( x_0! (_ BitVec 16) )( y! (_ BitVec 16) )( y_power! (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = x_1 x )
			( = x_1 x! )
			( = y y_0 )
			( = y! y_0 )
			( = power power! )
			( = result result! )
			( = x_0 x_0! )
			( = y_power y_power! )
		)
		( and
			( = x_1 x )
			( >= x_1 y_0 )
			( = x_2 ( - x_1 y_power_1 ) )
			( = x_2 x! )
			(= power power_1 )
			(= power! power_1 )
			(= result result_1 )
			(= result! result_1 )
			(= x_0 x_0_1 )
			(= x_0! x_0_1 )
			(= y y_0 )
			(= y! y_0 )
			(= y_power y_power_1 )
			(= y_power! y_power_1 )
		)
	)
)

( define-fun post-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = power power_1)
				( = result result_1)
				( = x x_1)
				( = x_0 x_0_1)
				( = y y_0)
				( = y_power y_power_1)
			)
		)
		( not
			( and
				( not ( >= x_1 y_0 ) )
				( not ( = x_0_1 ( + x_1 ( * y_0 result_1 ) ) ) )
			)
		)
	)
)

( assert ( not
	( =>
		( and
			( inv-f power result x x_0 y y_power )
			( trans-f power result x x_0 y y_power power! result! x! x_0! y! y_power! power_0 power_1 result_0 result_1 x_0 x_1 x_2 x_0_0 x_0_1 y_0 y_power_0 y_power_1 )
		)
		( inv-f power! result! x! x_0! y! y_power! )
	)
))

