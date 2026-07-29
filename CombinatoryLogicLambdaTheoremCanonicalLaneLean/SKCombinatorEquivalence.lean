import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoryLogicLambdaTheoremCanonicalLaneLean.CombinatoryLogic
import HautevilleHouse.CombinatoryLogicLambdaTheoremCanonicalLaneLean.LambdaCalculus

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure SKCombinatorEquivalencePackage
    (C : CombinatoryLogicPackage) (L : LambdaCalculusPackage) where
  translationCLtoLC : C.primitiveCombinators → L.lambdaTerms
  translationLCtoCL : L.lambdaTerms → C.primitiveCombinators
  simulation : Prop
  completeness : Prop
  simulationTerm : simulation
  completenessTerm : completeness

structure SKCombinatorEquivalenceEvidence
    {C : CombinatoryLogicPackage} {L : LambdaCalculusPackage}
    (E : SKCombinatorEquivalencePackage C L) where
  simulationClosed : E.simulation
  completenessClosed : E.completeness

def SKCombinatorEquivalenceClosed
    {C : CombinatoryLogicPackage} {L : LambdaCalculusPackage}
    (E : SKCombinatorEquivalencePackage C L) : Prop :=
  E.simulation ∧ E.completeness

theorem sk_combinator_equivalence_closed_from_evidence
    {C : CombinatoryLogicPackage} {L : LambdaCalculusPackage}
    (P : SKCombinatorEquivalencePackage C L)
    (E : SKCombinatorEquivalenceEvidence P) : SKCombinatorEquivalenceClosed P := by
  exact And.intro E.simulationClosed E.completenessClosed

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse