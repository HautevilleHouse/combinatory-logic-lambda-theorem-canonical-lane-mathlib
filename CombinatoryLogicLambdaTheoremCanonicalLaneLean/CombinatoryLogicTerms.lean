import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

structure PrimitiveTerm where
  var : String
  app : PrimitiveTerm → PrimitiveTerm → PrimitiveTerm
  lam : String → PrimitiveTerm → PrimitiveTerm

inductive Reduction : PrimitiveTerm → PrimitiveTerm → Prop where
  | beta : Reduction (PrimitiveTerm.lam "x" (PrimitiveTerm.var "x")) (PrimitiveTerm.var "x")
  | trans : Reduction a b → Reduction b c → Reduction a c

structure CombinatoryBase where
  constants : List String
  appOp : PrimitiveTerm → PrimitiveTerm → PrimitiveTerm
  combinators : List (String × PrimitiveTerm)

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse