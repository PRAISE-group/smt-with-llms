;(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const k (_ BitVec 16) )
( declare-const k_ (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n_ (_ BitVec 16) )
( declare-const res (_ BitVec 16) )
( declare-const res_ (_ BitVec 16) )

( declare-const k_0 (_ BitVec 16) )
( declare-const k_1 (_ BitVec 16) )
( declare-const k_2 (_ BitVec 16) )
( declare-const k_3 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const res_0 (_ BitVec 16) )
( declare-const res_1 (_ BitVec 16) )
( declare-const res_2 (_ BitVec 16) )
( declare-const res_3 (_ BitVec 16) )

; Closed Box Function: retuns the multiplication of its two arguments
( declare-fun multiply_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

; Closed Box Function: retuns the factorial of its argument
( declare-fun factorial_cb ((_ BitVec 16)) (_ BitVec 16))

;(define-fun multiply_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
;  (bvmul a b)
;)
;(define-fun-rec factorial_cb ((N (_ BitVec 16))) (_ BitVec 16)
;  (ite (bvule N #x0001)
;       #x0001
;       (bvmul N (factorial_cb (bvsub N #x0001))))
;)

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_1000 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv1 16)) (bvule x (_ bv10 16))))

(assert (in_0_1000 k))
(assert (in_0_1000 n))
(assert (in_0_1000 res))

( define-fun inv-f( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) ) ) Bool
  (and
    (= res (factorial_cb k))
    (bvule k n)
    (bvuge n (_ bv0 16)))
)

( define-fun loop ( ( k (_ BitVec 16) )( n (_ BitVec 16) )) Bool
	( not (= k n)
	)
)

( define-fun post-f ( ( k (_ BitVec 16) )( n (_ BitVec 16) )( res (_ BitVec 16) )( k_0 (_ BitVec 16) )( k_1 (_ BitVec 16) )( k_2 (_ BitVec 16) )( k_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( res_0 (_ BitVec 16) )( res_1 (_ BitVec 16) )( res_2 (_ BitVec 16) )( res_3 (_ BitVec 16) ) ) Bool
	;(res == factorial(n))
	(= res (factorial_cb n))
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		(and (not (loop k n)) ( inv-f k n res  ))
		( post-f k n res k_0 k_1 k_2 k_3 n_0 res_0 res_1 res_2 res_3 )
	)
))

(check-sat)
;(get-model)
(exit)
