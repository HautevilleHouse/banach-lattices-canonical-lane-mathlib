import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BanachLatticePackage where
  vectorSpace : Type u
  norm : vectorSpace → ℝ
  order : vectorSpace → vectorSpace → Prop
  normedLattice : Prop
  completeness : Prop
  positiveConeGenerated : Prop
  orderContinuousNorm : Prop

structure BanachLatticeEvidence (B : BanachLatticePackage) where
  normedLatticeClosed : B.normedLattice
  completenessClosed : B.completeness
  positiveConeGeneratedClosed : B.positiveConeGenerated
  orderContinuousNormClosed : B.orderContinuousNorm

def BanachLatticeClosed (B : BanachLatticePackage) : Prop :=
  B.normedLattice ∧ B.completeness ∧ B.positiveConeGenerated ∧ B.orderContinuousNorm

theorem banach_lattice_closed_from_evidence (B : BanachLatticePackage) (E : BanachLatticeEvidence B) :
    BanachLatticeClosed B := by
  exact And.intro E.normedLatticeClosed
    (And.intro E.completenessClosed
      (And.intro E.positiveConeGeneratedClosed E.orderContinuousNormClosed))

end BanachLatticesCanonicalLaneLean
end HautevilleHouse