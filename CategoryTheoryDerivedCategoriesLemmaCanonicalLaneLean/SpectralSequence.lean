import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.DerivedFunctor

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure SpectralSequencePackage {D : DerivedCategoryAdmittedObject} (F : DerivedFunctorPackage D) where
  filteredComplexGiven : Prop
  spectralSequenceConverges : Prop
  abutmentIdentified : Prop
  filteredComplexGivenTerm : filteredComplexGiven
  spectralSequenceConvergesTerm : spectralSequenceConverges
  abutmentIdentifiedTerm : abutmentIdentified

def SpectralSequenceClosed {D : DerivedCategoryAdmittedObject} {F : DerivedFunctorPackage D} (S : SpectralSequencePackage F) : Prop :=
  S.filteredComplexGiven ∧ S.spectralSequenceConverges ∧ S.abutmentIdentified

theorem spectral_sequence_closed_from_evidence {D : DerivedCategoryAdmittedObject} {F : DerivedFunctorPackage D} (S : SpectralSequencePackage F) : SpectralSequenceClosed S := by
  exact And.intro S.filteredComplexGivenTerm (And.intro S.spectralSequenceConvergesTerm S.abutmentIdentifiedTerm)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse