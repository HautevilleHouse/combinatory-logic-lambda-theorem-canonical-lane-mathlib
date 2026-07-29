import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure CombinatoryLogicPackage where
  primitiveCombinators : Type u
  sComb : primitiveCombinators
  kComb : primitiveCombinators
  reductionRelation : primitiveCombinators → primitiveCombinators → Prop
  weakReduction : Prop
  weakReductionTerm : weakReduction

structure CombinatoryLogicEvidence (C : CombinatoryLogicPackage) where
  sCombExists : C.primitiveCombinators
  kCombExists : C.primitiveCombinators
  reductionClosed : C.weakReduction

def CombinatoryLogicClosed (C : CombinatoryLogicPackage) : Prop :=
  C.weakReduction

theorem combinatory_logic_closed_from_evidence (C : CombinatoryLogicPackage)
    (E : CombinatoryLogicEvidence C) : CombinatoryLogicClosed C := by
  exact E.reductionClosed

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse