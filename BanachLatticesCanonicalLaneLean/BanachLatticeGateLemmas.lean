import BanachLatticesCanonicalLaneLean.BanachLatticeBridgeLemmas

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

def gateClosed (A : BanachLatticeAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BanachLatticeAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

end BanachLatticesCanonicalLaneLean
end HautevilleHouse