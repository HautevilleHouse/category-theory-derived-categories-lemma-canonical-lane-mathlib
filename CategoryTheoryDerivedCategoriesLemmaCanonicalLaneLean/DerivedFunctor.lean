import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.CategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure DerivedFunctorPackage (C D : CategoryPackage) where
  leftDerived : FunctorPackage C D → FunctorPackage C D
  rightDerived : FunctorPackage C D → FunctorPackage C D
  deltaFunctor : Prop
  longExactSequence : Prop
  spectralSequence : Prop
  deltaFunctorEvidence : deltaFunctor
  longExactSequenceEvidence : longExactSequence
  spectralSequenceEvidence : spectralSequence

structure DerivedFunctorEvidence (C D : CategoryPackage) (F : DerivedFunctorPackage C D) where
  leftDerivedClosed : Prop
  rightDerivedClosed : Prop
  derivedFunctorsClosed : leftDerivedClosed ∧ rightDerivedClosed

theorem derived_functors_closed_from_evidence (C D : CategoryPackage) (F : DerivedFunctorPackage C D) (E : DerivedFunctorEvidence C D F) : (leftDerivedClosed ∧ rightDerivedClosed) := E.derivedFunctorsClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse