; shift_cb: logical RIGHT shift a >> b over BV16
(define-fun shift_cb ((a (_ BitVec 16)) (b (_ BitVec 16))) (_ BitVec 16)
  (bvlshr a b)
)

; icbrt_cb: integer cube root floor over BV16
(define-fun cube ((n (_ BitVec 16))) (_ BitVec 16)
  (bvmul n (bvmul n n))
)

(define-fun-rec icbrt_it ((lo (_ BitVec 16)) (hi (_ BitVec 16)) (x (_ BitVec 16))) (_ BitVec 16)
  (ite (= lo hi)
      lo
      (let ((mid  (bvlshr (bvadd (bvadd lo hi) #x0001) #x0001)) ; ceil((lo+hi)/2)
           (mid3 (cube mid)))
        (ite (bvule mid3 x)
            (icbrt_it mid hi x)
            (icbrt_it lo (bvsub mid #x0001) x))))
)

(define-fun icbrt_cb ((n (_ BitVec 16))) (_ BitVec 16)
  (icbrt_it #x0000 #x0028 n) ; 0..40 since 40^3 = 64000 <= 65535
)
