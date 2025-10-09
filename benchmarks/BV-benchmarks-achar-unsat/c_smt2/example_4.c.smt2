(set-logic QF_UFBV)
(set-option :produce-models true)
; regenerate again this file from Code2Inv
( declare-const c (_ BitVec 16))
( declare-const c! (_ BitVec 16))
( declare-const i (_ BitVec 16))
( declare-const i! (_ BitVec 16))
( declare-const n (_ BitVec 16))
( declare-const n! (_ BitVec 16))
( declare-const x (_ BitVec 16))
( declare-const x! (_ BitVec 16))
( declare-const y (_ BitVec 16))
( declare-const y! (_ BitVec 16))

( declare-const c_0 (_ BitVec 16))
( declare-const c_1 (_ BitVec 16))
( declare-const c_2 (_ BitVec 16))
( declare-const c_3 (_ BitVec 16))
( declare-const i_0 (_ BitVec 16))
( declare-const i_1 (_ BitVec 16))
( declare-const n_0 (_ BitVec 16))
( declare-const x_0 (_ BitVec 16))
( declare-const x_1 (_ BitVec 16))
( declare-const x_2 (_ BitVec 16))
( declare-const x_3 (_ BitVec 16))
( declare-const y_0 (_ BitVec 16))
( declare-const y_1 (_ BitVec 16))
( declare-const y_2 (_ BitVec 16))
( declare-const y_3 (_ BitVec 16))

( declare-fun add_sum_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

( declare-fun fib_cb ((_ BitVec 16)) (_ BitVec 16) )

( define-fun inv-f( ( c (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
	true
)

( define-fun pre-f ( ( c (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( c_0 (_ BitVec 16))( c_1 (_ BitVec 16))( c_2 (_ BitVec 16))( c_3 (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( n_0 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16)) ) Bool
	( and
		( = c c_1 )
		( = i i_1 )
		( = n n_0 )
		( = x x_1 )
		( = y y_1 )
		( bvugt n_0 (_ bv0 16))
		( = x_1 (_ bv0 16))
		( = y_1 (_ bv1 16))
		( = i_1 (_ bv0 16))
		( = c_1 (_ bv0 16))
	)
)

( define-fun trans-f ( ( c (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( c! (_ BitVec 16))( i! (_ BitVec 16))( n! (_ BitVec 16))( x! (_ BitVec 16))( y! (_ BitVec 16))( c_0 (_ BitVec 16))( c_1 (_ BitVec 16))( c_2 (_ BitVec 16))( c_3 (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( n_0 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16)) ) Bool
	( or
		( and
			( = c_2 c )
			( = x_2 x )
			( = y_2 y )
			( = c_2 c! )
			( = x_2 x! )
			( = y_2 y! )
			( = i i_1 )
			( = i! i_1 )
			( = n n_0 )
			( = n! n_0 )
			( = c c! )
			( = x x! )
			( = y y! )
		)
		( and
			( = c_2 c )
			( = x_2 x )
			( = y_2 y )
			( bvult i_1 n_0 )
			( = c_3 ( add_sum_cb x_2 y_2 ) )
			( = x_3 y_2 )
			( = y_3 c_3 )
			( = c_3 c! )
			( = x_3 x! )
			( = y_3 y! )
			(= i i_1 )
			(= i! i_1 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

(define-fun post-f ( ( c (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( c_0 (_ BitVec 16))( c_1 (_ BitVec 16))( c_2 (_ BitVec 16))( c_3 (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( n_0 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16)) ) Bool
	(and
		(or
			(not
				(and
					(= c c_2)
					(= i i_1)
					(= n n_0)
					(= x x_2)
					(= y y_2)
				)
			)
			(not
				(and
					(not (bvult i_1 n_0))
					(bvuge i_1 (_ bv0 16))
					(bvule i_1 n_0)
					(not
						(and
							(and (bvuge i_1 (_ bv0 16)) (bvule i_1 n_0))
							(= x_2 (fib_cb n_0))
						)
					)
				)
			)
		)
		(or
			(not
				(and
					(= c c_2)
					(= i i_1)
					(= n n_0)
					(= x x_2)
					(= y y_2)
				)
			)
			(not
				(and
					(not (bvult i_1 n_0))
					(not (and (bvuge i_1 (_ bv0 16)) (bvule i_1 n_0)))
					(not
						(and
							(and (bvuge i_1 (_ bv0 16)) (bvule i_1 n_0))
							(= x_2 (fib_cb n_0))
						)
					)
				)
			)
		)
	)
)


; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( pre-f c i n x y c_0 c_1 c_2 c_3 i_0 i_1 n_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3  )
		( inv-f c i n x y )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( and
			( inv-f c i n x y )
			( trans-f c i n x y c! i! n! x! y! c_0 c_1 c_2 c_3 i_0 i_1 n_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
		)
		( inv-f c! i! n! x! y! )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( inv-f c i n x y  )
		( post-f c i n x y c_0 c_1 c_2 c_3 i_0 i_1 n_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
	)
))

(check-sat)
(get-model)
(exit)