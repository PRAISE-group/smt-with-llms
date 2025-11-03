; example_3 — Consecution (inductive step): inv(s) ∧ trans(s,s') ⇒ inv(s')
(set-logic UFBV)
(set-option :produce-models true)

; -------------------- State (current and next) --------------------
(declare-const a       (_ BitVec 16))
(declare-const b       (_ BitVec 16))
(declare-const result  (_ BitVec 16))
(declare-const x       (_ BitVec 16))
(declare-const y       (_ BitVec 16))

(declare-const a_       (_ BitVec 16))
(declare-const b_       (_ BitVec 16))
(declare-const result_  (_ BitVec 16))
(declare-const x_       (_ BitVec 16))
(declare-const y_       (_ BitVec 16))

; 0..1000 (unsigned) for BV16
(define-fun in_0_1000 ((v (_ BitVec 16))) Bool
  (and (bvuge v (_ bv0 16)) (bvule v (_ bv1000 16)))
)

(assert (and
  (in_0_1000 a) (in_0_1000 b) (in_0_1000 result)
  (in_0_1000 x) (in_0_1000 y)
))
(assert (and
  (in_0_1000 a_) (in_0_1000 b_) (in_0_1000 result_)
  (in_0_1000 x_) (in_0_1000 y_)
))

; -------------------- Closed-box operations -----------------------
; a % b  (opaque; we do not assume BV div semantics)
(declare-fun retmod_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
; gcd(a,b)  (opaque helper, matches C's gcd)
(declare-fun gcd_cb     ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

; -------------------- Invariant, Guard, Transition ----------------
; Invariant: GCD is preserved
(define-fun inv-f ((a (_ BitVec 16)) (b (_ BitVec 16))
                   (result (_ BitVec 16)) (x (_ BitVec 16)) (y (_ BitVec 16))) Bool
  (and
    ; (1) bounds
    (in_0_1000 a) (in_0_1000 b) (in_0_1000 result) (in_0_1000 x) (in_0_1000 y)
    ; (2) base gcd relation
    (= (gcd_cb a b) (gcd_cb x y))
    ; (3) Euclid-shape requirement (only when b != 0)
    (or (= b (_ bv0 16))
        (= (gcd_cb b (retmod_cb a b)) (gcd_cb x y)))
    ; (4) keep the would-be next b (i.e., a%b) within range when b != 0
    (or (= b (_ bv0 16))
        (in_0_1000 (retmod_cb a b)))
  )
)

; Loop guard: (b != 0) && (a % b != 0)
(define-fun guard-f ((a (_ BitVec 16)) (b (_ BitVec 16))) Bool
  (and (distinct b (_ bv0 16))
       (distinct (retmod_cb a b) (_ bv0 16)))
)

; One-step transition (total relation):
; if guard then
;   result' = a % b; a' = b; b' = result'; x',y' unchanged
; else
;   stutter
(define-fun trans-f
  ((a (_ BitVec 16)) (b (_ BitVec 16)) (result (_ BitVec 16)) (x (_ BitVec 16)) (y (_ BitVec 16))
   (a_ (_ BitVec 16)) (b_ (_ BitVec 16)) (result_ (_ BitVec 16)) (x_ (_ BitVec 16)) (y_ (_ BitVec 16))) Bool
  (or
    ; stutter when guard false
    (and (not (guard-f a b))
         (= a_ a) (= b_ b) (= result_ result) (= x_ x) (= y_ y))
    ; Euclid step when guard true
    (and (guard-f a b)
         (= result_ (retmod_cb a b))
         (= a_ b)
         (= b_ result_)
         (= x_ x)
         (= y_ y))
  )
)

; ; Axiom A1 (range of modulo):  b ≠ 0 ⇒ 0 ≤ (a % b) < b
; (assert (forall ((aa (_ BitVec 16)) (bb (_ BitVec 16)))
;   (=> (distinct bb (_ bv0 16))
;       (and (bvule (_ bv0 16) (retmod_cb aa bb))
;            (bvult (retmod_cb aa bb) bb)))))

; ; Axiom A2 (Euclid step law):  b ≠ 0 ⇒ gcd(a,b) = gcd(b, a%b)
; (assert (forall ((aa (_ BitVec 16)) (bb (_ BitVec 16)))
;   (=> (distinct bb (_ bv0 16))
;       (= (gcd_cb aa bb) (gcd_cb bb (retmod_cb aa bb))))))

; -------------------- Consecution VC: expect UNSAT ----------------
; inv(s) ∧ trans(s,s') ∧ ¬inv(s')
(push)
(assert (and
  (inv-f a b result x y)
  (trans-f a b result x y a_ b_ result_ x_ y_)
  (not (inv-f a_ b_ result_ x_ y_))
))
(check-sat)     ; should be UNSAT for a correct invariant
(get-model)
(pop)
