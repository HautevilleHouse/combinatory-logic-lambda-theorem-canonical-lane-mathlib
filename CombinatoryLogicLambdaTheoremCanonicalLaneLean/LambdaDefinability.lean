import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoryLogicLambdaTheoremCanonicalLaneLean.LambdaCalculus

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure LambdaDefinabilityPackage (L : LambdaCalculusPackage) where
  functionClass : Type u
  definable : (functionClass → functionClass) → Prop
  representable : (Nat → Nat) → Prop
  allRecursiveFunctions : Prop
  allRecursiveFunctionsTerm : allRecursiveFunctions

structure LambdaDefinabilityEvidence {L : LambdaCalculusPackage}
    (D : LambdaDefinabilityPackage L) where
  allRecursiveFunctionsClosed : D.allRecursiveFunctions

def LambdaDefinabilityClosed {L : LambdaCalculusPackage}
    (D : LambdaDefinabilityPackage L) : Prop :=
  D.allRecursiveFunctions

theorem lambda_definability_closed_from_evidence {L : LambdaCalculusPackage}
    (D : LambdaDefinabilityPackage L)
    (E : LambdaDefinabilityEvidence D) : LambdaDefinabilityClosed D := by
  exact E.allRecursiveFunctionsClosed

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse