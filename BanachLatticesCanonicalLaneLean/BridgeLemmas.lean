import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesCanonicalLaneLean.BanachLatticePackage

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachLatticeClosed (A.object : BanachLatticePackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact (A.object : BanachLatticePackage).evidence

end BanachLatticesCanonicalLaneLean
end HautevilleHouse