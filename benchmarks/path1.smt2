;; status = SAT

(set-logic QF_UFBV)
(set-option :produce-models true)

(declare-fun test3ext_cb (Int) Int)
(declare-const x Int)
(declare-const retval Int)


(assert (= retval (test3ext_cb x)))

(assert
	(and
		(<= (mod x 4294967296) (mod 4 4294967296))
		(not (<= (mod retval 4294967296) (mod 5 4294967296) ) ) )

)

(check-sat)
(get-model)
(exit)
