(set-logic QF_UFBV)
(set-option :produce-models true)

; ------------ State ------------
(declare-const x       (_ BitVec 16))
(declare-const y       (_ BitVec 16))
(declare-const lock    (_ BitVec 16))
(declare-const x!      (_ BitVec 16))
(declare-const y!      (_ BitVec 16))
(declare-const lock!   (_ BitVec 16))

; assumes:
; (define-fun set_lock_cb   ((l (_ BitVec 16))) (_ BitVec 16) (_ bv1 16))
; (define-fun set_unlock_cb ((l (_ BitVec 16))) (_ BitVec 16) (_ bv0 16))

(declare-fun set_lock_cb   ((_ BitVec 16)) (_ BitVec 16))
(declare-fun set_unlock_cb ((_ BitVec 16)) (_ BitVec 16))

(define-fun inv-f ((x (_ BitVec 16)) (y (_ BitVec 16)) (lock (_ BitVec 16))) Bool
  (or
    (and (= lock (_ bv1 16)) (= y x))
    (and (= lock (_ bv0 16)) (= y (bvadd x (_ bv1 16))))
  )
)

(define-fun trans-f ((x (_ BitVec 16)) (y (_ BitVec 16)) (lock (_ BitVec 16))
                     (x! (_ BitVec 16)) (y! (_ BitVec 16)) (lock! (_ BitVec 16))) Bool
  (or
    (and (= x y)
         (= x! x) (= y! y) (= lock! lock))
    (and (not (= x y))
         (= x! y)
         (or
           (and (= lock! (set_lock_cb lock))
                (= y! y))
           (and (= lock! (set_unlock_cb lock))
                (= y! (bvadd y (_ bv1 16)))))
    ))
)

(assert (not (=> (and (inv-f x y lock)
                      (trans-f x y lock x! y! lock!))
                 (inv-f x! y! lock!))))

(check-sat)
; (get-model)
(exit)