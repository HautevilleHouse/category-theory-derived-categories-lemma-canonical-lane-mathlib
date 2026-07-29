import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure DerivedFunctorPackage where
  leftDerivedFunctor : (Type u → Type v) → (Type u → Type v)
  rightDerivedFunctor : (Type u → Type v) → (Type u → Type v)
  longExactSequence : Prop
  spectralSequence : Prop
  exactnessProperties : Prop

structure DerivedFunctorEvidence (F : DerivedFunctorPackage) where
  longExactSequenceClosed : F.longExactSequence
  spectralSequenceClosed : F.spectralSequence
  exactnessPropertiesClosed : F.exactnessProperties

def DerivedFunctorClosed (F : DerivedFunctorPackage) : Prop :=
  F.longExactSequence ∧ F.spectralSequence ∧ F.exactnessProperties

theorem derived_functor_closed_from_evidence (F : DerivedFunctorPackage) (E : DerivedFunctorEvidence F) : DerivedFunctorClosed F := by
  exact And.intro E.longExactSequenceClosed (And.intro E.spectralSequenceClosed E.exactnessPropertiesClosed)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse