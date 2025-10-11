(set-logic QF_UFBV)
(set-option :produce-models true)


; pre_cb is an uninterpreted function taking 3 BitVec16 args (as requested)
(declare-fun pre_cb ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))

; lshift_cb is an uninterpreted function taking 3 BitVec16 args (as requested)
(declare-fun lshift_cb ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))


(declare-const bit (_ BitVec 16))
(declare-const bit_ (_ BitVec 16))
(declare-const num (_ BitVec 16))
(declare-const num_ (_ BitVec 16))
(declare-const num_orig (_ BitVec 16))
(declare-const num_orig_ (_ BitVec 16))
(declare-const res (_ BitVec 16))
(declare-const res_ (_ BitVec 16))

(declare-const bit_0 (_ BitVec 16))
(declare-const bit_1 (_ BitVec 16))
(declare-const bit_2 (_ BitVec 16))
(declare-const bit_3 (_ BitVec 16))
(declare-const bit_4 (_ BitVec 16))
(declare-const num_0 (_ BitVec 16))
(declare-const num_1 (_ BitVec 16))
(declare-const num_2 (_ BitVec 16))
(declare-const num_3 (_ BitVec 16))
(declare-const num_orig_0 (_ BitVec 16))
(declare-const num_orig_1 (_ BitVec 16))
(declare-const res_0 (_ BitVec 16))
(declare-const res_1 (_ BitVec 16))
(declare-const res_2 (_ BitVec 16))
(declare-const res_3 (_ BitVec 16))
(declare-const res_4 (_ BitVec 16))
(declare-const res_5 (_ BitVec 16))

(define-fun inv-f ((bit (_ BitVec 16)) (num (_ BitVec 16)) (num_orig (_ BitVec 16)) (res (_ BitVec 16))) Bool
  (or
    (and
      (= bit (_ bv0 16))
      (bvule (bvmul res res) num_orig))
    (not (= bit (_ bv0 16))))
)

(define-fun pre-f
  ((bit (_ BitVec 16)) (num (_ BitVec 16)) (num_orig (_ BitVec 16)) (res (_ BitVec 16))
   (bit_0 (_ BitVec 16)) (bit_1 (_ BitVec 16)) (bit_2 (_ BitVec 16)) (bit_3 (_ BitVec 16)) (bit_4 (_ BitVec 16))
   (num_0 (_ BitVec 16)) (num_1 (_ BitVec 16)) (num_2 (_ BitVec 16)) (num_3 (_ BitVec 16))
   (num_orig_0 (_ BitVec 16)) (num_orig_1 (_ BitVec 16))
   (res_0 (_ BitVec 16)) (res_1 (_ BitVec 16)) (res_2 (_ BitVec 16)) (res_3 (_ BitVec 16)) (res_4 (_ BitVec 16)) (res_5 (_ BitVec 16)))
  Bool
  (and
    (= bit bit_2)
    (= num num_0)
    (= num_orig num_orig_1)
    (= res res_1)
    ; >= num_0 0  --> unsigned greater-or-equal
    (bvuge num_0 (_ bv0 16))
    ; = res_1 0
    (= res_1 (_ bv0 16))
    ; = bit_1 ( << 1 30 )  --> bvshl
    (= bit_1 (bvshl (_ bv1 16) (_ bv30 16)))
    (= num_orig_1 num_0)
    ; = bit_2 ( pre_cb bit_1 num_0 2 )
    (= bit_2 (pre_cb bit_1 num_0 (_ bv2 16)))
  )
)

(define-fun trans-f
  ((bit (_ BitVec 16)) (num (_ BitVec 16)) (num_orig (_ BitVec 16)) (res (_ BitVec 16))
   (bit_ (_ BitVec 16)) (num_ (_ BitVec 16)) (num_orig_ (_ BitVec 16)) (res_ (_ BitVec 16))
   (bit_0 (_ BitVec 16)) (bit_1 (_ BitVec 16)) (bit_2 (_ BitVec 16)) (bit_3 (_ BitVec 16)) (bit_4 (_ BitVec 16))
   (num_0 (_ BitVec 16)) (num_1 (_ BitVec 16)) (num_2 (_ BitVec 16)) (num_3 (_ BitVec 16))
   (num_orig_0 (_ BitVec 16)) (num_orig_1 (_ BitVec 16))
   (res_0 (_ BitVec 16)) (res_1 (_ BitVec 16)) (res_2 (_ BitVec 16)) (res_3 (_ BitVec 16)) (res_4 (_ BitVec 16)) (res_5 (_ BitVec 16)))
  Bool
  (or
    (and
      (= bit_3 bit)
      (= num_1 num)
      (= res_2 res)
      (= bit_3 bit_)
      (= num_1 num_)
      (= res_2 res_)
      (= num num_)
      (= num_orig num_orig_)
      (= res res_)
    )
    (and
      (= bit_3 bit)
      (= num_1 num)
      (= res_2 res)
      (not (= bit_3 (_ bv0 16)))
      ; >= num_1 ( + res_2 bit_3 )  -> bvuge num_1 (bvadd res_2 bit_3)
      (bvuge num_1 (bvadd res_2 bit_3))
      ; = num_2 ( + ( - num_1 res_2 ) bit_3 ) -> (= num_2 (bvadd (bvsub num_1 res_2) bit_3))
      (= num_2 (bvadd (bvsub num_1 res_2) bit_3))
      ; = res_3 ( + ( mod res_2 1 ) bit_3 ) -> mod -> bvshr
      (= res_3 (bvadd (lshift_cb  res_2 (_ bv1 16)) bit_3))
      (= num_3 num_2)
      (= res_4 res_3)
      ; bit_4 = ( mod bit_3 2 )
      (= bit_4 (lshift_cb  bit_3 (_ bv2 16)))
      (= bit_4 bit_)
      (= num_3 num_)
      (= res_4 res_)
      (= num_orig num_orig_1)
      (= num_orig_ num_orig_1)
    )
    (and
      (= bit_3 bit)
      (= num_1 num)
      (= res_2 res)
      (not (= bit_3 (_ bv0 16)))
      (not (bvuge num_1 (bvadd res_2 bit_3)))
      (= res_5 (lshift_cb  res_2 (_ bv1 16)))
      (= num_3 num_1)
      (= res_4 res_5)
      (= bit_4 (lshift_cb  bit_3 (_ bv2 16)))
      (= bit_4 bit_)
      (= num_3 num_)
      (= res_4 res_)
      (= num_orig num_orig_1)
      (= num_orig_ num_orig_1)
    )
  )
)

(define-fun post-f
  ((bit (_ BitVec 16)) (num (_ BitVec 16)) (num_orig (_ BitVec 16)) (res (_ BitVec 16))
   (bit_0 (_ BitVec 16)) (bit_1 (_ BitVec 16)) (bit_2 (_ BitVec 16)) (bit_3 (_ BitVec 16)) (bit_4 (_ BitVec 16))
   (num_0 (_ BitVec 16)) (num_1 (_ BitVec 16)) (num_2 (_ BitVec 16)) (num_3 (_ BitVec 16))
   (num_orig_0 (_ BitVec 16)) (num_orig_1 (_ BitVec 16))
   (res_0 (_ BitVec 16)) (res_1 (_ BitVec 16)) (res_2 (_ BitVec 16)) (res_3 (_ BitVec 16)) (res_4 (_ BitVec 16)) (res_5 (_ BitVec 16)))
  Bool
  (or
    (not
      (and
        (= bit bit_3)
        (= num num_1)
        (= num_orig num_orig_1)
        (= res res_2)
      )
    )
    (not
      (and
        (not (not (= bit_3 (_ bv0 16))))
        ; (not ( <= ( * res_2 res_2 ) num_orig_1 ) ) -> <= -> bvule, * -> bvmul
        (not (bvule (bvmul res_2 res_2) num_orig_1))
      )
    )
  )
)

; SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=> (inv-f bit num num_orig res)
      (post-f bit num num_orig res bit_0 bit_1 bit_2 bit_3 bit_4 num_0 num_1 num_2 num_3 num_orig_0 num_orig_1 res_0 res_1 res_2 res_3 res_4 res_5)
  )
))

(check-sat)
(get-model)
(exit)