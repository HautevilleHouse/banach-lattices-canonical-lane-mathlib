import BanachLatticesCanonicalLaneLean.BanachLatticeAdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BanachLatticeOrderPackage where
  carrier : Type
  norm : carrier → ℝ
  order : carrier → carrier → Prop
  latticeOperations : carrier → carrier → carrier
  isBanachSpace : Prop
  isRieszSpace : Prop
  normCompatible : Prop
  latticeCompatible : Prop

structure BanachLatticeOrderEvidence (P : BanachLatticeOrderPackage) where
  isBanachSpaceClosed : P.isBanachSpace
  isRieszSpaceClosed : P.isRieszSpace
  normCompatibleClosed : P.normCompatible
  latticeCompatibleClosed : P.latticeCompatible

def BanachLatticeOrderClosed (P : BanachLatticeOrderPackage) : Prop :=
  P.isBanachSpace ∧ P.isRieszSpace ∧ P.normCompatible ∧ P.latticeCompatible

theorem banach_lattice_order_closed_from_evidence (P : BanachLatticeOrderPackage)
    (E : BanachLatticeOrderEvidence P) : BanachLatticeOrderClosed P := by
  exact And.intro E.isBanachSpaceClosed (And.intro E.isRieszSpaceClosed
    (And.intro E.normCompatibleClosed E.latticeCompatibleClosed))

end BanachLatticesCanonicalLaneLean
end HautevilleHouse