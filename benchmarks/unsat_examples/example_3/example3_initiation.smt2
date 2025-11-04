; example_3 – Initiation (pre => inv)  — CORRECTED
(set-logic UFBV)
(set-option :produce-models true)

; ---------------- Vars (current state only for initiation VC) ----------------
(declare-const a       (_ BitVec 16))
(declare-const b       (_ BitVec 16))
(declare-const result  (_ BitVec 16))
(declare-const x       (_ BitVec 16))
(declare-const y       (_ BitVec 16))

; (Some generators emit SSA temps; not needed for initiation. Omitted on purpose.)

; --------------- Closed-box operations (opaque to the solver) ----------------
; retmod_cb(a,b) = a % b   (opaque, models the C modulo)
(declare-fun retmod_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
; gcd_cb(x,y)    = gcd(x,y) (opaque, matches the C helper gcd())
(declare-fun gcd_cb     ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

; ----------------------- Small helpers / ranges ------------------------------
; (define-fun bv_le ((_ BitVec 16) (_ BitVec 16)) Bool (bvule ((_ BitVec 16) 0) ((_ BitVec 16) 0)))
; Clamp helper: 0 <= v <= 100
(define-fun in_0_100 ((v (_ BitVec 16))) Bool
  (and (bvuge v (_ bv0 16)) (bvule v (_ bv100 16)))
)

; ------------------------ Invariant & Precondition ---------------------------
; -------- Strengthened Invariant (no axioms) --------
; 1) Range: all current-state vars in 0..1000
; 2) GCD is preserved wrt (x,y)
; 3) If b != 0, then the *Euclid step pair* (b, a%b) has the SAME gcd as (x,y)
;    (this bakes the preservation needed for the next state into the invariant)
; 4) If b != 0, also constrain a%b to 0..1000 so primed vars stay in-range via trans
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

; Pre from C:
;   x = a; y = b;  (inputs copied)
;   guard uses a % b, so require b != 0
;   also keep inputs within a small range (as in your draft: 0..100)
(define-fun pre-f ((a (_ BitVec 16)) (b (_ BitVec 16))
                   (result (_ BitVec 16)) (x (_ BitVec 16)) (y (_ BitVec 16))) Bool
  (and
    (= x a) (= y b)
    (in_0_100 a) (in_0_100 b)
    (distinct b (_ bv0 16))     ; b ≠ 0 to model well-defined a % b in C
    ; result is uninitialized before the loop; leave unconstrained for initiation
    true
  )
)

; ----------------------- Initiation VC: pre => inv ---------------------------
(push)
(assert (and
  (pre-f a b result x y)
  (not (inv-f a b result x y))
))
(check-sat)  ; Expect: unsat
;(get-model)
(pop)
