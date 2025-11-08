(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const arr (_ BitVec 16) )
( declare-const arr! (_ BitVec 16) )
( declare-const i (_ BitVec 16) )
( declare-const i! (_ BitVec 16) )
( declare-const index (_ BitVec 16) )
( declare-const index! (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n! (_ BitVec 16) )
( declare-const sum (_ BitVec 16) )
( declare-const sum! (_ BitVec 16) )

( declare-const arr_0 (_ BitVec 16) )
( declare-const i_0 (_ BitVec 16) )
( declare-const i_1 (_ BitVec 16) )
( declare-const index_0 (_ BitVec 16) )
( declare-const index_1 (_ BitVec 16) )
( declare-const index_2 (_ BitVec 16) )
( declare-const index_3 (_ BitVec 16) )
( declare-const n_0 (_ BitVec 16) )
( declare-const n_1 (_ BitVec 16) )
( declare-const sum_0 (_ BitVec 16) )
( declare-const sum_1 (_ BitVec 16) )
( declare-const sum_2 (_ BitVec 16) )
( declare-const sum_3 (_ BitVec 16) )

; closed-box predictor
(declare-fun predict_cb ((_ BitVec 16)) (_ BitVec 16))

(assert ( = n (_ bv100 16) ))
(assert ( = n! (_ bv100 16) ))
(assert ( = n_0 (_ bv100 16) ))
(assert ( = n_1 (_ bv100 16) ))

; ( define-fun inv-f( ( arr (_ BitVec 16) )( i (_ BitVec 16) )( index (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) ) ) Bool
; 	( and
; 		( = n (_ bv100 16) )
; 		( = sum (predict_cb index) )
; 	)
; )

( define-fun inv-f( ( arr (_ BitVec 16) )( i (_ BitVec 16) )( index (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) ) ) Bool
	(and
	  (bvule index n)
	  (bvuge index (_ bv0 16))
	  (bvuge n (_ bv0 16))
	  (and
		(bvuge
		  sum
		  (bvsub
			(bvadd
			  (bvmul
				(bvmul (_ bv5 16) (bvsub (bvudiv index (_ bv10 16)) (_ bv1 16)))
				(bvudiv index (_ bv10 16)))
			  (bvmul
				(bvudiv index (_ bv10 16))
				(bvsub index (bvmul (_ bv10 16) (bvudiv index (_ bv10 16)))))
			)
			(_ bv9 16)))
		(bvule
		  sum
		  (bvadd
			(bvadd
			  (bvmul
				(bvmul (_ bv5 16) (bvsub (bvudiv index (_ bv10 16)) (_ bv1 16)))
				(bvudiv index (_ bv10 16)))
			  (bvmul
				(bvudiv index (_ bv10 16))
				(bvsub index (bvmul (_ bv10 16) (bvudiv index (_ bv10 16))))))
			(_ bv9 16))))
	)
)

; ( define-fun pre-f ( ( arr (_ BitVec 16) )( i (_ BitVec 16) )( index (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( arr_0 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( index_0 (_ BitVec 16) )( index_1 (_ BitVec 16) )( index_2 (_ BitVec 16) )( index_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( n_1 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
; 	( and
; 		( = arr arr_0 )
; 		( = i i_1 )
; 		( = index index_1 )
; 		( = n n_1 )
; 		( = sum sum_1 )
; 		( = arr_0  )
; 		( = sum_1 0 )
; 		( = i_1 0 )
; 		( = n_1 100 )
; 		( = index_1 0 )
; 	)
; )

( define-fun trans-f ( ( arr (_ BitVec 16) )( i (_ BitVec 16) )( index (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( arr! (_ BitVec 16) )( i! (_ BitVec 16) )( index! (_ BitVec 16) )( n! (_ BitVec 16) )( sum! (_ BitVec 16) )( arr_0 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( index_0 (_ BitVec 16) )( index_1 (_ BitVec 16) )( index_2 (_ BitVec 16) )( index_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( n_1 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	(or
	(and
		(= index_2 index)
		(= sum_2 sum)
		(= index_2 index!)
		(= sum_2 sum!)
		(= n n_1)
		(= n! n_1)
		(= arr arr!)
		(= i i!)
		(= sum sum!)
	)
	(and
		(= index_2 index)
		(= sum_2 sum)
		(bvult index_2 n_1)
		; sum += predict(data_image[index])
		; index += 1
		(= sum_3 (bvadd sum_2 (predict_cb index_2)))
		(= index_3 (bvadd index_2 (_ bv1 16)))
		(= index_3 index!)
		(= sum_3 sum!)
		(= arr arr_0)
		(= arr! arr_0)
		(= i i_1)
		(= i! i_1)
		(= n n_1)
		(= n! n_1)
	)
	)
)

; ( define-fun post-f ( ( arr (_ BitVec 16) )( i (_ BitVec 16) )( index (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( arr_0 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( index_0 (_ BitVec 16) )( index_1 (_ BitVec 16) )( index_2 (_ BitVec 16) )( index_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( n_1 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
; 	( or
; 		( not
; 			( and
; 				( = arr arr_0)
; 				( = i i_1)
; 				( = index index_2)
; 				( = n n_1)
; 				( = sum sum_2)
; 			)
; 		)
; 		( not
; 			( and
; 				( not ( < index_2 n_1 ) )
; 				( not ( = sum_2 450 ) )
; 			)
; 		)
; 	)
; )

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
; ( assert ( not
; 	( =>
; 		( pre-f arr i index n sum arr_0 i_0 i_1 index_0 index_1 index_2 index_3 n_0 n_1 sum_0 sum_1 sum_2 sum_3  )
; 		( inv-f arr i index n sum )
; 	)
; ))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f arr i index n sum )
			( trans-f arr i index n sum arr! i! index! n! sum! arr_0 i_0 i_1 index_0 index_1 index_2 index_3 n_0 n_1 sum_0 sum_1 sum_2 sum_3 )
		)
		( inv-f arr! i! index! n! sum! )
	)
))

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
; ( assert ( not
; 	( =>
; 		( inv-f arr i index n sum  )
; 		( post-f arr i index n sum arr_0 i_0 i_1 index_0 index_1 index_2 index_3 n_0 n_1 sum_0 sum_1 sum_2 sum_3 )
; 	)
; ))

(check-sat)
; (get-model)
(exit)