import BanachLatticesCanonicalLaneLean.BanachLatticeOrderStructure

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure RieszSpacePropertyPackage (P : BanachLatticeOrderPackage) where
  orderComplete : Prop
  orderContinuousNorm : Prop
  monotoneConvergence : Prop
  disjointnessProperties : Prop

structure RieszSpacePropertyEvidence {P : BanachLatticeOrderPackage}
    (R : RieszSpacePropertyPackage P) where
  orderCompleteClosed : R.orderComplete
  orderContinuousNormClosed : R.orderContinuousNorm
  monotoneConvergenceClosed : R.monotoneConvergence
  disjointnessPropertiesClosed : R.disjointnessProperties

def RieszSpacePropertyClosed {P : BanachLatticeOrderPackage}
    (R : RieszSpacePropertyPackage P) : Prop :=
  R.orderComplete ∧ R.orderContinuousNorm ∧ R.monotoneConvergence ∧ R.disjointnessProperties

theorem riesz_space_property_closed_from_evidence {P : BanachLatticeOrderPackage}
    (R : RieszSpacePropertyPackage P) (E : RieszSpacePropertyEvidence R) :
    RieszSpacePropertyClosed R := by
  exact And.intro E.orderCompleteClosed (And.intro E.orderContinuousNormClosed
    (And.intro E.monotoneConvergenceClosed E.disjointnessPropertiesClosed))

end BanachLatticesCanonicalLaneLean
end HautevilleHouse