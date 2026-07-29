import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

def ConstrainedDerivedCategoryClosure {C : CategoryPackage} (A : AdmissibleDerivedClass C) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_derived_category_endgame {C : CategoryPackage} (A : AdmissibleDerivedClass C) :
    ConstrainedDerivedCategoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse