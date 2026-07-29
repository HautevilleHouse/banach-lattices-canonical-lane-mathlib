import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure PositiveOperatorPackage (B C : BanachLatticeStructure) where
  operator : B.carrier → C.carrier
  linear : Prop
  positive : ∀ (x : B.carrier), B.partialOrder 0 x → C.partialOrder 0 (operator x)
  bounded : Prop
  positiveClosed : positive
  linearClosed : linear
  boundedClosed : bounded

def PositiveOperatorClosed (B C : BanachLatticeStructure) (P : PositiveOperatorPackage B C) : Prop :=
  P.positive ∧ P.linear ∧ P.bounded

theorem positive_operator_closed (B C : BanachLatticeStructure) (P : PositiveOperatorPackage B C) :
    PositiveOperatorClosed B C P :=
  And.intro P.positiveClosed (And.intro P.linearClosed P.boundedClosed)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse