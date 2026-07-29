import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure AdjointFunctorPackage (A : AdmissibleClass) where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  adjunctionUnit : Prop
  adjunctionCounit : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence {A : AdmissibleClass} (AF : AdjointFunctorPackage A) where
  adjunctionUnitClosed : AF.adjunctionUnit
  adjunctionCounitClosed : AF.adjunctionCounit
  triangleIdentitiesClosed : AF.triangleIdentities

def AdjointFunctorClosed {A : AdmissibleClass} (AF : AdjointFunctorPackage A) : Prop :=
  AF.adjunctionUnit ∧ AF.adjunctionCounit ∧ AF.triangleIdentities

theorem adjoint_functor_closed_from_evidence
    {A : AdmissibleClass} (AF : AdjointFunctorPackage A)
    (E : AdjointFunctorEvidence AF) : AdjointFunctorClosed AF := by
  exact And.intro E.adjunctionUnitClosed
    (And.intro E.adjunctionCounitClosed E.triangleIdentitiesClosed)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse