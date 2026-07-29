import BanachLatticesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure OrderUnitNormPackage where
  orderUnit : Type u
  normProperty : Prop
  orderUnitProperty : Prop
  normEquivalence : Prop

structure OrderUnitNormEvidence (O : OrderUnitNormPackage) where
  normPropertyClosed : O.normProperty
  orderUnitPropertyClosed : O.orderUnitProperty
  normEquivalenceClosed : O.normEquivalence

def OrderUnitNormClosed (O : OrderUnitNormPackage) : Prop :=
  O.normProperty ∧ O.orderUnitProperty ∧ O.normEquivalence

theorem order_unit_norm_closed_from_evidence
    (O : OrderUnitNormPackage) (E : OrderUnitNormEvidence O) :
    OrderUnitNormClosed O := by
  exact And.intro E.normPropertyClosed
    (And.intro E.orderUnitPropertyClosed E.normEquivalenceClosed)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse