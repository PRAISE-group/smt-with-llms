;(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const arr (_ BitVec 16) )
( declare-const arr_ (_ BitVec 16) )
( declare-const i (_ BitVec 16) )
( declare-const i_ (_ BitVec 16) )
( declare-const index (_ BitVec 16) )
( declare-const index_ (_ BitVec 16) )
( declare-const n (_ BitVec 16) )
( declare-const n_ (_ BitVec 16) )
( declare-const sum (_ BitVec 16) )
( declare-const sum_ (_ BitVec 16) )

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


;(assert  (forall ((arg1 (_ BitVec 16)))    (= (predict_cb arg1)       (ite (and (bvugt arg1 #x0000)                 (bvult arg1 #x0064))            (bvudiv arg1 #x000A)            #x0000))))

;(define-fun predict_cb ((index (_ BitVec 16))) (_ BitVec 16)
;  (ite (or (bvslt index #x0000)                 ; index < 0
;           (bvsge index #x0064))                ; index >= 100 (0x64)
;       #x0000                                   ; return 0
;       (bvsdiv index #x000A))                   ; return index / 10
;)

(assert ( = n (_ bv100 16) ))
(assert ( = n_ (_ bv100 16) ))
(assert ( = n_0 (_ bv100 16) ))
(assert ( = n_1 (_ bv100 16) ))

; ( define-fun inv-f( ( arr (_ BitVec 16) )( i (_ BitVec 16) )( index (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) ) ) Bool
; 	( and
; 		( = n (_ bv100 16) )
; 		( = sum (predict_cb index) )
; 	)
; )

(define-fun loop ((index (_ BitVec 16)) (n (_ BitVec 16))) Bool
  (bvult index n)
)

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


( define-fun trans-f ( ( arr (_ BitVec 16) )( i (_ BitVec 16) )( index (_ BitVec 16) )( n (_ BitVec 16) )( sum (_ BitVec 16) )( arr_ (_ BitVec 16) )( i_ (_ BitVec 16) )( index_ (_ BitVec 16) )( n_ (_ BitVec 16) )( sum_ (_ BitVec 16) )( arr_0 (_ BitVec 16) )( i_0 (_ BitVec 16) )( i_1 (_ BitVec 16) )( index_0 (_ BitVec 16) )( index_1 (_ BitVec 16) )( index_2 (_ BitVec 16) )( index_3 (_ BitVec 16) )( n_0 (_ BitVec 16) )( n_1 (_ BitVec 16) )( sum_0 (_ BitVec 16) )( sum_1 (_ BitVec 16) )( sum_2 (_ BitVec 16) )( sum_3 (_ BitVec 16) ) ) Bool
	(or
	(and
		(= index_2 index)
		(= sum_2 sum)
		(= index_2 index_)
		(= sum_2 sum_)
		(= n n_1)
		(= n_ n_1)
		(= arr arr_)
		(= i i_)
		(= sum sum_)
		(not (loop index n))
	)
	(and
		(= index_2 index)
		(= sum_2 sum)
		(bvult index_2 n_1)
		; sum += predict(data_image[index])
		; index += 1
		(= sum_3 (bvadd sum_2 (predict_cb index_2)))
		(= index_3 (bvadd index_2 (_ bv1 16)))
		(= index_3 index_)
		(= sum_3 sum_)
		(= arr arr_0)
		(= arr_ arr_0)
		(= i i_1)
		(= i_ i_1)
		(= n n_1)
		(= n_ n_1)
	)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f arr i index n sum )
			(loop index n)
			( trans-f arr i index n sum arr_ i_ index_ n_ sum_ arr_0 i_0 i_1 index_0 index_1 index_2 index_3 n_0 n_1 sum_0 sum_1 sum_2 sum_3 )
		)
		( inv-f arr_ i_ index_ n_ sum_ )
	)
))


(check-sat)
; (get-model)
(exit)