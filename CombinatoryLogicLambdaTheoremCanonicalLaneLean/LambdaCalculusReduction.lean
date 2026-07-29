import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure ReductionPackage where
  betaReduction : Prop
  etaReduction : Prop
  subjectReduction : Prop

def ReductionClosed (R : ReductionPackage) : Prop :=
  R.betaReduction ∧ R.etaReduction ∧ R.subjectReduction

theorem reduction_closed_from_evidence (R : ReductionPackage) :
    ReductionClosed R := by
  exact And.intro R.betaReduction (And.intro R.etaReduction R.subjectReduction)

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse