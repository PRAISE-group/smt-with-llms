(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const power (_ BitVec 16) )
( declare-const power_ (_ BitVec 16) )
( declare-const result (_ BitVec 16) )
( declare-const result_ (_ BitVec 16) )
( declare-const x (_ BitVec 16) )
( declare-const x_ (_ BitVec 16) )
( declare-const x_0 (_ BitVec 16) )
( declare-const x_0_ (_ BitVec 16) )
( declare-const y (_ BitVec 16) )
( declare-const y_ (_ BitVec 16) )
( declare-const y_power (_ BitVec 16) )
( declare-const y_power_ (_ BitVec 16) )

( declare-const power_0 (_ BitVec 16) )
( declare-const power_1 (_ BitVec 16) )
( declare-const result_0 (_ BitVec 16) )
( declare-const result_1 (_ BitVec 16) )
( declare-const x_1 (_ BitVec 16) )
( declare-const x_2 (_ BitVec 16) )
( declare-const x_0_0 (_ BitVec 16) )
( declare-const x_0_1 (_ BitVec 16) )
( declare-const y_0 (_ BitVec 16) )
( declare-const y_power_0 (_ BitVec 16) )
( declare-const y_power_1 (_ BitVec 16) )

; Closed Box Function: setPowerFunction takes 3 arguments and returns 1 argument.
; BV16 version
(declare-fun setPowerValue_power_cb  ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-fun setPowerValue_ypower_cb ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_1000 ((x (_ BitVec 16))) Bool
  (and (bvsge x (_ bv0 16)) (bvsle x (_ bv1000 16))))

(assert (in_0_1000 x_0))
(assert (in_0_1000 x_0_))
(assert (in_0_1000 x_0))
(assert (in_0_1000 x_1))
(assert (in_0_1000 x_2))
(assert (in_0_1000 x))
(assert (in_0_1000 x_))
(assert (in_0_1000 x_0_1))
(assert (in_0_1000 x_0_1))
(assert (bvuge y (_ bv1 16)))
(assert (bvuge y_0 (_ bv1 16)))

(define-fun loop ((x (_ BitVec 16)) (y (_ BitVec 16))) Bool
  (bvsge x y)
)

( define-fun inv-f( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) ) ) Bool
	(and
	  (= x_0 (bvadd x (bvmul y result)))
	  (bvuge x_0 (_ bv0 16))
	  (bvugt y (_ bv0 16))
	  (bvuge y_power (_ bv0 16))
	)
)

; ( define-fun pre-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
; 	( and
; 		(= power   power_1)
; 		(= result  result_1)
; 		(= x       x_0)
; 		(= x_0     x_0_1)
; 		(= y       y_0)
; 		(= y_power y_power_1)
; 		(bvuge x_0       (_ bv0 16))
; 		(not (= y_0      (_ bv0 16)))
; 		(bvuge y_power_0 (_ bv0 16))
; 		(= x_0_1   x_0)
; 		(= result_1 (_ bv0 16))
; 		(= power_1  (_ bv32 16))
; 		(= y_power_1 (bvshl y_0 power_1))
; 	)
; )

( define-fun trans-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power_ (_ BitVec 16) )( result_ (_ BitVec 16) )( x_ (_ BitVec 16) )( x_0_ (_ BitVec 16) )( y_ (_ BitVec 16) )( y_power_ (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = x_1 x )
			( = x_1 x_ )
			( = y y_0 )
			( = y_ y_0 )
			( = power power_ )
			( = result result_ )
			( = x_0 x_0_ )
			( = y_power y_power_ )
			(not (loop x y))
		)
		( and
			(= x_1 x)
			(bvuge x_1 y_0)
			(= power_1   (setPowerValue_power_cb  y_power x_1 power))
			(= y_power_1 (setPowerValue_ypower_cb y_power x_1 power))
			(= x_2 (bvsub x_1 y_power_1))
			(= x_2 x_)
			(= power power_1)
			(= power_ power_1)
			(= result result_1)
			(= result_ (bvadd result_1 (bvshl (_ bv1 16) power_1)))
			(= x_0 x_0_1)
			(= x_0_ x_0_1)
			(= y y_0)
			(= y_ y_0)
			(= y_power y_power_1)
			(= y_power_ y_power_1)
		)
	)
)

; ( define-fun post-f ( ( power (_ BitVec 16) )( result (_ BitVec 16) )( x (_ BitVec 16) )( x_0 (_ BitVec 16) )( y (_ BitVec 16) )( y_power (_ BitVec 16) )( power_0 (_ BitVec 16) )( power_1 (_ BitVec 16) )( result_0 (_ BitVec 16) )( result_1 (_ BitVec 16) )( x_0 (_ BitVec 16) )( x_1 (_ BitVec 16) )( x_2 (_ BitVec 16) )( x_0_0 (_ BitVec 16) )( x_0_1 (_ BitVec 16) )( y_0 (_ BitVec 16) )( y_power_0 (_ BitVec 16) )( y_power_1 (_ BitVec 16) ) ) Bool
; 	( or
; 		( not
; 			( and
; 				( = power power_1)
; 				( = result result_1)
; 				( = x x_1)
; 				( = x_0 x_0_1)
; 				( = y y_0)
; 				( = y_power y_power_1)
; 			)
; 		)
; 		( not
; 			( and
; 				(bvult x_1 y_0)
; 				(not (= x_0_1 (bvadd x_1 (bvmul y_0 result_1))))
; 			)
; 		)
; 	)
; )

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
;( assert ( not
;	( =>
;		( pre-f power result x x_0 y y_power power_0 power_1 result_0 result_1 x_0 x_1 x_2 x_0_0 x_0_1 y_0 y_power_0 y_power_1  )
;		( inv-f power result x x_0 y y_power )
;	)
;))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f power result x x_0 y y_power )
			(loop x y)
			( trans-f power result x x_0 y y_power power_ result_ x_ x_0_ y_ y_power_ power_0 power_1 result_0 result_1 x_0 x_1 x_2 x_0_0 x_0_1 y_0 y_power_0 y_power_1 )
		)
		( inv-f power_ result_ x_ x_0_ y_ y_power_ )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
;( assert ( not
;	( =>
;		( inv-f power result x x_0 y y_power  )
;		( post-f power result x x_0 y y_power power_0 power_1 result_0 result_1 x_0 x_1 x_2 x_0_0 x_0_1 y_0 y_power_0 y_power_1 )
;	)
;))

(check-sat)
;(get-model)
(exit)