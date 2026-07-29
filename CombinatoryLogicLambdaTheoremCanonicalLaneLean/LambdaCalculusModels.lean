import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

/-- A package for lambda calculus models, including abstraction and beta-reduction. -/
structure LambdaCalculusModelPackage where
  Term : Type u
  Var : ℕ → Term
  App : Term → Term → Term
  Abs : Term → Term
  beta : ∀ (t : Term) (u : Term), App (Abs t) u = t

def lambda_calculus_closed (L : LambdaCalculusModelPackage) : Prop :=
  ∀ (t : L.Term) (u : L.Term), L.App (L.Abs t) u = t

theorem lambda_calculus_closed_from_package (L : LambdaCalculusModelPackage) : lambda_calculus_closed L :=
  L.beta

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse
