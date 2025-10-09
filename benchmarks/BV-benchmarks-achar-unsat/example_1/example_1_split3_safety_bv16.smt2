(set-logic QF_UFBV)
(set-option :produce-models true)

; closed-box (uninterpreted) foo to model opaque C function
(declare-fun foo_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-const i (_ BitVec 16))
(declare-const i! (_ BitVec 16))
(declare-const n (_ BitVec 16))
(declare-const n! (_ BitVec 16))
(declare-const sum (_ BitVec 16))
(declare-const sum! (_ BitVec 16))

(declare-const i_0 (_ BitVec 16))
(declare-const i_1 (_ BitVec 16))
(declare-const i_2 (_ BitVec 16))
(declare-const n_0 (_ BitVec 16))
(declare-const sum_0 (_ BitVec 16))
(declare-const sum_1 (_ BitVec 16))
(declare-const sum_2 (_ BitVec 16))

; invariant predicate (here trivially true)
(define-fun inv-f ((i (_ BitVec 16)) (n (_ BitVec 16)) (sum (_ BitVec 16))) Bool
  true
)

; precondition
(define-fun pre-f
  ((i (_ BitVec 16)) (n (_ BitVec 16)) (sum (_ BitVec 16))
   (i_0 (_ BitVec 16)) (i_1 (_ BitVec 16)) (i_2 (_ BitVec 16))
   (n_0 (_ BitVec 16))
   (sum_0 (_ BitVec 16)) (sum_1 (_ BitVec 16)) (sum_2 (_ BitVec 16)))
  Bool
  (and
    (= i i_0)
    (= n n_0)
    (= sum sum_0)
    (= i_0 (_ bv0 16))
    (= sum_0 (_ bv0 16))
    (bvuge n_0 (_ bv0 16))
  )
)

; transition relation
(define-fun trans-f
  ((i (_ BitVec 16)) (n (_ BitVec 16)) (sum (_ BitVec 16))
   (i! (_ BitVec 16)) (n! (_ BitVec 16)) (sum! (_ BitVec 16))
   (i_0 (_ BitVec 16)) (i_1 (_ BitVec 16)) (i_2 (_ BitVec 16))
   (n_0 (_ BitVec 16))
   (sum_0 (_ BitVec 16)) (sum_1 (_ BitVec 16)) (sum_2 (_ BitVec 16)))
  Bool
  (or
    ; first (no-op) branch: keep values
    (and
      (= i_1 i)
      (= sum_1 sum)
      (= i! i_1)
      (= sum! sum_1)
      (= n n_0)
      (= n! n_0)
      (= sum sum!)
    )
    ; second branch: i < n, update using foo_cb and accumulate square
    (and
      (= i_1 i)
      (= sum_1 sum)
      (bvult i_1 n_0)
      (= i_2 (foo_cb i_1 (_ bv1 16)))
      ; assumed sum update: sum_2 = sum_1 + i_2 * i_2
      (= sum_2 (bvadd sum_1 (bvmul i_2 i_2)))
      (= i_2 i!)
      (= sum_2 sum!)
      (= n n_0)
      (= n! n_0)
    )
  )
)

; postcondition
(define-fun post-f
  ((i (_ BitVec 16)) (n (_ BitVec 16)) (sum (_ BitVec 16))
   (i_0 (_ BitVec 16)) (i_1 (_ BitVec 16)) (i_2 (_ BitVec 16))
   (n_0 (_ BitVec 16))
   (sum_0 (_ BitVec 16)) (sum_1 (_ BitVec 16)) (sum_2 (_ BitVec 16)))
  Bool
  (or
    (not
      (and
        (= i i_1)
        (= n n_0)
        (= sum sum_1)
      )
    )
    (not
      (and
        (not (bvult i_1 n_0))
        (not
          (= sum_1
             (bvudiv
               (bvmul
                 (bvmul n_0 (bvadd n_0 (_ bv1 16)))
                 (bvadd (bvmul (_ bv2 16) n_0) (_ bv1 16))
               )
               (_ bv6 16)
             )
          )
        )
      )
    )
  )
)
( assert ( not
	( =>
		( inv-f i n sum  )
		( post-f i n sum i_0 i_1 i_2 n_0 sum_0 sum_1 sum_2 )
	)
))

