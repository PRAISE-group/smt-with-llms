(set-logic QF_UFBV)
(set-option :produce-models true)
;; (set-option :simplification none)

(declare-fun absx (Int) Int)

(declare-const x10 Int)
(declare-const x34 Int)
(declare-const y Int)
(declare-const tempx Int)

(assert ( = (mod (absx x10) 4294967296) (mod tempx 4294967296)))
(assert ( > (mod tempx 4294967296) 0))
(assert (= (mod x34 4294967296) (mod (* 2 y) 4294967296)))
(assert (> (mod x10 4294967296) (mod x34 4294967296)))

(check-sat)
(get-model)
