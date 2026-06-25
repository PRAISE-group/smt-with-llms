;(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const i (_ BitVec 16) )
( declare-const i_ (_ BitVec 16) )
( declare-const lin_sum (_ BitVec 16) )
( declare-const lin_sum_ (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n_ (_ BitVec 16) )
( declare-const sum (_ BitVec 16) )
( declare-const sum_ (_ BitVec 16) )

( declare-const i_0 (_ BitVec 16) )
( declare-const i_1 (_ BitVec 16) )
( declare-const i_2 (_ BitVec 16) )
( declare-const i_3 (_ BitVec 16) )
( declare-const lin_sum_0 (_ BitVec 16) )
( declare-const lin_sum_1 (_ BitVec 16) )
( declare-const lin_sum_2 (_ BitVec 16) )
( declare-const lin_sum_3 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const sum_0 (_ BitVec 16) )
( declare-const sum_1 (_ BitVec 16) )
( declare-const sum_2 (_ BitVec 16) )
( declare-const sum_3 (_ BitVec 16) )

; Closed Box Function: retuns the addition of cube of the second argument with the first argument
( declare-fun foo_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

;(assert  (forall ((sum (_ BitVec 16))           (i (_ BitVec 16)))    (= (foo_cb sum i)       (bvadd sum              (bvmul i (bvmul i i))))))

;(define-fun foo_cb ((sum (_ BitVec 16)) (i (_ BitVec 16))) (_ BitVec 16)  (bvadd sum (bvmul i (bvmul i i))))

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_1000 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv40 16))))

(assert (in_0_1000 i))
(assert (in_0_1000 lin_sum))
(assert (in_0_1000 n))
(assert (in_0_1000 sum))


( define-fun inv-f( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) ) ) Bool
; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
  (and
    (= sum
       (bvudiv
         (bvmul
           (bvmul (bvadd (bvmul (_ bv1 16) i) (_ bv1 16))
                  (bvadd (bvmul (_ bv1 16) i) (_ bv1 16)))
           (bvmul (bvadd (bvmul (_ bv1 16) i) (_ bv0 16))
                  (bvadd (bvmul (_ bv1 16) i) (_ bv0 16))))
         (_ bv4 16)))
    (bvule i n))
)


( define-fun loop ( ( i (_ BitVec 16) )( n (_ BitVec 16) )) Bool
	(bvslt i n)
)

( define-fun trans-f ( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i_ (_ BitVec 16) )( lin_sum_ (_ BitVec 16) )( n_ (_ BitVec 16) )( sum_ (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( i_3 (_ BitVec 16) )( lin_sum_0 (_ BitVec 16) )( lin_sum_1 (_ BitVec 16) )( lin_sum_2 (_ BitVec 16) )( lin_sum_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = i_2 i )
			( = lin_sum_2 lin_sum )
			( = sum_2 sum )
			( = i_2 i_ )
			( = lin_sum_2 lin_sum_ )
			( = sum_2 sum_ )
			( = n n_0 )
			( = n_ n_0 )
			( = lin_sum lin_sum_ )
			( = sum sum_ )
			(not (loop i n))
		)
		( and
			( = i_2 i )
			( = lin_sum_2 lin_sum )
			( = sum_2 sum )
			( bvult i_2 n_0 )
			( = i_3 ( bvadd i_2 (_ bv1 16) ) )
			( = lin_sum_3 ( bvadd lin_sum_2 i_3 ) )
			( = sum_3 ( foo_cb sum_2 i_3 ) )
			( = i_3 i_ )
			( = lin_sum_3 lin_sum_ )
			( = sum_3 sum_ )
			(= n n_0 )
			(= n_ n_0 )
		)
	)
)


; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i lin_sum n sum )
			(loop i n)
			( trans-f i lin_sum n sum i_ lin_sum_ n_ sum_ i_0 i_1 i_2 i_3 lin_sum_0 lin_sum_1 lin_sum_2 lin_sum_3 n_0 sum_0 sum_1 sum_2 sum_3 )
		)
		( inv-f i_ lin_sum_ n_ sum_ )
	)
))


(check-sat)
;(get-model)
(exit)
