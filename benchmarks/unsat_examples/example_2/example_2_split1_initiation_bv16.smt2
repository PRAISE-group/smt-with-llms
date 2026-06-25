(set-logic QF_UFBV)
(set-option :produce-models true)

( declare-const i (_ BitVec 16))
( declare-const i_ (_ BitVec 16))
( declare-const n (_ BitVec 16))
( declare-const n_ (_ BitVec 16))
( declare-const out (_ BitVec 16))
( declare-const out_ (_ BitVec 16))

( declare-const i_0 (_ BitVec 16))
( declare-const i_1 (_ BitVec 16))
( declare-const n_0 (_ BitVec 16))
( declare-const out_0 (_ BitVec 16))
( declare-const out_1 (_ BitVec 16))
( declare-const out_2 (_ BitVec 16))
( declare-const out_3 (_ BitVec 16))
( declare-const out_4 (_ BitVec 16))
( declare-const out_5 (_ BitVec 16))

; Constrain all 16-bit BV constants to the inclusive range [0, 100]
(define-fun in_0_100 ((x (_ BitVec 16))) Bool
  (and (bvuge x (_ bv0 16)) (bvule x (_ bv100 16))))

; INPUT VARIABLES CONSTRAINT
(assert (in_0_100 i))
(assert (in_0_100 n))
(assert (in_0_100 out))

; closed-box (uninterpreted) foo to model opaque C function
; Find if the input number is prime
; // isprime() is based on Selfridge's Conjecture.
; // https://en.wikipedia.org/wiki/John_Selfridge
; Closed Box Function: returns true if input number is prime
(declare-fun isprime_cb ((_ BitVec 16)) Bool)

;(assert  (forall ((N (_ BitVec 16)))    (= (isprime_cb N)       (and         (bvugt N #x0001)         (not           (exists ((d (_ BitVec 16)))             (and               (bvugt d #x0001)               (bvult d N)               (= (bvurem N d) #x0000))))))))

; (define-fun isprime_cb ((N (_ BitVec 16))) Bool
;   (and
;     (bvuge N (_ bv2 16))
;     (=> (distinct N (_ bv2 16))  (distinct (bvurem N (_ bv2 16))  #x0000))
;     (=> (distinct N (_ bv3 16))  (distinct (bvurem N (_ bv3 16))  #x0000))
;     (=> (distinct N (_ bv5 16))  (distinct (bvurem N (_ bv5 16))  #x0000))
;     (=> (distinct N (_ bv7 16))  (distinct (bvurem N (_ bv7 16))  #x0000))
;     (=> (distinct N (_ bv11 16)) (distinct (bvurem N (_ bv11 16)) #x0000))
;     (=> (distinct N (_ bv13 16)) (distinct (bvurem N (_ bv13 16)) #x0000))
;     (=> (distinct N (_ bv17 16)) (distinct (bvurem N (_ bv17 16)) #x0000))
;     (=> (distinct N (_ bv19 16)) (distinct (bvurem N (_ bv19 16)) #x0000))
;     (=> (distinct N (_ bv23 16)) (distinct (bvurem N (_ bv23 16)) #x0000))
;     (=> (distinct N (_ bv29 16)) (distinct (bvurem N (_ bv29 16)) #x0000))
;     (=> (distinct N (_ bv31 16)) (distinct (bvurem N (_ bv31 16)) #x0000))
;     (=> (distinct N (_ bv37 16)) (distinct (bvurem N (_ bv37 16)) #x0000))
;     (=> (distinct N (_ bv41 16)) (distinct (bvurem N (_ bv41 16)) #x0000))
;     (=> (distinct N (_ bv43 16)) (distinct (bvurem N (_ bv43 16)) #x0000))
;     (=> (distinct N (_ bv47 16)) (distinct (bvurem N (_ bv47 16)) #x0000))
;     (=> (distinct N (_ bv53 16)) (distinct (bvurem N (_ bv53 16)) #x0000))
;     (=> (distinct N (_ bv59 16)) (distinct (bvurem N (_ bv59 16)) #x0000))
;     (=> (distinct N (_ bv61 16)) (distinct (bvurem N (_ bv61 16)) #x0000))
;     (=> (distinct N (_ bv67 16)) (distinct (bvurem N (_ bv67 16)) #x0000))
;     (=> (distinct N (_ bv71 16)) (distinct (bvurem N (_ bv71 16)) #x0000))
;     (=> (distinct N (_ bv73 16)) (distinct (bvurem N (_ bv73 16)) #x0000))
;     (=> (distinct N (_ bv79 16)) (distinct (bvurem N (_ bv79 16)) #x0000))
;     (=> (distinct N (_ bv83 16)) (distinct (bvurem N (_ bv83 16)) #x0000))
;     (=> (distinct N (_ bv89 16)) (distinct (bvurem N (_ bv89 16)) #x0000))
;     (=> (distinct N (_ bv97 16)) (distinct (bvurem N (_ bv97 16)) #x0000))
;     (=> (distinct N (_ bv101 16)) (distinct (bvurem N (_ bv101 16)) #x0000))
;     (=> (distinct N (_ bv103 16)) (distinct (bvurem N (_ bv103 16)) #x0000))
;     (=> (distinct N (_ bv107 16)) (distinct (bvurem N (_ bv107 16)) #x0000))
;     (=> (distinct N (_ bv109 16)) (distinct (bvurem N (_ bv109 16)) #x0000))
;     (=> (distinct N (_ bv113 16)) (distinct (bvurem N (_ bv113 16)) #x0000))
;     (=> (distinct N (_ bv127 16)) (distinct (bvurem N (_ bv127 16)) #x0000))
;     (=> (distinct N (_ bv131 16)) (distinct (bvurem N (_ bv131 16)) #x0000))
;     (=> (distinct N (_ bv137 16)) (distinct (bvurem N (_ bv137 16)) #x0000))
;     (=> (distinct N (_ bv139 16)) (distinct (bvurem N (_ bv139 16)) #x0000))
;     (=> (distinct N (_ bv149 16)) (distinct (bvurem N (_ bv149 16)) #x0000))
;     (=> (distinct N (_ bv151 16)) (distinct (bvurem N (_ bv151 16)) #x0000))
;     (=> (distinct N (_ bv157 16)) (distinct (bvurem N (_ bv157 16)) #x0000))
;     (=> (distinct N (_ bv163 16)) (distinct (bvurem N (_ bv163 16)) #x0000))
;     (=> (distinct N (_ bv167 16)) (distinct (bvurem N (_ bv167 16)) #x0000))
;     (=> (distinct N (_ bv173 16)) (distinct (bvurem N (_ bv173 16)) #x0000))
;     (=> (distinct N (_ bv179 16)) (distinct (bvurem N (_ bv179 16)) #x0000))
;     (=> (distinct N (_ bv181 16)) (distinct (bvurem N (_ bv181 16)) #x0000))
;     (=> (distinct N (_ bv191 16)) (distinct (bvurem N (_ bv191 16)) #x0000))
;     (=> (distinct N (_ bv193 16)) (distinct (bvurem N (_ bv193 16)) #x0000))
;     (=> (distinct N (_ bv197 16)) (distinct (bvurem N (_ bv197 16)) #x0000))
;     (=> (distinct N (_ bv199 16)) (distinct (bvurem N (_ bv199 16)) #x0000))
;     (=> (distinct N (_ bv211 16)) (distinct (bvurem N (_ bv211 16)) #x0000))
;     (=> (distinct N (_ bv223 16)) (distinct (bvurem N (_ bv223 16)) #x0000))
;     (=> (distinct N (_ bv227 16)) (distinct (bvurem N (_ bv227 16)) #x0000))
;     (=> (distinct N (_ bv229 16)) (distinct (bvurem N (_ bv229 16)) #x0000))
;     (=> (distinct N (_ bv233 16)) (distinct (bvurem N (_ bv233 16)) #x0000))
;     (=> (distinct N (_ bv239 16)) (distinct (bvurem N (_ bv239 16)) #x0000))
;     (=> (distinct N (_ bv241 16)) (distinct (bvurem N (_ bv241 16)) #x0000))
;     (=> (distinct N (_ bv251 16)) (distinct (bvurem N (_ bv251 16)) #x0000))
;   )
; )

( define-fun inv-f( ( i (_ BitVec 16))( n (_ BitVec 16))( out (_ BitVec 16)) ) Bool
; INVARIANT:
  (and
    (bvugt n (_ bv2 16))
    (bvule i n)
    (or
      (and (isprime_cb n)
           (= out (bvmul (_ bv1 16) i)))
      (and (not (isprime_cb n))
           (= out (bvmul (_ bv2 16) i)))))
)

(define-fun loop ((x (_ BitVec 16)) (y (_ BitVec 16))) Bool
 	( bvult x y )
)

( define-fun pre-f ( ( i (_ BitVec 16))( n (_ BitVec 16))( out (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( n_0 (_ BitVec 16))( out_0 (_ BitVec 16))( out_1 (_ BitVec 16))( out_2 (_ BitVec 16))( out_3 (_ BitVec 16))( out_4 (_ BitVec 16))( out_5 (_ BitVec 16)) ) Bool
	( and
		( = i i_1 )
		( = n n_0 )
		( = out out_1 )
		( bvugt n_0 (_ bv2 16))
		( = i_1 (_ bv0 16))
		( = out_1 (_ bv0 16))
	)
)

( define-fun trans-f ( ( i (_ BitVec 16))( n (_ BitVec 16))( out (_ BitVec 16))( i_ (_ BitVec 16))( n_ (_ BitVec 16))( out_ (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( n_0 (_ BitVec 16))( out_0 (_ BitVec 16))( out_1 (_ BitVec 16))( out_2 (_ BitVec 16))( out_3 (_ BitVec 16))( out_4 (_ BitVec 16))( out_5 (_ BitVec 16)) ) Bool
	( or
		( and
			( = out_2 out )
			( = out_2 out_ )
			( = i i_1 )
			( = i_ i_1 )
			( = n n_0 )
			( = n_ n_0 )
			( = out out_ )
			(not ( bvult i_1 n_0 ))
		)
		( and
			( = out_2 out )
			( bvult i_1 n_0 )
			( isprime_cb n_0 )
			( = out_3 ( bvadd out_2 (_ bv1 16)) )
			( = out_4 out_3 )
			(= i_ (bvadd i_1 (_ bv1 16)))
			( = out_4 out_ )
			(= i i_1 )
			(= i_ i_1 )
			(= n n_0 )
			(= n_ n_0 )
		)
		( and
			( = out_2 out )
			( bvult  i_1 n_0 )
			( not ( isprime_cb n_0 ) )
			(= i_ (bvadd i_1 (_ bv1 16)))
			( = out_5 ( bvadd out_2 (_ bv2 16)) )
			( = out_4 out_5 )
			( = out_4 out_ )
			(= i i_1 )
			(= i_ i_1 )
			(= n n_0 )
			(= n_ n_0 )
		)
	)
)


( define-fun post-f ( ( i (_ BitVec 16))( n (_ BitVec 16))( out (_ BitVec 16))( i_0 (_ BitVec 16))( i_1 (_ BitVec 16))( n_0 (_ BitVec 16))( out_0 (_ BitVec 16))( out_1 (_ BitVec 16))( out_2 (_ BitVec 16))( out_3 (_ BitVec 16))( out_4 (_ BitVec 16))( out_5 (_ BitVec 16)) ) Bool
	( and
		( or
			( not
				( and
					( = i i_1)
					( = n n_0)
					( = out out_2)
				)
			)
			( not
				( and
					( not ( bvult i_1 n_0 ) )
					( isprime_cb n_0 )
					( not ( = out_2 n_0 ) )
				)
			)
		)
		( or
			( not
				( and
					( = i i_1)
					( = n n_0)
					( = out out_2)
				)
			)
			( not
				( and
					( not ( bvult i_1 n_0 ) )
					( not ( isprime_cb n_0 ) )
					( not ( = out_2 ( bvmul (_ bv2 16) n_0 ) ) )
				)
			)
		)
	)
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( => 
		( pre-f i n out i_0 i_1 n_0 out_0 out_1 out_2 out_3 out_4 out_5  )
		( inv-f i n out )
	)
))

(check-sat)
;(get-model)
(exit)
