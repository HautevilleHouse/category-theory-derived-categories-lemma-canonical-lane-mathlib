import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure TStructure where
  heart : Type u
  tStructurePairs : Type v
  truncation : Type
  heartExactness : Prop
  truncationTStructureCompatible : Prop
  cohomologicalFunctor : Prop

structure TStructureEvidence (T : TStructure) where
  heartExactnessClosed : T.heartExactness
  truncationTStructureCompatibleClosed : T.truncationTStructureCompatible
  cohomologicalFunctorClosed : T.cohomologicalFunctor

def TStructureClosed (T : TStructure) : Prop :=
  T.heartExactness ∧ T.truncationTStructureCompatible ∧
  T.cohomologicalFunctor

theorem t_structure_closed_from_evidence (T : TStructure)
    (E : TStructureEvidence T) : TStructureClosed T := by
  exact And.intro E.heartExactnessClosed
    (And.intro E.truncationTStructureCompatibleClosed
      E.cohomologicalFunctorClosed)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse