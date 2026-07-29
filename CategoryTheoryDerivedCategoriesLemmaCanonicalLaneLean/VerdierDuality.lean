import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean.DerivedCategory

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure VerdierDualityPackage (D : DerivedCategoryAdmittedObject) where
  dualizingComplexExists : Prop
  dualityIsomorphismDefined : Prop
  sixFunctorFormalismApplied : Prop
  dualizingComplexExistsTerm : dualizingComplexExists
  dualityIsomorphismDefinedTerm : dualityIsomorphismDefined
  sixFunctorFormalismAppliedTerm : sixFunctorFormalismApplied

def VerdierDualityClosed (D : DerivedCategoryAdmittedObject) (V : VerdierDualityPackage D) : Prop :=
  V.dualizingComplexExists ∧ V.dualityIsomorphismDefined ∧ V.sixFunctorFormalismApplied

theorem verdier_duality_closed_from_evidence (D : DerivedCategoryAdmittedObject) (V : VerdierDualityPackage D) : VerdierDualityClosed D V := by
  exact And.intro V.dualizingComplexExistsTerm (And.intro V.dualityIsomorphismDefinedTerm V.sixFunctorFormalismAppliedTerm)

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse