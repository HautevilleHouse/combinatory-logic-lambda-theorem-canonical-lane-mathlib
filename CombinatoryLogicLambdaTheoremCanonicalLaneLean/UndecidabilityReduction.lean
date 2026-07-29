import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure UndecidabilityReduction where
  haltingProblemReduction : Prop
  lambdaDefinability : Prop
  undecidabilityResult : Prop
  consistencyWithLambda : Prop

structure UndecidabilityReductionEvidence (U : UndecidabilityReduction) where
  haltingProblemReductionClosed : U.haltingProblemReduction
  lambdaDefinabilityClosed : U.lambdaDefinability
  undecidabilityResultClosed : U.undecidabilityResult
  consistencyWithLambdaClosed : U.consistencyWithLambda

def UndecidabilityReductionClosed (U : UndecidabilityReduction) : Prop :=
  U.haltingProblemReduction ∧ U.lambdaDefinability ∧ U.undecidabilityResult ∧ U.consistencyWithLambda

theorem undecidability_reduction_closed_from_evidence
    (U : UndecidabilityReduction) (E : UndecidabilityReductionEvidence U) :
    UndecidabilityReductionClosed U := by
  exact And.intro E.haltingProblemReductionClosed
    (And.intro E.lambdaDefinabilityClosed
      (And.intro E.undecidabilityResultClosed E.consistencyWithLambdaClosed))

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse