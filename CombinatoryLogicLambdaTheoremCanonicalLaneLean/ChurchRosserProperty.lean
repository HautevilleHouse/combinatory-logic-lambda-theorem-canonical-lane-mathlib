import canonicalLaneMathlib.AdmissibleClass
import CombinatoryLogicLambdaTheoremCanonicalLaneLean.CombinatoryLogicTerms

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure ChurchRosserPackage where
  diamondProperty : Prop
  confluence : Prop
  strongNormalization : Prop

structure ChurchRosserEvidence (C : ChurchRosserPackage) where
  diamondPropertyClosed : C.diamondProperty
  confluenceClosed : C.confluence
  strongNormalizationClosed : C.strongNormalization

def ChurchRosserClosed (C : ChurchRosserPackage) : Prop :=
  C.diamondProperty ∧ C.confluence ∧ C.strongNormalization

theorem church_rosser_closed_from_evidence (C : ChurchRosserPackage) (E : ChurchRosserEvidence C) :
    ChurchRosserClosed C := by
  exact And.intro E.diamondPropertyClosed (And.intro E.confluenceClosed E.strongNormalizationClosed)

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse