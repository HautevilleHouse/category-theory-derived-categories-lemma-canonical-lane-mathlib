import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure DerivedCategoryPackage where
  abelianCategory : Type u
  chainComplexCategory : Type v
  homotopyCategory : Type w
  localizationTriangle : Prop
  derivedFunctorExistence : Prop

structure DerivedCategoryEvidence (D : DerivedCategoryPackage) where
  localizationTriangleClosed : D.localizationTriangle
  derivedFunctorExistenceClosed : D.derivedFunctorExistence

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.localizationTriangle ∧ D.derivedFunctorExistence

theorem derived_category_closed_from_evidence (D : DerivedCategoryPackage) (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.localizationTriangleClosed E.derivedFunctorExistenceClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse