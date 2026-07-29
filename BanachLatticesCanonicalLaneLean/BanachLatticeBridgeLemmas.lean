import BanachLatticesCanonicalLaneLean.BanachLatticeAdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

def bridgeClosed (A : BanachLatticeAdmittedObject) : Prop :=
  BanachLatticeWitnessClosed A.lattice

theorem bridge_from_admissible_class (A : BanachLatticeAdmittedObject) :
    bridgeClosed A := by
  exact A.lattice.conclusion

end BanachLatticesCanonicalLaneLean
end HautevilleHouse