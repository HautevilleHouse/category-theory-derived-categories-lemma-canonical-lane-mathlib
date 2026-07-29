import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure AdjointFunctorPair where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type v → Type u
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPair) where
  leftAdjointClosed : A.unitNatural
  rightAdjointClosed : A.counitNatural
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed (A : AdjointFunctorPair) : Prop :=
  A.unitNatural ∧ A.counitNatural ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPair) (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.leftAdjointClosed (And.intro E.rightAdjointClosed E.triangleIdentitiesClosed)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse