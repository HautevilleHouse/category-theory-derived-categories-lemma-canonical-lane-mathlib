import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure DerivedCategorySignature where
  abelianCategory : Type u
  chainComplexes : Type v
  homotopyCategory : Type w
  localizationFunctor : Type
  derivedCategory : Type
  canonicalFunctor : Type
  triangleStructure : Prop
  localizationFunctorExact : Prop

structure DerivedCategoryEvidence (D : DerivedCategorySignature) where
  triangleStructureClosed : D.triangleStructure
  localizationFunctorExactClosed : D.localizationFunctorExact

def DerivedCategoryClosed (D : DerivedCategorySignature) : Prop :=
  D.triangleStructure ∧ D.localizationFunctorExact

theorem derived_category_closed_from_evidence (D : DerivedCategorySignature)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.triangleStructureClosed E.localizationFunctorExactClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse