import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BanachLatticeObject where
  carrier : Type
  norm : carrier → ℝ
  order : carrier → carrier → Prop
  isBanachSpace : Prop
  isRieszSpace : Prop
  normCompatible : Prop
  conclusion : isBanachSpace ∧ isRieszSpace ∧ normCompatible

structure BanachLatticeAdmittedObject where
  lattice : BanachLatticeObject
  admissible : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BanachLatticeWitnessClosed (O : BanachLatticeObject) : Prop :=
  O.conclusion

def admittedClosure (A : BanachLatticeAdmittedObject) : Prop :=
  BanachLatticeWitnessClosed A.lattice ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse