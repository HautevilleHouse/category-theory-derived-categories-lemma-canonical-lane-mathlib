import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure DerivedCategoryPackage (A : AdmissibleClass) where
  triangulatedCategory : Type u
  shiftFunctor : triangulatedCategory → triangulatedCategory
  distinguishedTriangles : Prop
  mappingCone : Prop
  octahedralAxiom : Prop
  completeTriangulated : Prop

structure DerivedCategoryEvidence {A : AdmissibleClass} (D : DerivedCategoryPackage A) where
  distinguishedTrianglesClosed : D.distinguishedTriangles
  mappingConeClosed : D.mappingCone
  octahedralAxiomClosed : D.octahedralAxiom
  completeTriangulatedClosed : D.completeTriangulated

def DerivedCategoryClosed {A : AdmissibleClass} (D : DerivedCategoryPackage A) : Prop :=
  D.distinguishedTriangles ∧ D.mappingCone ∧
  D.octahedralAxiom ∧ D.completeTriangulated

theorem derived_category_closed_from_evidence
    {A : AdmissibleClass} (D : DerivedCategoryPackage A)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.distinguishedTrianglesClosed
    (And.intro E.mappingConeClosed
      (And.intro E.octahedralAxiomClosed E.completeTriangulatedClosed))

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse