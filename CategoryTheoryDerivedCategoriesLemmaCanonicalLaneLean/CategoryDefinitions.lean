import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure CategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : ∀ (X : objects), morphisms X X
  composition : ∀ {X Y Z : objects}, morphisms X Y → morphisms Y Z → morphisms X Z
  associativity : ∀ {X Y Z W : objects} (f : morphisms X Y) (g : morphisms Y Z) (h : morphisms Z W), composition (composition f g) h = composition f (composition g h)
  identityLeft : ∀ {X Y : objects} (f : morphisms X Y), composition (identity X) f = f
  identityRight : ∀ {X Y : objects} (f : morphisms X Y), composition f (identity Y) = f

structure FunctorPackage (C D : CategoryPackage) where
  mapObjects : C.objects → D.objects
  mapMorphisms : ∀ {X Y : C.objects}, C.morphisms X Y → D.morphisms (mapObjects X) (mapObjects Y)
  preservesIdentity : ∀ (X : C.objects), mapMorphisms (C.identity X) = D.identity (mapObjects X)
  preservesComposition : ∀ {X Y Z : C.objects} (f : C.morphisms X Y) (g : C.morphisms Y Z), mapMorphisms (C.composition f g) = D.composition (mapMorphisms f) (mapMorphisms g)

structure AdmissibleDerivedCategory (C : CategoryPackage) where
  derivedObjects : C.objects → Type u
  derivedMorphisms : ∀ (X Y : C.objects), C.morphisms X Y → Type v
  derivedIdentity : ∀ (X : C.objects), derivedMorphisms X X (C.identity X)
  derivedComposition : ∀ {X Y Z : C.objects} (f : C.morphisms X Y) (g : C.morphisms Y Z), derivedMorphisms X Y f → derivedMorphisms Y Z g → derivedMorphisms X Z (C.composition f g)
  derivedAssociativity : ∀ {X Y Z W : C.objects} (f : C.morphisms X Y) (g : C.morphisms Y Z) (h : C.morphisms Z W) (a : derivedMorphisms X Y f) (b : derivedMorphisms Y Z g) (c : derivedMorphisms Z W h), derivedComposition (derivedComposition a b) c = derivedComposition a (derivedComposition b c)
  derivedIdentityLeft : ∀ {X Y : C.objects} (f : C.morphisms X Y) (a : derivedMorphisms X Y f), derivedComposition (derivedIdentity X) a = a
  derivedIdentityRight : ∀ {X Y : C.objects} (f : C.morphisms X Y) (a : derivedMorphisms X Y f), derivedComposition a (derivedIdentity Y) = a

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse