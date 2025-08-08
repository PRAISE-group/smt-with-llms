(set-info :smt-lib-version 2.6)
(set-logic QF_UFBV)
(set-option :produce-models true)
(set-info :source |Benchmarks from the paper: "Extending Sledgehammer with SMT Solvers" by Jasmin Blanchette, Sascha Bohme, and Lawrence C. Paulson, CADE 2011.  Translated to SMT2 by Andrew Reynolds and Morgan Deters.|)
(set-info :category "industrial")

(declare-fun f1 () (_ BitVec 32))
(declare-fun f2 () (_ BitVec 32))
(declare-fun f3 () (_ BitVec 32))

(declare-fun _lt_cb  ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun _mul_cb ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (not (= f1 f2)))
(assert (= (_ bv0 32) (_lt_cb  (bvadd (_mul_cb (_ bv4 32) f3) (_ bv1 32)) (_ bv2 32))))

(assert (let ((?v_0 (bvadd (_mul_cb (_ bv4 32) f3) (_ bv1 32))))
	(let ((?v_1 (_mul_cb ?v_0 (bvsub ?v_0 (_ bv1 32)))))

	(= (_ bv1 32)
	   (_lt_cb  ?v_1 (bvadd (bvsub ?v_1 ?v_0)
	   	     (_ bv2 32)))))))

(assert (let ((?v_0 (bvadd (_mul_cb (_ bv4 32) f3) (_ bv1 32))))
	(let ((?v_1 (_mul_cb ?v_0 (bvsub ?v_0 (_ bv1 32)))))

	(= (_ bv1 32)
	   (_lt_cb  ?v_1 (bvadd (bvsub ?v_1 ?v_0)
	   	     (_ bv2 32)))))))

(check-sat)
(get-value (f1 f2 f3))
(exit)
