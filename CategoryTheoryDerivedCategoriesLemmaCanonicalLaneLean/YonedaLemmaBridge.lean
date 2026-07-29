import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean

structure YonedaLemmaPackage where
  categoryObject : Type u
  homFunctor : Type v
  naturalBijection : Prop
  yonedaEmbeddingFullFaithful : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalBijectionClosed : Y.naturalBijection
  yonedaEmbeddingFullFaithfulClosed : Y.yonedaEmbeddingFullFaithful

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalBijection ∧ Y.yonedaEmbeddingFullFaithful

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.naturalBijectionClosed E.yonedaEmbeddingFullFaithfulClosed

end CategoryTheoryDerivedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse