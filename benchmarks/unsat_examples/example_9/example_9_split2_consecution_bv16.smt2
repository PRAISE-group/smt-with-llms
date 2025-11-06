;(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const b (_ BitVec 16))
( declare-const b_ (_ BitVec 16))
( declare-const orig_x (_ BitVec 16))
( declare-const orig_x_ (_ BitVec 16))
( declare-const s (_ BitVec 16))
( declare-const s_ (_ BitVec 16))
( declare-const x (_ BitVec 16))
( declare-const x_ (_ BitVec 16))
( declare-const y (_ BitVec 16))
( declare-const y_ (_ BitVec 16))

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
;( declare-fun shift_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box Function: Integer Cube Root of input 'x'
;( declare-fun icbrt_cb ((_ BitVec 16)) (_ BitVec 16) )


(define-fun-rec icbrt_cb ((N (_ BitVec 16))) (_ BitVec 16)
  (let ((approx (ite (bvsle N #x0001) N (bvlshr N #x0002)))) ; N >> 2 ≈ cube root start
    (ite (or (= N #x0000) (= N #x0001))
         N
         (ite (bvsle (bvmul (bvmul approx approx) approx) N)
              approx
              (bvsub approx #x0001)))))

(define-fun shift_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (bvshl a b)
)

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_1000 ((x (_ BitVec 16))) Bool
  (and (bvsge x (_ bv0 16)) (bvsle x (_ bv100 16))))

(assert (in_0_1000 b))
(assert (in_0_1000 orig_x))
(assert (in_0_1000 s))
(assert (in_0_1000 x))
(assert (in_0_1000 y))

;(assert (bvuge orig_x (_ bv1 16)))

( define-fun inv-f( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
    (bvsge orig_x (bvadd x (bvshl (bvmul y (bvmul y y)) (bvadd (_ bv3 16) s) )))
)

( define-fun loop ( ( s (_ BitVec 16))) Bool
	( bvsge s (_ bv0 16)
	)
)

( define-fun trans-f ( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( b_ (_ BitVec 16))( orig_x_ (_ BitVec 16))( s_ (_ BitVec 16))( x_ (_ BitVec 16))( y_ (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( orig_x_0 (_ BitVec 16))( orig_x_1 (_ BitVec 16))( s_0 (_ BitVec 16))( s_1 (_ BitVec 16))( s_2 (_ BitVec 16))( s_3 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16))( y_4 (_ BitVec 16))( y_5 (_ BitVec 16)) ) Bool
	( or
		( and
			( = b_1 b )
			( = s_2 s )
			( = x_1 x )
			( = y_2 y )
			( = b_1 b_ )
			( = s_2 s_ )
			( = x_1 x_ )
			( = y_2 y_ )
			( = b b_ )
			( = orig_x orig_x_ )
			( = x x_ )
			( = y y_ )
			(not ( loop s_2 ))
		)
		( and
			( = b_1 b )
			( = s_2 s )
			( = x_1 x )
			( = y_2 y )
			( loop s_2 )
			( = y_3 ( bvmul (_ bv2 16) y_2 ) )
			;(= b_2 (bvshl (bvadd (_ bv1 16) (bvmul (_ bv3 16) (bvmul y_3 (bvadd y_3 (_ bv1 16)))) ) s_2))
			( = b_2 ( shift_cb ( bvadd ( bvmul ( bvmul (_ bv3 16) y_3 ) ( bvadd y_3 (_ bv1 16)) ) (_ bv1 16)) s_2 ) )
			( = s_3 ( bvsub s_2 (_ bv3 16) ) )
			( bvsge x_1 b_2 )
			( = x_2 ( bvsub x_1 b_2 ) )
			( = y_4 ( bvadd  y_3 (_ bv1 16)) )
			( = x_3 x_2 )
			( = y_5 y_4 )
			( = b_2 b_ )
			( = s_3 s_ )
			( = x_3 x_ )
			( = y_5 y_ )
			(= orig_x orig_x_1 )
			(= orig_x_ orig_x_1 )
		)
		( and
			( = b_1 b )
			( = s_2 s )
			( = x_1 x )
			( = y_2 y )
			( loop s_2 )
			( = y_3 ( bvmul (_ bv2 16) y_2 ) )
			;(= b_2 (bvshl (bvadd (_ bv1 16) (bvmul (_ bv3 16) (bvmul y_3 (bvadd y_3 (_ bv1 16)))) ) s_2))
			( = b_2 ( shift_cb ( bvadd  ( bvmul  ( bvmul  (_ bv3 16) y_3 ) ( bvadd  y_3 (_ bv1 16)) ) (_ bv1 16)) s_2 ) )
			( = s_3 ( bvsub s_2 (_ bv3 16) ) )
			( not ( bvsge x_1 b_2 ) )
			( = x_3 x_1 )
			( = y_5 y_3 )
			( = b_2 b_ )
			( = s_3 s_ )
			( = x_3 x_ )
			( = y_5 y_ )
			(= orig_x orig_x_1 )
			(= orig_x_ orig_x_1 )
		)
	)
)


; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( and
			( inv-f b orig_x s x y )
			(loop s)
			( trans-f b orig_x s x y b_ orig_x_ s_ x_ y_ b_0 b_1 b_2 orig_x_0 orig_x_1 s_0 s_1 s_2 s_3 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5 )
		)
		( inv-f b_ orig_x_ s_ x_ y_ )
	)
))

(check-sat)
;(get-model)
(exit)
