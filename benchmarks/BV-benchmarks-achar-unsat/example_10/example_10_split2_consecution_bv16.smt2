(set-logic QF_BV)


; closed-box (uninterpreted) pthread_mutex_lock for lock/asm loop
( declare-fun pthread_mutex_lock ((_ BitVec 16)) (_ BitVec 16) )
( declare-const lock (_ BitVec 16) )
( declare-const lock! (_ BitVec 16) )
( declare-const x (_ BitVec 16) )
( declare-const x! (_ BitVec 16) )
( declare-const y (_ BitVec 16) )
( declare-const y! (_ BitVec 16) )
( declare-const tmp (_ BitVec 16) )
( declare-const tmp! (_ BitVec 16) )

( declare-const lock_0 (_ BitVec 16) )
( declare-const lock_1 (_ BitVec 16) )
( declare-const lock_2 (_ BitVec 16) )
( declare-const lock_3 (_ BitVec 16) )
( declare-const lock_4 (_ BitVec 16) )
( declare-const lock_5 (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const x_2 (_ BitVec 16) )
( declare-const x_3 (_ BitVec 16) )
( declare-const x_4 (_ BitVec 16) )
( declare-const x_5 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_1 (_ BitVec 16) )
( declare-const y_2 (_ BitVec 16) )
( declare-const y_3 (_ BitVec 16) )

( define-fun inv-f( ( lock (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( tmp (_ BitVec 16) ) ) Bool
__INV__

)

( define-fun pre-f ( ( lock (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( tmp (_ BitVec 16) )( lock_0 (_ BitVec 16) )( lock_1 (_ BitVec 16) )( lock_2 (_ BitVec 16) )( lock_3 (_ BitVec 16) )( lock_4 (_ BitVec 16) )( lock_5 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_3 (_ BitVec 16) )( x_4 (_ BitVec 16) )( x_5 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) )( y_2 (_ BitVec 16) )( y_3 (_ BitVec 16) ) ) Bool
	( and
		( = lock lock_1 )
		( = x x_1 )
		( = y y_0 )
		( = x_1 y_0 )
		( = lock_1 1 )
	)
)

( define-fun trans-f ( ( lock (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( tmp (_ BitVec 16) )( lock! (_ BitVec 16) )( x! (_ BitVec 16) )( y! (_ BitVec 16) )( tmp! (_ BitVec 16) )( lock_0 (_ BitVec 16) )( lock_1 (_ BitVec 16) )( lock_2 (_ BitVec 16) )( lock_3 (_ BitVec 16) )( lock_4 (_ BitVec 16) )( lock_5 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_3 (_ BitVec 16) )( x_4 (_ BitVec 16) )( x_5 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) )( y_2 (_ BitVec 16) )( y_3 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = lock_2 lock )
			( = x_2 x )
			( = y_1 y )
			( = lock_2 lock! )
			( = x_2 x! )
			( = y_1 y! )
			( = lock lock! )
			(= tmp tmp! )
		)
		( and
			( = lock_2 lock )
			( = x_2 x )
			( = y_1 y )
			( not ( = x_2 y_1 ) )
			( = lock_3 1 )
			( = x_3 y_1 )
			( = lock_4 lock_3 )
			( = x_4 x_3 )
			( = y_2 y_1 )
			( = lock_4 lock! )
			( = x_4 x! )
			( = y_2 y! )
			(= tmp tmp! )
		)
		( and
			( = lock_2 lock )
			( = x_2 x )
			( = y_1 y )
			( not ( = x_2 y_1 ) )
			( = lock_5 0 )
			( = x_5 y_1 )
			( = y_3 ( + y_1 1 ) )
			( = lock_4 lock_5 )
			( = x_4 x_5 )
			( = y_2 y_3 )
			( = lock_4 lock! )
			( = x_4 x! )
			( = y_2 y! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( lock (_ BitVec 16) )( x (_ BitVec 16) )( y (_ BitVec 16) )( tmp (_ BitVec 16) )( lock_0 (_ BitVec 16) )( lock_1 (_ BitVec 16) )( lock_2 (_ BitVec 16) )( lock_3 (_ BitVec 16) )( lock_4 (_ BitVec 16) )( lock_5 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_3 (_ BitVec 16) )( x_4 (_ BitVec 16) )( x_5 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_1 (_ BitVec 16) )( y_2 (_ BitVec 16) )( y_3 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = lock lock_2)
				( = x x_2)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( not ( = x_2 y_1 ) ) )
				( not ( = lock_2 1 ) )
			)
		)
	)
)

( assert ( not
	( =>
		( and
			( inv-f lock x y tmp )
			( trans-f lock x y tmp lock! x! y! tmp! lock_0 lock_1 lock_2 lock_3 lock_4 lock_5 x_0 x_1 x_2 x_3 x_4 x_5 y_0 y_1 y_2 y_3 )
		)
		( inv-f lock! x! y! tmp! )
	)
))

