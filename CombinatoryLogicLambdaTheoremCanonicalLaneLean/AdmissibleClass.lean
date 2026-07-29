import CombinatoryLogicLambdaTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CLAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CLWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse
