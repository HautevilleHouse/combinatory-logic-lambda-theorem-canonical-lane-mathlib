import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure CombinatorySpace where
  carrier : Type

def comb (x y : CombinatorySpace) : CombinatorySpace :=
  { carrier := x.carrier → y.carrier }

structure CLAdmittedObject where
  space : CombinatorySpace
  fixedPointProperty : Prop
  strongNormalization : Prop
  churchRosser : Prop
  conclusion : churchRosser

def CLWitnessClosed (O : CLAdmittedObject) : Prop :=
  O.churchRosser

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse