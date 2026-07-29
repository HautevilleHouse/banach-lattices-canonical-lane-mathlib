import BanachLatticesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BanachLatticeConvergencePackage where
  orderConvergence : Prop
  normConvergence : Prop
  monotoneConvergence : Prop
  dominatedConvergence : Prop

structure BanachLatticeConvergenceEvidence (C : BanachLatticeConvergencePackage) where
  orderConvergenceClosed : C.orderConvergence
  normConvergenceClosed : C.normConvergence
  monotoneConvergenceClosed : C.monotoneConvergence
  dominatedConvergenceClosed : C.dominatedConvergence

def BanachLatticeConvergenceClosed (C : BanachLatticeConvergencePackage) : Prop :=
  C.orderConvergence ∧ C.normConvergence ∧ C.monotoneConvergence ∧ C.dominatedConvergence

theorem banach_lattice_convergence_closed_from_evidence
    (C : BanachLatticeConvergencePackage) (E : BanachLatticeConvergenceEvidence C) :
    BanachLatticeConvergenceClosed C := by
  exact And.intro E.orderConvergenceClosed
    (And.intro E.normConvergenceClosed
      (And.intro E.monotoneConvergenceClosed E.dominatedConvergenceClosed))

end BanachLatticesCanonicalLaneLean
end HautevilleHouse