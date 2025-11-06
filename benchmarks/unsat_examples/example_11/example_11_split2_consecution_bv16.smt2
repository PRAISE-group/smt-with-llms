(set-logic QF_UFBV)
(set-option :produce-models true)

; This is a new file now. 

( declare-const a (_ BitVec 16))
( declare-const a_ (_ BitVec 16))
( declare-const b (_ BitVec 16))
( declare-const b_ (_ BitVec 16))
( declare-const i (_ BitVec 16))
( declare-const i_ (_ BitVec 16))
( declare-const n (_ BitVec 16))
( declare-const n_ (_ BitVec 16))
( declare-const res (_ BitVec 16))
( declare-const res_ (_ BitVec 16))

( declare-const a_0 (_ BitVec 16))
( declare-const b_0 (_ BitVec 16))
( declare-const i_0 (_ BitVec 16))
( declare-const i_1 (_ BitVec 16))
( declare-const i_2 (_ BitVec 16))
( declare-const n_0 (_ BitVec 16))
( declare-const res_0 (_ BitVec 16))
( declare-const res_1 (_ BitVec 16))
( declare-const res_2 (_ BitVec 16))

; Closed Box Function: Compute the cube of input 'x' in BitVec 16
( declare-fun cube_cb ((_ BitVec 16)) (_ BitVec 16) )

;(define-fun cube_cb ((N (_ BitVec 16))) (_ BitVec 16)
;  (bvmul N (bvmul N N))
;)

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_10 ((x (_ BitVec 16))) Bool
  (and (bvsge x (_ bv0 16)) (bvsle x (_ bv10 16))))

(assert (in_0_10 a))
(assert (in_0_10 b))
(assert (in_0_10 i))
(assert (in_0_10 n))
(assert (in_0_10 res))




( define-fun inv-f( ( a (_ BitVec 16))( b (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( res (_ BitVec 16)) ) Bool
	; INVARIANT
  (and
    (= res
       (bvmul
         (bvmul (bvadd (bvadd a b) (bvsub i (_ bv1 16)))
                (bvadd (bvadd a b) (bvsub i (_ bv1 16))))
         (bvadd (bvadd a b) (bvsub i (_ bv1 16)))))
    (bvsle (bvsub i (_ bv1 16)) n))
)


( define-fun loop ( ( i (_ BitVec 16))( n (_ BitVec 16))) Bool
	( bvsle i n
	)
)

( define-fun trans-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( res (_ BitVec 16))( a_ (_ BitVec 16))( b_ (_ BitVec 16))( i_ (_ BitVec 16))( n_ (_ BitVec 16))( res_ (_ BitVec 16))( a_0 (_ BitVec 16))( b_0 (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( i_2 (_ BitVec 16))( n_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16)) ) Bool
	( or
		( and
			( = i_1 i )
			( = res_1 res )
			( = i_1 i_ )
			( = res_1 res_ )
			( = n n_0 )
			( = n_ n_0 )
			( = a a_ )
			( = b b_ )
			( = res res_ )
			(not (loop i n))
		)
		( and
			( = i_1 i )
			( = res_1 res )
			( loop i_1 n_0 )
			( = res_2 ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( cube_cb a_0 ) ( cube_cb b_0 ) ) ( cube_cb i_1 ) ) ( bvmul  ( bvmul (_ bv3 16) ( bvmul  a_0 a_0 ) ) b_0 ) ) ( bvmul  ( bvmul (_ bv3 16) a_0 ) ( bvmul  b_0 b_0 ) ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) a_0 ) a_0 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) a_0 ) i_1 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) b_0 ) b_0 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) b_0 ) i_1 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv6 16) a_0 ) b_0 ) i_1 ) ) )
			( = i_2 ( bvadd  i_1 (_ bv1 16)) )
			( = i_2 i_ )
			( = res_2 res_ )
			(= a a_0 )
			(= a_ a_0 )
			(= b b_0 )
			(= b_ b_0 )
			(= n n_0 )
			(= n_ n_0 )
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( and
			( inv-f a b i n res )
			(loop i n)
			( trans-f a b i n res a_ b_ i_ n_ res_ a_0 b_0 i_0 i_1 i_2 n_0 res_0 res_1 res_2 )
		)
		( inv-f a_ b_ i_ n_ res_ )
	)
))


(check-sat)
;(get-model)
(exit)
