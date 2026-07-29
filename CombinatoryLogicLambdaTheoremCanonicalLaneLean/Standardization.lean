import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure StandardizationSystem where
  leftmostReduction : Prop
  standardReductionSequence : Prop
  headReduction : Prop
  internalReduction : Prop

structure StandardizationEvidence (S : StandardizationSystem) where
  leftmostReductionClosed : S.leftmostReduction
  standardReductionSequenceClosed : S.standardReductionSequence
  headReductionClosed : S.headReduction
  internalReductionClosed : S.internalReduction

def StandardizationClosed (S : StandardizationSystem) : Prop :=
  S.leftmostReduction ∧ S.standardReductionSequence ∧ S.headReduction ∧ S.internalReduction

theorem standardization_closed_from_evidence (S : StandardizationSystem) (E : StandardizationEvidence S) :
    StandardizationClosed S := by
  exact And.intro E.leftmostReductionClosed (And.intro E.standardReductionSequenceClosed (And.intro E.headReductionClosed E.internalReductionClosed))

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse