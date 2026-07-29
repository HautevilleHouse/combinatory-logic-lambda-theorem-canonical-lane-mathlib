import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoryLogicLambdaTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CLWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatoryLogicLambdaTheoremCanonicalLaneLean
end HautevilleHouse