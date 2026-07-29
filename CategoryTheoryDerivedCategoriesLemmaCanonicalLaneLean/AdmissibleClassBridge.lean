import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DerivedAdmittedObject where
  derivedCategory : DerivedCategory (Type u) (by infer_instance) (by infer_instance)
  triangulatedStructure : TriangulatedStructure (Category.of (DerivedCategory.obj (Type u) (by infer_instance) (by infer_instance).obj) (DerivedCategory.morphismSet (Type u) (by infer_instance) (by infer_instance)))
  YonedaEmbedding : YonedaEmbedding (DerivedCategory (Type u) (by infer_instance) (by infer_instance))
  localizationProperty : Localization (ChainComplex (Type u)) (quasiIsomorphisms)
  conclusion : DerivedCategoryClosed (derivedCategory) ∧ TriangulatedStructure.triangulatedAxioms (triangulatedStructure) ∧ YonedaEmbedding.fullyFaithful (YonedaEmbedding) ∧ Localization.universalProperty (localizationProperty) (any target category)

structure AdmissibleClass (A : DerivedAdmittedObject) where
  object : DerivedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse