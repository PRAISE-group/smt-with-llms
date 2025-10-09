(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const i (_ BitVec 16) )
( declare-const i! (_ BitVec 16) )
( declare-const lin_sum (_ BitVec 16) )
( declare-const lin_sum! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const sum (_ BitVec 16) )
( declare-const sum! (_ BitVec 16) )

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

; Closed Box Function: retuns the multiplication cube of its two arguments
( declare-fun foo_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

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

( define-fun pre-f ( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( i_3 (_ BitVec 16) )( lin_sum_0 (_ BitVec 16) )( lin_sum_1 (_ BitVec 16) )( lin_sum_2 (_ BitVec 16) )( lin_sum_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	( and
		( = i i_1 )
		( = lin_sum lin_sum_1 )
		( = n n_0 )
		( = sum sum_1 )
		( = i_1 (_ bv0 16) )
		( = sum_1 (_ bv0 16) )
		( = lin_sum_1 (_ bv0 16) )
		( bvuge n_0 (_ bv0 16) )
	)
)

( define-fun trans-f ( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i! (_ BitVec 16) )( lin_sum! (_ BitVec 16) )( n! (_ BitVec 16) )( sum! (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( i_3 (_ BitVec 16) )( lin_sum_0 (_ BitVec 16) )( lin_sum_1 (_ BitVec 16) )( lin_sum_2 (_ BitVec 16) )( lin_sum_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	( or
		( and
			( = i_2 i )
			( = lin_sum_2 lin_sum )
			( = sum_2 sum )
			( = i_2 i! )
			( = lin_sum_2 lin_sum! )
			( = sum_2 sum! )
			( = n n_0 )
			( = n! n_0 )
			( = lin_sum lin_sum! )
			( = sum sum! )
		)
		( and
			( = i_2 i )
			( = lin_sum_2 lin_sum )
			( = sum_2 sum )
			( bvult i_2 n_0 )
			( = i_3 ( bvadd i_2 (_ bv1 16) ) )
			( = lin_sum_3 ( bvadd lin_sum_2 i_3 ) )
			( = sum_3 ( foo_cb sum_2 i_3 ) )
			( = i_3 i! )
			( = lin_sum_3 lin_sum! )
			( = sum_3 sum! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i (_ BitVec 16) )( lin_sum (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( i_2 (_ BitVec 16) )( i_3 (_ BitVec 16) )( lin_sum_0 (_ BitVec 16) )( lin_sum_1 (_ BitVec 16) )( lin_sum_2 (_ BitVec 16) )( lin_sum_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = lin_sum lin_sum_2)
				( = n n_0)
				( = sum sum_2)
			)
		)
		( not
			( and
				( not ( bvult i_2 n_0 ) )
				( not ( = sum_2 ( bvmul lin_sum_2 lin_sum_2 ) ) )
			)
		)
	)
)
; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i lin_sum n sum i_0 i_1 i_2 i_3 lin_sum_0 lin_sum_1 lin_sum_2 lin_sum_3 n_0 sum_0 sum_1 sum_2 sum_3  )
		( inv-f i lin_sum n sum )
	)
))



(check-sat)
(get-model)
(exit)