import BanachLatticesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BanachLatticeDecompositionPackage where
  bandProjections : Prop
  disjointDecomposition : Prop
  orderContinuity : Prop
  atomicPart : Prop

structure BanachLatticeDecompositionEvidence (D : BanachLatticeDecompositionPackage) where
  bandProjectionsClosed : D.bandProjections
  disjointDecompositionClosed : D.disjointDecomposition
  orderContinuityClosed : D.orderContinuity
  atomicPartClosed : D.atomicPart

def BanachLatticeDecompositionClosed (D : BanachLatticeDecompositionPackage) : Prop :=
  D.bandProjections ∧ D.disjointDecomposition ∧ D.orderContinuity ∧ D.atomicPart

theorem banach_lattice_decomposition_closed_from_evidence
    (D : BanachLatticeDecompositionPackage) (E : BanachLatticeDecompositionEvidence D) :
    BanachLatticeDecompositionClosed D := by
  exact And.intro E.bandProjectionsClosed
    (And.intro E.disjointDecompositionClosed
      (And.intro E.orderContinuityClosed E.atomicPartClosed))

end BanachLatticesCanonicalLaneLean
end HautevilleHouse