import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesCanonicalLaneLean.BanachLatticePackage

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure PositiveOperatorPackage (B : BanachLatticePackage) where
  source : B.vectorSpace
  target : B.vectorSpace
  operator : B.vectorSpace → B.vectorSpace
  linear : Prop
  positive : Prop
  normInequality : Prop

structure PositiveOperatorEvidence {B : BanachLatticePackage} (P : PositiveOperatorPackage B) where
  linearClosed : P.linear
  positiveClosed : P.positive
  normInequalityClosed : P.normInequality

def PositiveOperatorClosed {B : BanachLatticePackage} (P : PositiveOperatorPackage B) : Prop :=
  P.linear ∧ P.positive ∧ P.normInequality

theorem positive_operator_closed_from_evidence {B : BanachLatticePackage} (P : PositiveOperatorPackage B) (E : PositiveOperatorEvidence P) :
    PositiveOperatorClosed P := by
  exact And.intro E.linearClosed (And.intro E.positiveClosed E.normInequalityClosed)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse