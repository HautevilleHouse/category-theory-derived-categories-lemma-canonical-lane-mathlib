import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

def gateClosed {C : CategoryPackage} (A : AdmissibleDerivedClass C) : Prop :=
  A.gateCondition

theorem gate_from_admissible_class {C : CategoryPackage} (A : AdmissibleDerivedClass C) : gateClosed A :=
  A.gateWitness

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse