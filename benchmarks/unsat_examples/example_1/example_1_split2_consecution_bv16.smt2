(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const i (_ BitVec 16))
( declare-const i_ (_ BitVec 16))
( declare-const n (_ BitVec 16))
( declare-const n_ (_ BitVec 16))
( declare-const sum (_ BitVec 16))
( declare-const sum_ (_ BitVec 16))

( declare-const i_0 (_ BitVec 16))
( declare-const i_1 (_ BitVec 16))
( declare-const i_2 (_ BitVec 16))
( declare-const n_0 (_ BitVec 16))
( declare-const sum_0 (_ BitVec 16))
( declare-const sum_1 (_ BitVec 16))
( declare-const sum_2 (_ BitVec 16))

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_100 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv100 16))))

; INPUT VARIABLES CONSTRAINT
(assert (in_0_100 i))
(assert (in_0_100 i_))
(assert (in_0_100 n))
(assert (in_0_100 n_))
(assert (in_0_100 i_0))
(assert (in_0_100 i_1))
(assert (in_0_100 i_2))
(assert (in_0_100 n_0))

; Closed Box Function: returns addition first argument + square of second argument
; (define-fun foo_cb ((x (_ BitVec 16)) (y (_ BitVec 16))) (_ BitVec 16)
;  	(bvadd x (bvmul y y))
; )
; Closed Box Function: returns addition first argument + square of second argument
( declare-fun foo_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16) )

; invariant predicate (here trivially true)
(define-fun inv-f ((i (_ BitVec 16)) (n (_ BitVec 16)) (sum (_ BitVec 16))) Bool
  ; INVARIANT
  (and
    (bvule i n)
    (= sum
       (bvudiv
         (bvmul
           (bvmul i
                 (bvadd (bvmul (_ bv1 16) i) (_ bv1 16)))
           (bvadd (bvmul (_ bv2 16) i) (_ bv1 16)))
         (_ bv6 16))))
)

( define-fun pre-f ( ( i (_ BitVec 16))( n (_ BitVec 16))( sum (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( i_2 (_ BitVec 16))( n_0 (_ BitVec 16))( sum_0 (_ BitVec 16))( sum_1 (_ BitVec 16))( sum_2 (_ BitVec 16)) ) Bool
	( and
		( = i i_0 )
		( = n n_0 )
		( = sum sum_0 )
		( bvuge n_0 (_ bv0 16))
		( bvule n_0 (_ bv1000 16))
		( = i_0 (_ bv0 16))
		( = sum_0 (_ bv0 16))
	)
)

( define-fun trans-f ( ( i (_ BitVec 16))( n (_ BitVec 16))( sum (_ BitVec 16))( i_ (_ BitVec 16))( n_ (_ BitVec 16))( sum_ (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( i_2 (_ BitVec 16))( n_0 (_ BitVec 16))( sum_0 (_ BitVec 16))( sum_1 (_ BitVec 16))( sum_2 (_ BitVec 16)) ) Bool
	( or
		( and
			( = i_1 i )
			( = sum_1 sum )
			( = i_1 i_ )
			( = sum_1 sum_ )
			( = n n_0 )
			( = n_ n_0 )
			( = sum sum_ )
		)
		( and
			( = i_1 i )
			( = sum_1 sum )
			( bvult i_1 n_0 )
			( = i_2 ( bvadd i_1 (_ bv1 16)) )
			( = sum_2 ( foo_cb sum_1 i_2 ) )
			( = i_2 i_ )
			( = sum_2 sum_ )
			(= n n_0 )
			(= n_ n_0 )
		)
	)
)

( define-fun post-f ( ( i (_ BitVec 16))( n (_ BitVec 16))( sum (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( i_2 (_ BitVec 16))( n_0 (_ BitVec 16))( sum_0 (_ BitVec 16))( sum_1 (_ BitVec 16))( sum_2 (_ BitVec 16)) ) Bool
	( or
		( not
			( and
				( = i i_1)
				( = n n_0)
				( = sum sum_1)
			)
		)
		( not
			( and
				( not ( bvult i_1 n_0 ) )
				( 
					not ( = sum_1 ( bvudiv ( bvmul  ( bvmul  n_0 ( bvadd  n_0 (_ bv6 16)) ) ( bvadd  ( bvmul  (_ bv2 16) n_0 ) (_ bv1 16)) )  (_ bv1 16) ) ) 
				)
			)
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i n sum )
			( trans-f i n sum i_ n_ sum_ i_0 i_1 i_2 n_0 sum_0 sum_1 sum_2 )
		)
		( inv-f i_ n_ sum_ )
	)
))


(assert (bvult i     (_ bv10000 16)))
(assert (bvult i_    (_ bv10000 16)))
(assert (bvult n     (_ bv10000 16)))
(assert (bvult n_    (_ bv10000 16)))
(assert (bvult sum   (_ bv10000 16)))
(assert (bvult sum_  (_ bv10000 16)))
(assert (bvult i_0   (_ bv10000 16)))
(assert (bvult i_1   (_ bv10000 16)))
(assert (bvult i_2   (_ bv10000 16)))
(assert (bvult n_0   (_ bv10000 16)))
(assert (bvult sum_0 (_ bv10000 16)))
(assert (bvult sum_1 (_ bv10000 16)))
(assert (bvult sum_2 (_ bv10000 16)))

(check-sat)
;(get-model)
(exit)
