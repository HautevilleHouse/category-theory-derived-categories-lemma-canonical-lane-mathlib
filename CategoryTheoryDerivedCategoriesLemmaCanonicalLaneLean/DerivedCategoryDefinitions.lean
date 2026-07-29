import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure DerivedCategory (C : Type u) [Category C] [Abelian C] where
  obj : Type v
  morphismSet : obj → obj → Type w
  identity : (X : obj) → morphismSet X X
  compose : {X Y Z : obj} → morphismSet X Y → morphismSet Y Z → morphismSet X Z
  associativity : ∀ {W X Y Z : obj} (f : morphismSet W X) (g : morphismSet X Y) (h : morphismSet Y Z), compose (compose f g) h = compose f (compose g h)
  identityLeft : ∀ {X Y : obj} (f : morphismSet X Y), compose (identity X) f = f
  identityRight : ∀ {X Y : obj} (f : morphismSet X Y), compose f (identity Y) = f
  shiftFunctor : ℤ → Functor (Category.of obj morphismSet) (Category.of obj morphismSet)
  distinguishedTriangles : Set (Triangle (Category.of obj morphismSet))
  shiftFunctorAutomorphism : (n : ℤ) → shiftFunctor n ≅ shiftFunctor 0
  octahedralAxiom : Prop
  shiftFunctorIsEquivalence : (n : ℤ) → IsEquivalence (shiftFunctor n)

def DerivedCategoryClosed (D : DerivedCategory) : Prop := D.octahedralAxiom

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse