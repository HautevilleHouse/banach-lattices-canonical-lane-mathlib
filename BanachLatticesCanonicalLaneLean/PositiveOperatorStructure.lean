import BanachLatticesCanonicalLaneLean.RieszSpaceProperties

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure PositiveOperatorPackage {P : BanachLatticeOrderPackage}
    (R : RieszSpacePropertyPackage P) where
  operator : carrier → carrier
  positive : Prop
  bounded : Prop
  orderContinuous : Prop
-- need access to carrier from P
  operator_positive_prop : positive
  operator_bounded_prop : bounded
  operator_order_continuous_prop : orderContinuous

structure PositiveOperatorEvidence {P : BanachLatticeOrderPackage}
    {R : RieszSpacePropertyPackage P} (Op : PositiveOperatorPackage R) where
  operator_positive_closed : Op.operator_positive_prop
  operator_bounded_closed : Op.operator_bounded_prop
  operator_order_continuous_closed : Op.operator_order_continuous_prop

def PositiveOperatorClosed {P : BanachLatticeOrderPackage}
    {R : RieszSpacePropertyPackage P} (Op : PositiveOperatorPackage R) : Prop :=
  Op.operator_positive_prop ∧ Op.operator_bounded_prop ∧ Op.operator_order_continuous_prop

theorem positive_operator_closed_from_evidence {P : BanachLatticeOrderPackage}
    {R : RieszSpacePropertyPackage P} (Op : PositiveOperatorPackage R)
    (E : PositiveOperatorEvidence Op) : PositiveOperatorClosed Op := by
  exact And.intro E.operator_positive_closed (And.intro E.operator_bounded_closed
    E.operator_order_continuous_closed)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse