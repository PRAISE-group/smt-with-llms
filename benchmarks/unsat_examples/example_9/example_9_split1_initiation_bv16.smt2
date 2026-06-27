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

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_1000 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv100 16))))

(assert (in_0_1000 b))
(assert (in_0_1000 orig_x))
(assert (in_0_1000 s))
(assert (in_0_1000 x))
(assert (in_0_1000 y))

                 
; Closed Box Function: Shift input 'x' by 's' bits to the right
( declare-fun shift_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box Function: Integer Cube Root of input 'x'
( declare-fun icbrt_cb ((_ BitVec 16)) (_ BitVec 16) )

;(assert  (forall ((N (_ BitVec 16)))    (let ((r (icbrt_cb N)))      (and        (bvule (bvmul r (bvmul r r)) N)        (bvult N               (bvmul (bvadd r #x0001)                       (bvmul (bvadd r #x0001)                               (bvadd r #x0001))))))))
;(assert  (forall ((a (_ BitVec 16))           (b (_ BitVec 16)))    (= (shift_cb a b)       (bvshl a b))))

;(define-fun-rec icbrt_cb ((N (_ BitVec 16))) (_ BitVec 16)
;  (let ((approx (ite (bvule N #x0001) N (bvlshr N #x0002)))) ; N >> 2 ≈ cube root start
;    (ite (or (= N #x0000) (= N #x0001))
;         N
;         (ite (bvule (bvmul (bvmul approx approx) approx) N)
;              approx
;              (bvsub approx #x0001)))))

;(define-fun shift_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;  (bvlshr a b)
;)


( define-fun inv-f( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
    (bvsge orig_x (bvadd x (bvshl (bvmul y (bvmul y y)) (bvadd (_ bv3 16) s) )))
)

( define-fun pre-f ( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))( b_0 (_ BitVec 16))( b_1 (_ BitVec 16))( b_2 (_ BitVec 16))( orig_x_0 (_ BitVec 16))( orig_x_1 (_ BitVec 16))( s_0 (_ BitVec 16))( s_1 (_ BitVec 16))( s_2 (_ BitVec 16))( s_3 (_ BitVec 16))( x_0 (_ BitVec 16))( x_1 (_ BitVec 16))( x_2 (_ BitVec 16))( x_3 (_ BitVec 16))( y_0 (_ BitVec 16))( y_1 (_ BitVec 16))( y_2 (_ BitVec 16))( y_3 (_ BitVec 16))( y_4 (_ BitVec 16))( y_5 (_ BitVec 16)) ) Bool
	( and
		( = orig_x orig_x_1 )
		( = s s_1 )
		( = x x_0 )
		( = y y_1 )
		( bvsge x_0 (_ bv0 16))
		( = y_1 (_ bv0 16))
		( = s_1 (_ bv30 16) )
		( = orig_x_1 x_0 )
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( pre-f b orig_x s x y b_0 b_1 b_2 orig_x_0 orig_x_1 s_0 s_1 s_2 s_3 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5  )
		( inv-f b orig_x s x y )
	)
))

(check-sat)
;(get-model)
(exit)
