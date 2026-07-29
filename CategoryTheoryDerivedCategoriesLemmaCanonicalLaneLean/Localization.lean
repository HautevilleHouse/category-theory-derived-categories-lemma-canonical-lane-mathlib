import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure Localization (C : Type u) [Category C] (W : Set (Morphism C)) where
  localizedCategory : Type v
  localizedCategoryCategory : Category localizedCategory
  localizationFunctor : Functor C localizedCategory
  universalProperty : ∀ (D : Type w) [Category D] (F : Functor C D) (h : ∀ (f : Morphism C), f ∈ W → IsIso (F.map f)), ∃! (G : Functor localizedCategory D), G.comp localizationFunctor = F
  sendsWToIsos : ∀ (f : Morphism C), f ∈ W → IsIso (localizationFunctor.map f)

def derivedCategoryAsLocalization (C : Type u) [Category C] [Abelian C] : Localization (ChainComplex C) (quasiIsomorphisms) := by
  exact { localizedCategory := DerivedCategory C, ... }

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse