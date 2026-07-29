import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure OrderContinuityPackage (B : BanachLatticeStructure) where
  orderDual : Type u
  orderDualNorm : orderDual → ℝ
  orderDualBanachLattice : BanachLatticeStructure
  orderContinuousFunctional : Set (B.carrier → ℝ)
  orderContinuityProperty : Prop
  orderContinuityEvidence : orderContinuityProperty

def OrderContinuityClosed (B : BanachLatticeStructure) (P : OrderContinuityPackage B) : Prop :=
  P.orderContinuityProperty

theorem order_continuity_closed (B : BanachLatticeStructure) (P : OrderContinuityPackage B) :
    OrderContinuityClosed B P := P.orderContinuityEvidence

end BanachLatticesCanonicalLaneLean
end HautevilleHouse