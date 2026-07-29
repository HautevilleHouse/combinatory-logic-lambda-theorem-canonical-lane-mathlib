import canonicalLaneMathlib.AdmissibleClass
import CombinatoryLogicLambdaTheoremCanonicalLaneLean.CombinatoryLogicTerms

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure CurryHowardPackage where
  typeAssignment : Prop
  inhabitationCorrespondence : Prop
  proofTermCorrespondence : Prop

structure CurryHowardEvidence (C : CurryHowardPackage) where
  typeAssignmentClosed : C.typeAssignment
  inhabitationCorrespondenceClosed : C.inhabitationCorrespondence
  proofTermCorrespondenceClosed : C.proofTermCorrespondence

def CurryHowardClosed (C : CurryHowardPackage) : Prop :=
  C.typeAssignment ∧ C.inhabitationCorrespondence ∧ C.proofTermCorrespondence

theorem curry_howard_closed_from_evidence (C : CurryHowardPackage) (E : CurryHowardEvidence C) :
    CurryHowardClosed C := by
  exact And.intro E.typeAssignmentClosed (And.intro E.inhabitationCorrespondenceClosed E.proofTermCorrespondenceClosed)

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse