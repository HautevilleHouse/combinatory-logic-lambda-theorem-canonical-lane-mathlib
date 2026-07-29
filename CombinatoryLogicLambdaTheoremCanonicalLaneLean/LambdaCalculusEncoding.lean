import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure LambdaCalculusEncoding where
  encodingFunction : Type
  preservationOfReduction : Prop
  preservationOfEquivalence : Prop
  inverseFunction : Type
  inversePreservation : Prop

structure LambdaCalculusEncodingEvidence (E : LambdaCalculusEncoding) where
  encodingFunctionDefined : Nonempty E.encodingFunction
  preservationOfReductionClosed : E.preservationOfReduction
  preservationOfEquivalenceClosed : E.preservationOfEquivalence
  inverseFunctionDefined : Nonempty E.inverseFunction
  inversePreservationClosed : E.inversePreservation

def LambdaCalculusEncodingClosed (E : LambdaCalculusEncoding) : Prop :=
  Nonempty E.encodingFunction ∧ E.preservationOfReduction ∧ E.preservationOfEquivalence ∧
  Nonempty E.inverseFunction ∧ E.inversePreservation

theorem lambda_calculus_encoding_closed_from_evidence
    (E : LambdaCalculusEncoding) (Ev : LambdaCalculusEncodingEvidence E) :
    LambdaCalculusEncodingClosed E := by
  exact And.intro Ev.encodingFunctionDefined
    (And.intro Ev.preservationOfReductionClosed
      (And.intro Ev.preservationOfEquivalenceClosed
        (And.intro Ev.inverseFunctionDefined Ev.inversePreservationClosed)))

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse