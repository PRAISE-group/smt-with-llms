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
( declare-fun shift_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; Closed Box Function: Integer Cube Root of input 'x'
( declare-fun icbrt_cb ((_ BitVec 16)) (_ BitVec 16) )

;(define-fun-rec icbrt_cb ((N (_ BitVec 16))) (_ BitVec 16)
;  (let ((approx (ite (bvule N #x0001) N (bvlshr N #x0002)))) ; N >> 2 ≈ cube root start
;    (ite (or (= N #x0000) (= N #x0001))
;         N
;         (ite (bvule (bvmul (bvmul approx approx) approx) N)
;              approx
;              (bvsub approx #x0001)))))
;
;(define-fun shift_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;  (bvlshr a b)
;)

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_1000 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv1000 16))))

(assert (in_0_1000 b))
(assert (in_0_1000 orig_x))
(assert (in_0_1000 s))
(assert (in_0_1000 x))
(assert (in_0_1000 y))

( define-fun inv-f( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16)) ) Bool
    (bvsge orig_x (bvadd x (bvshl (bvmul y (bvmul y y)) (bvadd (_ bv3 16) s) )))
)

( define-fun loop ( ( s (_ BitVec 16))) Bool
	( bvsge s (_ bv0 16)
	)
)

( define-fun post-f ( ( b (_ BitVec 16))( orig_x (_ BitVec 16))( s (_ BitVec 16))( x (_ BitVec 16))( y (_ BitVec 16))) Bool
	;((orig_x >= (y * y * y)))
	(bvsge orig_x (bvmul y (bvmul y y)))
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( inv-f b orig_x s x y  )
		(not (loop s))
		( post-f b orig_x s x y )
	)
))

(check-sat)
;(get-model)
(exit)
