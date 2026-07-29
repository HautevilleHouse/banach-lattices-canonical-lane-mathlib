import BanachLatticesCanonicalLaneLean.BanachLatticeGateLemmas

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

def ConstrainedBanachLatticeClosure (A : BanachLatticeAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_lattice_endgame (A : BanachLatticeAdmittedObject) :
    ConstrainedBanachLatticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse