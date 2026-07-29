import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.DerivedFunctor

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure HypercohomologyPackage {D : DerivedCategorySignature}
    {E : DerivedCategoryEvidence D} {F : DerivedFunctorPackage E}
    (Ev : DerivedFunctorEvidence F) where
  hypercohomologyFunctor : Type
  complexOfSheaves : Type
  spectralSequence : Type
  hypercohomologyToDerived : Prop
  spectralSequenceConverges : Prop

structure HypercohomologyEvidence {D : DerivedCategorySignature}
    {E : DerivedCategoryEvidence D} {F : DerivedFunctorPackage E}
    {Ev : DerivedFunctorEvidence F} (H : HypercohomologyPackage Ev) where
  hypercohomologyToDerivedClosed : H.hypercohomologyToDerived
  spectralSequenceConvergesClosed : H.spectralSequenceConverges

def HypercohomologyClosed {D : DerivedCategorySignature}
    {E : DerivedCategoryEvidence D} {F : DerivedFunctorPackage E}
    {Ev : DerivedFunctorEvidence F} (H : HypercohomologyPackage Ev) : Prop :=
  H.hypercohomologyToDerived ∧ H.spectralSequenceConverges

theorem hypercohomology_closed_from_evidence
    {D : DerivedCategorySignature} {E : DerivedCategoryEvidence D}
    {F : DerivedFunctorPackage E} {Ev : DerivedFunctorEvidence F}
    (H : HypercohomologyPackage Ev) (HEv : HypercohomologyEvidence H) :
    HypercohomologyClosed H := by
  exact And.intro HEv.hypercohomologyToDerivedClosed
    HEv.spectralSequenceConvergesClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse