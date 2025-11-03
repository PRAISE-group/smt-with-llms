(set-logic UFBV)
(set-option :produce-models true)

; -------------------------
; State variables (BV16)
; -------------------------
(declare-const i    (_ BitVec 16))
(declare-const n    (_ BitVec 16))
(declare-const out  (_ BitVec 16))

(declare-const i_   (_ BitVec 16))
(declare-const n_   (_ BitVec 16))
(declare-const out_ (_ BitVec 16))

; closed-box primality test on n (opaque to the solver)
(declare-fun isprime_cb ((_ BitVec 16)) Bool)

; -------------------------
; Program pieces as functions
; -------------------------

; Invariant (matches the C loop: out counts +1 if prime(n) else +2 per iteration)
; Also requires n > 1 (unsigned) so the post-condition n or 2n is well-formed.
(define-fun inv-f ((i (_ BitVec 16)) (n (_ BitVec 16)) (out (_ BitVec 16))) Bool
  (and
    (bvugt n (_ bv1 16))
    (or
      (and (isprime_cb n)            (= out (bvmul (_ bv1 16) i)))
      (and (not (isprime_cb n))      (= out (bvmul (_ bv2 16) i))))
    ; Optional natural loop bounds (safe and inductive for this program):
    (bvule i n)                                     ; 0 <= i <= n
  )
)

; Precondition (from the C prelude)
;   assume(n > 2); i = 0; out = 0;
(define-fun pre-f ((i (_ BitVec 16)) (n (_ BitVec 16)) (out (_ BitVec 16))) Bool
  (and
    (bvugt n (_ bv2 16))
    (= i   (_ bv0 16))
    (= out (_ bv0 16))
  )
)

; Loop guard and exit
(define-fun guard-f ((i (_ BitVec 16)) (n (_ BitVec 16))) Bool (bvult i n))
(define-fun exit-f  ((i (_ BitVec 16)) (n (_ BitVec 16))) Bool (not (guard-f i n)))

; Transition relation for one loop step:
; if (i < n) {
;   if (isprime(n)) out = out + 1; else out = out + 2;
;   i = i + 1; n unchanged
; } else { stutter }
(define-fun trans-f
  ((i (_ BitVec 16)) (n (_ BitVec 16)) (out (_ BitVec 16))
   (i_ (_ BitVec 16)) (n_ (_ BitVec 16)) (out_ (_ BitVec 16))) Bool
  (or
    ; stutter when guard false
    (and (not (guard-f i n))
         (= i_ i) (= n_ n) (= out_ out))
    ; single-step when guard true
    (and (guard-f i n)
         (= i_  (bvadd i (_ bv1 16)))
         (= n_  n)
         (or (and (isprime_cb n)       (= out_ (bvadd out (_ bv1 16))))
             (and (not (isprime_cb n)) (= out_ (bvadd out (_ bv2 16))))))
  )
)

; Postcondition at loop exit:
; if (isprime(n)) then out == n else out == 2*n
(define-fun post-f ((i (_ BitVec 16)) (n (_ BitVec 16)) (out (_ BitVec 16))) Bool
  (or
    (and (isprime_cb n)             (= out n))
    (and (not (isprime_cb n))       (= out (bvmul (_ bv2 16) n)))
  )
)

; -------------------------
; Verification Conditions
; We expect UNSAT (no counterexample) for each VC.
; -------------------------

; VC1: Init  pre => inv   (UNSAT of pre ∧ ¬inv)
(push)
(assert (and (pre-f i n out)
             (not (inv-f i n out))))
(check-sat)
(get-model)
(pop)

; VC2: Step  inv ∧ guard ∧ trans => inv'   (UNSAT of inv ∧ guard ∧ trans ∧ ¬inv')
(push)
(assert (and
  (inv-f i n out)
  (guard-f i n)
  (trans-f i n out i_ n_ out_)
  (not (inv-f i_ n_ out_))
))
(check-sat)
(get-model)
(pop)

; VC3: Post  inv ∧ exit => post   (UNSAT of inv ∧ exit ∧ ¬post)
(push)
(assert (and
  (inv-f i n out)
  (exit-f i n)
  (not (post-f i n out))
))
(check-sat)
(get-model)
(pop)
