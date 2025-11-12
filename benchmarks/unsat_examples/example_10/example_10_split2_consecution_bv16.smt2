(set-logic QF_UFBV)
;(set-option :produce-models true)

; ------------ State ------------
(declare-const x (_ BitVec 16))
(declare-const y (_ BitVec 16))
(declare-const lock (_ BitVec 16))
(declare-const x_ (_ BitVec 16))
(declare-const y_ (_ BitVec 16))
(declare-const lock_ (_ BitVec 16))

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

(define-fun loop ((x (_ BitVec 16)) (y (_ BitVec 16))) Bool
  (not (= x y))
)

(define-fun trans-f ((x (_ BitVec 16)) (y (_ BitVec 16)) (lock (_ BitVec 16))
                     (x_ (_ BitVec 16)) (y_ (_ BitVec 16)) (lock_ (_ BitVec 16))) Bool
  (or
    (and (= x y)
         (= x_ x) (= y_ y) (= lock_ lock) (not (loop x y)) )
    (and (not (= x y))
         (= x_ y)
         (or
           (and (= lock_ (set_lock_cb lock))
                (= y_ y))
           (and (= lock_ (set_unlock_cb lock))
                (= y_ (bvadd y (_ bv1 16)))))
    ))
)

(assert (not (=> (and (inv-f x y lock) (loop x y)
                      (trans-f x y lock x_ y_ lock_))
                 (inv-f x_ y_ lock_))))

(check-sat)
; (get-model)
(exit)