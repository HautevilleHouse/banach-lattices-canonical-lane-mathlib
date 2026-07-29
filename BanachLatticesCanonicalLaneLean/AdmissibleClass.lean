import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BanachLatticeAdmittedObject where
  carrier : Type
  norm : carrier → ℝ
  lattice : carrier → carrier → carrier
  isBanach : Prop
  isRiesz : Prop
  conclusion : isBanach ∧ isRiesz

structure AdmissibleClass where
  object : BanachLatticeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BanachLatticesCanonicalLaneLean
end HautevilleHouse