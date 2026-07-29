import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

open CategoryTheory

structure YonedaEmbedding (C : Type u) [Category C] where
  functor : C → Functor Cᵒᵖ (Type (max u v))
  fullyFaithful : ∀ (X Y : C), Function.Bijective (fun (f : X ⟶ Y) => (functor X).map f)

lemma yonedaLemma (C : Type u) [Category C] (F : Functor Cᵒᵖ (Type (max u v))) (X : C) :
    (yoneda.obj X) ⟶ F ≅ F.obj (op X) := by
  apply NatTrans.yonedaEquiv

theorem derivedYoneda (C : Type u) [Category C] [Abelian C] (F : Functor (DerivedCategory C)ᵒᵖ (Type (max u v))) (X : DerivedCategory C) :
    (yonedaDerived.obj X) ⟶ F ≅ F.obj (op X) := by
  apply NatTrans.yonedaEquiv

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse