import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

/-- A package defining the fundamental combinators and reduction rules for combinatory logic. -/
structure CombinatoryLogicPackage where
  S : Type u
  K : Type u
  I : Type u
  app : S → S → S
  s_rule : ∀ x y z : S, app (app (app S x) y) z = app (app x z) (app y z)
  k_rule : ∀ x y : S, app (app K x) y = x
  i_rule : ∀ x : S, app I x = x

def SKI_system_closed (C : CombinatoryLogicPackage) : Prop :=
  (∀ x y z : C.S, C.app (C.app (C.app C.S x) y) z = C.app (C.app x z) (C.app y z)) ∧
  (∀ x y : C.S, C.app (C.app C.K x) y = x) ∧
  (∀ x : C.S, C.app C.I x = x)

theorem SKI_system_closed_from_package (C : CombinatoryLogicPackage) : SKI_system_closed C :=
  And.intro C.s_rule (And.intro C.k_rule C.i_rule)

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse
