import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesCanonicalLaneLean.BanachLatticePackage

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure OrderContinuityPackage (B : BanachLatticePackage) where
  orderConvergentSequences : Type u
  normConvergentSequences : Type v
  orderContinuityOfNorm : Prop
  monotoneConvergenceTheorem : Prop
  fatouProperty : Prop

structure OrderContinuityEvidence {B : BanachLatticePackage} (O : OrderContinuityPackage B) where
  orderContinuityOfNormClosed : O.orderContinuityOfNorm
  monotoneConvergenceTheoremClosed : O.monotoneConvergenceTheorem
  fatouPropertyClosed : O.fatouProperty

def OrderContinuityClosed {B : BanachLatticePackage} (O : OrderContinuityPackage B) : Prop :=
  O.orderContinuityOfNorm ∧ O.monotoneConvergenceTheorem ∧ O.fatouProperty

theorem order_continuity_closed_from_evidence {B : BanachLatticePackage} (O : OrderContinuityPackage B) (E : OrderContinuityEvidence O) :
    OrderContinuityClosed O := by
  exact And.intro E.orderContinuityOfNormClosed (And.intro E.monotoneConvergenceTheoremClosed E.fatouPropertyClosed)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse