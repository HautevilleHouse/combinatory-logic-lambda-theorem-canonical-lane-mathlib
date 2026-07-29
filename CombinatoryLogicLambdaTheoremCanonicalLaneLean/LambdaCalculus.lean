import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure LambdaCalculusPackage where
  lambdaTerms : Type u
  alphaConversion : Prop
  betaReduction : lambdaTerms → lambdaTerms → Prop
  churchRosser : Prop
  normalization : Prop
  churchRosserTerm : churchRosser
  normalizationTerm : normalization

structure LambdaCalculusEvidence (L : LambdaCalculusPackage) where
  churchRosserClosed : L.churchRosser
  normalizationClosed : L.normalization

def LambdaCalculusClosed (L : LambdaCalculusPackage) : Prop :=
  L.churchRosser ∧ L.normalization

theorem lambda_calculus_closed_from_evidence (L : LambdaCalculusPackage)
    (E : LambdaCalculusEvidence L) : LambdaCalculusClosed L := by
  exact And.intro E.churchRosserClosed E.normalizationClosed

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse