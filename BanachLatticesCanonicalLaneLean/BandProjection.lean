import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesCanonicalLaneLean.BridgeGate

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BandProjectionPackage {E : BanachLatticeAdmittedObject} where
  projectionOperator : E.carrier → E.carrier
  bandDecomposition : Prop
  positivityPreserving : Prop
  orderBounded : Prop
  contractive : Prop

structure BandProjectionEvidence {E : BanachLatticeAdmittedObject}
    (P : BandProjectionPackage E) where
  bandDecompositionClosed : P.bandDecomposition
  positivityPreservingClosed : P.positivityPreserving
  orderBoundedClosed : P.orderBounded
  contractiveClosed : P.contractive

def BandProjectionClosed {E : BanachLatticeAdmittedObject}
    (P : BandProjectionPackage E) : Prop :=
  P.bandDecomposition ∧ P.positivityPreserving ∧
  P.orderBounded ∧ P.contractive

theorem band_projection_closed_from_evidence
    {E : BanachLatticeAdmittedObject} (P : BandProjectionPackage E)
    (E' : BandProjectionEvidence P) : BandProjectionClosed P := by
  exact And.intro E'.bandDecompositionClosed
    (And.intro E'.positivityPreservingClosed
      (And.intro E'.orderBoundedClosed E'.contractiveClosed))

end BanachLatticesCanonicalLaneLean
end HautevilleHouse