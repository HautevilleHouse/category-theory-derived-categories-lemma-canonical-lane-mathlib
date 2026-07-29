import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure YonedaLemmaPackage (A : AdmissibleClass) where
  category : Type u
  functorCategory : Type v
  yonedaEmbedding : category → functorCategory
  fullyFaithful : Prop
  naturalIsomorphism : Prop

structure YonedaLemmaEvidence {A : AdmissibleClass} (Y : YonedaLemmaPackage A) where
  fullyFaithfulClosed : Y.fullyFaithful
  naturalIsomorphismClosed : Y.naturalIsomorphism

def YonedaLemmaClosed {A : AdmissibleClass} (Y : YonedaLemmaPackage A) : Prop :=
  Y.fullyFaithful ∧ Y.naturalIsomorphism

theorem yoneda_lemma_closed_from_evidence
    {A : AdmissibleClass} (Y : YonedaLemmaPackage A)
    (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.fullyFaithfulClosed E.naturalIsomorphismClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse