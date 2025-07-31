(set-logic QF_UFBV)

(declare-fun isPrimeLUT_cb ((_ BitVec 32) ) Bool)

; note that this will only say "unsat" or "unknown", should do unsat queries below


; Example:
; 769129 = 877 * 877 ... slow ~5 seconds

(assert (isPrimeLUT_cb (_ bv242 32)))

(check-sat) 
