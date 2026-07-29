import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure TriangulatedCategoryPackage where
  suspensionFunctor : Type u → Type u
  distinguishedTriangle : Prop
  octahedralAxiom : Prop

structure TriangulatedCategoryEvidence (T : TriangulatedCategoryPackage) where
  distinguishedTriangleClosed : T.distinguishedTriangle
  octahedralAxiomClosed : T.octahedralAxiom

def TriangulatedCategoryClosed (T : TriangulatedCategoryPackage) : Prop :=
  T.distinguishedTriangle ∧ T.octahedralAxiom

theorem triangulated_category_closed_from_evidence (T : TriangulatedCategoryPackage) (E : TriangulatedCategoryEvidence T) : TriangulatedCategoryClosed T := by
  exact And.intro E.distinguishedTriangleClosed E.octahedralAxiomClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse