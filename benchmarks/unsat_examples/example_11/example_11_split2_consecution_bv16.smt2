(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const a (_ BitVec 16))
( declare-const a! (_ BitVec 16))
( declare-const b (_ BitVec 16))
( declare-const b! (_ BitVec 16))
( declare-const i (_ BitVec 16))
( declare-const i! (_ BitVec 16))
( declare-const n (_ BitVec 16))
( declare-const n! (_ BitVec 16))
( declare-const res (_ BitVec 16))
( declare-const res! (_ BitVec 16))

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

( define-fun inv-f( ( a (_ BitVec 16))( b (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( res (_ BitVec 16)) ) Bool
	; INVARIANT
  (and
    (= res
       (bvmul
         (bvmul (bvadd (bvadd a b) i)
                (bvadd (bvadd a b) i))
         (bvadd (bvadd a b) i)))
    (bvule i n))
)

( define-fun pre-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( res (_ BitVec 16))( a_0 (_ BitVec 16))( b_0 (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( i_2 (_ BitVec 16))( n_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16)) ) Bool
	( and
		( = a a_0 )
		( = b b_0 )
		( = n n_0 )
		( bvuge n_0 (_ bv0 16))
		( bvult ( bvadd ( bvadd a_0 b_0 ) n_0 ) (_ bv10000 16) )
	)
)

( define-fun trans-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( res (_ BitVec 16))( a! (_ BitVec 16))( b! (_ BitVec 16))( i! (_ BitVec 16))( n! (_ BitVec 16))( res! (_ BitVec 16))( a_0 (_ BitVec 16))( b_0 (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( i_2 (_ BitVec 16))( n_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16)) ) Bool
	( or
		( and
			( = i_1 i )
			( = res_1 res )
			( = i_1 i! )
			( = res_1 res! )
			( = n n_0 )
			( = n! n_0 )
			( = a a! )
			( = b b! )
			( = res res! )
		)
		( and
			( = i_1 i )
			( = res_1 res )
			( bvule i_1 n_0 )
			( = res_2 ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( bvadd  ( cube_cb a_0 ) ( cube_cb b_0 ) ) ( cube_cb i_1 ) ) ( bvmul  ( bvmul (_ bv3 16) ( bvmul  a_0 a_0 ) ) b_0 ) ) ( bvmul  ( bvmul (_ bv3 16) a_0 ) ( bvmul  b_0 b_0 ) ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) a_0 ) a_0 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) a_0 ) i_1 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) b_0 ) b_0 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv3 16) b_0 ) i_1 ) i_1 ) ) ( bvmul  ( bvmul  ( bvmul (_ bv6 16) a_0 ) b_0 ) i_1 ) ) )
			( = i_2 ( bvadd  i_1 (_ bv1 16)) )
			( = i_2 i! )
			( = res_2 res! )
			(= a a_0 )
			(= a! a_0 )
			(= b b_0 )
			(= b! b_0 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( a (_ BitVec 16))( b (_ BitVec 16))( i (_ BitVec 16))( n (_ BitVec 16))( res (_ BitVec 16))( a_0 (_ BitVec 16))( b_0 (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( i_2 (_ BitVec 16))( n_0 (_ BitVec 16))( res_0 (_ BitVec 16))( res_1 (_ BitVec 16))( res_2 (_ BitVec 16)) ) Bool
	( or
		( not
			( and
				( = a a_0)
				( = b b_0)
				( = i i_1)
				( = n n_0)
				( = res res_1)
			)
		)
		( not
			( and
				( not ( bvule i_1 n_0 ) )
				( not ( = res_1 ( bvmul  ( bvmul  ( bvadd  ( bvadd  a_0 b_0 ) n_0 ) ( bvadd ( bvadd  a_0 b_0 ) n_0 ) ) ( bvadd  ( bvadd  a_0 b_0 ) n_0 ) ) ) )
			)
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( and
			( inv-f a b i n res )
			( trans-f a b i n res a! b! i! n! res! a_0 b_0 i_0 i_1 i_2 n_0 res_0 res_1 res_2 )
		)
		( inv-f a! b! i! n! res! )
	)
))


(check-sat)
(get-model)
(exit)