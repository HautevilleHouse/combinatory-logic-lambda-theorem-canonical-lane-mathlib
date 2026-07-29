import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure CombinatoryLogicBase where
  primitiveCombinators : List String
  termFormation : Prop
  reductionRelation : Prop
  equivalenceRelation : Prop

structure CombinatoryLogicBaseEvidence (B : CombinatoryLogicBase) where
  primitiveCombinatorsNonempty : B.primitiveCombinators ≠ []
  termFormationDefined : B.termFormation
  reductionRelationDefined : B.reductionRelation
  equivalenceRelationDefined : B.equivalenceRelation

def CombinatoryLogicBaseClosed (B : CombinatoryLogicBase) : Prop :=
  B.primitiveCombinators ≠ [] ∧ B.termFormation ∧ B.reductionRelation ∧ B.equivalenceRelation

theorem combinatory_logic_base_closed_from_evidence
    (B : CombinatoryLogicBase) (E : CombinatoryLogicBaseEvidence B) :
    CombinatoryLogicBaseClosed B := by
  exact And.intro E.primitiveCombinatorsNonempty
    (And.intro E.termFormationDefined
      (And.intro E.reductionRelationDefined E.equivalenceRelationDefined))

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse