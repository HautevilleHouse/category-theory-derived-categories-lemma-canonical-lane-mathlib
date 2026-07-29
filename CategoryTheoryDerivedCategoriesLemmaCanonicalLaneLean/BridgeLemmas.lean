import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

def bridgeClosed {C : CategoryPackage} (A : AdmissibleDerivedClass C) : Prop :=
  A.bridgeCondition

theorem bridge_from_admissible_class {C : CategoryPackage} (A : AdmissibleDerivedClass C) : bridgeClosed A :=
  A.bridgeWitness

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse