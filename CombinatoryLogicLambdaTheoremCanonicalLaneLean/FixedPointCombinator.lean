import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

/-- Package for a fixed-point combinator in combinatory logic. -/
structure FixedPointCombinatorPackage where
  Y : Type u
  app : Y → Y → Y
  fixed_point_property : ∀ f : Y, app f (app Y f) = app Y f

def fixed_point_closed (F : FixedPointCombinatorPackage) : Prop :=
  ∀ f : F.Y, F.app f (F.app F.Y f) = F.app F.Y f

theorem fixed_point_closed_from_package (F : FixedPointCombinatorPackage) : fixed_point_closed F :=
  F.fixed_point_property

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse
