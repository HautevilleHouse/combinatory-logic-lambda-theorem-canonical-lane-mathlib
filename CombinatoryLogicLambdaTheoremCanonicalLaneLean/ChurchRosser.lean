import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure ChurchRosserSystem where
  diamondProperty : Prop
  confluence : Prop
  uniquenessOfNormalForms : Prop
  newmanLemma : Prop

structure ChurchRosserEvidence (C : ChurchRosserSystem) where
  diamondPropertyClosed : C.diamondProperty
  confluenceClosed : C.confluence
  uniquenessOfNormalFormsClosed : C.uniquenessOfNormalForms
  newmanLemmaClosed : C.newmanLemma

def ChurchRosserClosed (C : ChurchRosserSystem) : Prop :=
  C.diamondProperty ∧ C.confluence ∧ C.uniquenessOfNormalForms ∧ C.newmanLemma

theorem church_rosser_closed_from_evidence (C : ChurchRosserSystem) (E : ChurchRosserEvidence C) :
    ChurchRosserClosed C := by
  exact And.intro E.diamondPropertyClosed (And.intro E.confluenceClosed (And.intro E.uniquenessOfNormalFormsClosed E.newmanLemmaClosed))

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse