(set-logic UFBV)
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
(assert (in_0_100 i_))
(assert (in_0_100 n))
(assert (in_0_100 n_))
(assert (in_0_100 i_0))
(assert (in_0_100 i_1))
(assert (in_0_100 n_0))


; closed-box (uninterpreted) foo to model opaque C function
; Find if the input number is prime
; // isprime() is based on Selfridge's Conjecture.
; // https://en.wikipedia.org/wiki/John_Selfridge
; Closed Box Function: returns true if input number is prime
(declare-fun isprime_cb ((_ BitVec 16)) Bool)

;(define-fun isprime_cb ((n (_ BitVec 16))) Bool  (and    (bvugt n (_ bv1 16))    (forall ((d (_ BitVec 16)))      (=> (and (bvugt d (_ bv1 16)) (bvult d n))           (not (= (bvsrem n d) (_ bv0 16)))            )    )  ))

( define-fun inv-f( ( i (_ BitVec 16))( n (_ BitVec 16))( out (_ BitVec 16)) ) Bool
; INVARIANT:
  (and
    (bvugt n (_ bv2 16))
    (bvule i i)
    (or
      (and (isprime_cb n)
           (= out (bvmul (_ bv1 16) i)))
      (and (not (isprime_cb n))
           (= out (bvmul (_ bv2 16) i)))))
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
		)
		( and
			( = out_2 out )
			( bvult i_1 n_0 )
			( isprime_cb n_0 )
			( = out_3 ( bvadd out_2 (_ bv1 16)) )
			( = out_4 out_3 )
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
		( and
			( inv-f i n out )
			( trans-f i n out i_ n_ out_ i_0 i_1 n_0 out_0 out_1 out_2 out_3 out_4 out_5 )
		)
		( inv-f i_ n_ out_ )
	)
))

(check-sat)
(get-model)
(exit)
