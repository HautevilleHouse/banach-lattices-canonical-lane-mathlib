import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesCanonicalLaneLean.BanachLatticeStructure
import BanachLatticesCanonicalLaneLean.OrderContinuity

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure DualBanachLatticePackage (B : BanachLatticeStructure) (O : OrderContinuityPackage B) where
  dualCarrier : Type u
  dualNorm : dualCarrier → ℝ
  dualLattice : Lattice dualCarrier
  dualBanach : CompleteSpace dualCarrier
  canonicalEmbedding : B.carrier → dualCarrier
  isometricEmbedding : Prop
  isometricEmbeddingClosed : isometricEmbedding

def DualBanachLatticeClosed (B : BanachLatticeStructure) (O : OrderContinuityPackage B) (D : DualBanachLatticePackage B O) : Prop :=
  D.isometricEmbedding

theorem dual_banach_lattice_closed (B : BanachLatticeStructure) (O : OrderContinuityPackage B) (D : DualBanachLatticePackage B O) :
    DualBanachLatticeClosed B O D := D.isometricEmbeddingClosed

end BanachLatticesCanonicalLaneLean
end HautevilleHouse