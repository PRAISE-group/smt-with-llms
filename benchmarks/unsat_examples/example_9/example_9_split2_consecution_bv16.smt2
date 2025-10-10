(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const b (_ BitVec 16))
( declare-const b! (_ BitVec 16))
( declare-const orig_x (_ BitVec 16))
( declare-const orig_x! (_ BitVec 16))
( declare-const s (_ BitVec 16))
( declare-const s! (_ BitVec 16))
( declare-const x (_ BitVec 16))
( declare-const x! (_ BitVec 16))
( declare-const y (_ BitVec 16))
( declare-const y! (_ BitVec 16))

( declare-const b_0 (_ BitVec 16))
( declare-const b_1 (_ BitVec 16))
( declare-const b_2 (_ BitVec 16))
( declare-const orig_x_0 (_ BitVec 16))
( declare-const orig_x_1 (_ BitVec 16))
( declare-const s_0 (_ BitVec 16))
( declare-const s_1 (_ BitVec 16))
( declare-const s_2 (_ BitVec 16))
( declare-const s_3 (_ BitVec 16))
( declare-const x_0 (_ BitVec 16))
( declare-const x_1 (_ BitVec 16))
( declare-const x_2 (_ BitVec 16))
( declare-const x_3 (_ BitVec 16))
( declare-const y_0 (_ BitVec 16))
( declare-const y_1 (_ BitVec 16))
( declare-const y_2 (_ BitVec 16))
( declare-const y_3 (_ BitVec 16))
( declare-const y_4 (_ BitVec 16))
( declare-const y_5 (_ BitVec 16))

; Closed Box Function: Shift input 'x' by 's' bits to the right
( declare-fun shift_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box Function: Integer Cube Root of input 'x'
( declare-fun icbrt_cb ((_ BitVec 16)) (_ BitVec 16) )


( define-fun inv-f( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
 (and
    (bvuge orig_x (bvmul y (bvmul y y)))
    (bvuge (icbrt_cb orig_x) y))
)

( define-fun pre-f ( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( orig_x_0 (_ BitVec 16))( orig_x_1 (_ BitVec 16))( s_0 (_ BitVec 16))( s_1 (_ BitVec 16))( s_2 (_ BitVec 16))( s_3 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16))( y_4 (_ BitVec 16))( y_5 (_ BitVec 16)) ) Bool
	( and
		( = orig_x orig_x_1 )
		( = s s_1 )
		( = x x_0 )
		( = y y_1 )
		( bvuge x_0 (_ bv0 16))
		( = y_1 (_ bv0 16))
		( = s_1 (_ bv30 16) )
		( = orig_x_1 x_0 )
	)
)

( define-fun trans-f ( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( b! (_ BitVec 16))( orig_x! (_ BitVec 16))( s! (_ BitVec 16))( x! (_ BitVec 16))( y! (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( orig_x_0 (_ BitVec 16))( orig_x_1 (_ BitVec 16))( s_0 (_ BitVec 16))( s_1 (_ BitVec 16))( s_2 (_ BitVec 16))( s_3 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16))( y_4 (_ BitVec 16))( y_5 (_ BitVec 16)) ) Bool
	( or
		( and
			( = b_1 b )
			( = s_2 s )
			( = x_1 x )
			( = y_2 y )
			( = b_1 b! )
			( = s_2 s! )
			( = x_1 x! )
			( = y_2 y! )
			( = b b! )
			( = orig_x orig_x! )
			( = x x! )
			( = y y! )
		)
		( and
			( = b_1 b )
			( = s_2 s )
			( = x_1 x )
			( = y_2 y )
			( bvuge s_2 (_ bv0 16))
			( = y_3 ( bvmul (_ bv2 16) y_2 ) )
			( = b_2 ( shift_cb ( bvadd ( bvmul ( bvmul (_ bv3 16) y_3 ) ( bvadd y_3 (_ bv1 16)) ) (_ bv1 16)) s_2 ) )
			( = s_3 ( bvsub s_2 (_ bv3 16) ) )
			( bvuge x_1 b_2 )
			( = x_2 ( bvsub x_1 b_2 ) )
			( = y_4 ( bvadd  y_3 (_ bv1 16)) )
			( = x_3 x_2 )
			( = y_5 y_4 )
			( = b_2 b! )
			( = s_3 s! )
			( = x_3 x! )
			( = y_5 y! )
			(= orig_x orig_x_1 )
			(= orig_x! orig_x_1 )
		)
		( and
			( = b_1 b )
			( = s_2 s )
			( = x_1 x )
			( = y_2 y )
			( bvuge s_2 (_ bv0 16))
			( = y_3 ( bvmul (_ bv2 16) y_2 ) )
			( = b_2 ( shift_cb ( bvadd  ( bvmul  ( bvmul  (_ bv3 16) y_3 ) ( bvadd  y_3 (_ bv1 16)) ) (_ bv1 16)) s_2 ) )
			( = s_3 ( bvsub s_2 (_ bv3 16) ) )
			( not ( bvuge x_1 b_2 ) )
			( = x_3 x_1 )
			( = y_5 y_3 )
			( = b_2 b! )
			( = s_3 s! )
			( = x_3 x! )
			( = y_5 y! )
			(= orig_x orig_x_1 )
			(= orig_x! orig_x_1 )
		)
	)
)

( define-fun post-f ( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( orig_x_0 (_ BitVec 16))( orig_x_1 (_ BitVec 16))( s_0 (_ BitVec 16))( s_1 (_ BitVec 16))( s_2 (_ BitVec 16))( s_3 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16))( y_4 (_ BitVec 16))( y_5 (_ BitVec 16)) ) Bool
	( or
		( not
			( and
				( = b b_1)
				( = orig_x orig_x_1)
				( = s s_2)
				( = x x_1)
				( = y y_2)
			)
		)
		( not
			( and
				( not ( bvuge s_2 (_ bv0 16)) )
				( not ( bvuge orig_x_1 ( bvmul ( bvmul  y_2 y_2 ) y_2 ) ) )
			)
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( and
			( inv-f b orig_x s x y )
			( trans-f b orig_x s x y b! orig_x! s! x! y! b_0 b_1 b_2 orig_x_0 orig_x_1 s_0 s_1 s_2 s_3 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5 )
		)
		( inv-f b! orig_x! s! x! y! )
	)
))

(check-sat)
(get-model)
(exit)