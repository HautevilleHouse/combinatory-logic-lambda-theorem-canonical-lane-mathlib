import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure CategoricalCombinatorSystem where
  sCombinator : Prop
  kCombinator : Prop
  iCombinator : Prop
  composition : Prop
  bCombinator : Prop
  cCombinator : Prop
  wCombinator : Prop

structure CategoricalCombinatorEvidence (C : CategoricalCombinatorSystem) where
  sCombinatorClosed : C.sCombinator
  kCombinatorClosed : C.kCombinator
  iCombinatorClosed : C.iCombinator
  compositionClosed : C.composition
  bCombinatorClosed : C.bCombinator
  cCombinatorClosed : C.cCombinator
  wCombinatorClosed : C.wCombinator

def CategoricalCombinatorClosed (C : CategoricalCombinatorSystem) : Prop :=
  C.sCombinator ∧ C.kCombinator ∧ C.iCombinator ∧ C.composition ∧ C.bCombinator ∧ C.cCombinator ∧ C.wCombinator

theorem categorical_combinator_closed_from_evidence (C : CategoricalCombinatorSystem) (E : CategoricalCombinatorEvidence C) :
    CategoricalCombinatorClosed C := by
  exact And.intro E.sCombinatorClosed (And.intro E.kCombinatorClosed (And.intro E.iCombinatorClosed (And.intro E.compositionClosed (And.intro E.bCombinatorClosed (And.intro E.cCombinatorClosed E.wCombinatorClosed)))))

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse