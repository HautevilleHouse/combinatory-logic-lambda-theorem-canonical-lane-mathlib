import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

/-- Package for the Church-Rosser property (confluence) in lambda calculus or combinatory logic. -/
structure ChurchRosserPackage where
  Term : Type u
  reduction : Term → Term → Prop
  confluence : ∀ a b c : Term, reduction a b → reduction a c → ∃ d : Term, reduction b d ∧ reduction c d

def church_rosser_closed (C : ChurchRosserPackage) : Prop :=
  ∀ a b c : C.Term, C.reduction a b → C.reduction a c → ∃ d : C.Term, C.reduction b d ∧ C.reduction c d

theorem church_rosser_closed_from_package (C : ChurchRosserPackage) : church_rosser_closed C :=
  C.confluence

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse
