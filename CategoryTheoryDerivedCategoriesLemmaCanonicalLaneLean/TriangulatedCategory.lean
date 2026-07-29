import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.CategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure Triple (A B C : Type u) where
  first : A
  second : B
  third : C

structure TriangulatedCategoryPackage where
  category : CategoryPackage
  shiftFunctor : FunctorPackage category category
  distinguishedTriangles : Set (Triple (category.morphisms (α : category.objects) (β : category.objects)) (category.morphisms (γ : category.objects) (δ : category.objects)) (category.morphisms (ε : category.objects) (shiftFunctor.mapObjects (ζ : category.objects))))
  triangulatedStructure : Prop

def TriangulatedCategoryEvidence (T : TriangulatedCategoryPackage) : Prop := T.triangulatedStructure

theorem triangulated_category_closed (T : TriangulatedCategoryPackage) (E : TriangulatedCategoryEvidence T) : T.triangulatedStructure := E

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse