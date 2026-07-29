import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure CanonicalLimitPackage where
  diagramType : Type u
  limitObject : Type v
  universalProperty : Prop
  limitExists : Prop

structure CanonicalLimitEvidence (C : CanonicalLimitPackage) where
  universalPropertyClosed : C.universalProperty
  limitExistsClosed : C.limitExists

def CanonicalLimitClosed (C : CanonicalLimitPackage) : Prop :=
  C.universalProperty ∧ C.limitExists

theorem canonical_limit_closed_from_evidence (C : CanonicalLimitPackage) (E : CanonicalLimitEvidence C) : CanonicalLimitClosed C := by
  exact And.intro E.universalPropertyClosed E.limitExistsClosed

structure CanonicalColimitPackage where
  diagramType : Type u
  colimitObject : Type v
  universalProperty : Prop
  colimitExists : Prop

structure CanonicalColimitEvidence (C : CanonicalColimitPackage) where
  universalPropertyClosed : C.universalProperty
  colimitExistsClosed : C.colimitExists

def CanonicalColimitClosed (C : CanonicalColimitPackage) : Prop :=
  C.universalProperty ∧ C.colimitExists

theorem canonical_colimit_closed_from_evidence (C : CanonicalColimitPackage) (E : CanonicalColimitEvidence C) : CanonicalColimitClosed C := by
  exact And.intro E.universalPropertyClosed E.colimitExistsClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse