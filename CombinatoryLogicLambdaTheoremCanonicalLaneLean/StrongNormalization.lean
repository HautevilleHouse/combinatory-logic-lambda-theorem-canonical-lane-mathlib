import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure StrongNormalizationPackage where
  termination : Prop
  reductionStrat : Prop

def StrongNormalizationClosed (S : StrongNormalizationPackage) : Prop :=
  S.termination ∧ S.reductionStrat

theorem strong_normalization_closed_from_evidence (S : StrongNormalizationPackage) :
    StrongNormalizationClosed S := by
  exact And.intro S.termination S.reductionStrat

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse