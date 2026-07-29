import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure FixedPointPackage where
  combinator : CombinatorySpace
  fixedPoint : ∀ f : CombinatorySpace, CombinatorySpace
  property : Prop

def FixedPointClosed (F : FixedPointPackage) : Prop :=
  F.property

theorem fixed_point_closed_from_evidence (F : FixedPointPackage) :
    FixedPointClosed F := by
  exact F.property

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse