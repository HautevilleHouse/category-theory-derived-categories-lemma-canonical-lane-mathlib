import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.CategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure DerivedCategoryConstructionPackage (C : CategoryPackage) where
  chainComplexCategory : CategoryPackage
  homotopyCategory : CategoryPackage
  localizationFunctor : FunctorPackage chainComplexCategory homotopyCategory
  derivedCategory : AdmissibleDerivedCategory C
  triangulatedStructure : Prop
  exactTriangles : Prop
  octahedralAxiom : Prop
  triangulatedEvidence : triangulatedStructure
  exactTrianglesEvidence : exactTriangles
  octahedralEvidence : octahedralAxiom

structure DerivedCategoryConstructionEvidence (C : CategoryPackage) (D : DerivedCategoryConstructionPackage C) where
  triangulatedClosed : D.triangulatedStructure
  exactTrianglesClosed : D.exactTriangles
  octahedralClosed : D.octahedralAxiom

def DerivedCategoryConstructionClosed (C : CategoryPackage) (D : DerivedCategoryConstructionPackage C) : Prop :=
  D.triangulatedStructure ∧ D.exactTriangles ∧ D.octahedralAxiom

theorem derived_category_construction_closed_from_evidence (C : CategoryPackage) (D : DerivedCategoryConstructionPackage C) (E : DerivedCategoryConstructionEvidence C D) : DerivedCategoryConstructionClosed C D := by
  exact And.intro E.triangulatedClosed (And.intro E.exactTrianglesClosed E.octahedralClosed)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse