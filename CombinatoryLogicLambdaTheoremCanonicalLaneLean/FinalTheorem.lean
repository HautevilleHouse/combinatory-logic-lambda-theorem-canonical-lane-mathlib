import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

def ConstrainedCombinatoryLogicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatory_logic_endgame (A : AdmissibleClass) :
    ConstrainedCombinatoryLogicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse