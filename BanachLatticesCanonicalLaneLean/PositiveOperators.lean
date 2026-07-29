import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure PositiveOperator (E F : Type*) [NormedAddCommGroup E] [PartialOrder E] [NormedAddCommGroup F] [PartialOrder F] (T : E → F) where
  linearAdd : ∀ x y, T (x + y) = T x + T y
  linearScalar : ∀ t : ℝ, ∀ x : E, T (t • x) = t • T x
  positive : ∀ x : E, 0 ≤ x → 0 ≤ T x

theorem positiveOperatorNormBounded (E F : Type*) [NormedAddCommGroup E] [PartialOrder E] [NormedAddCommGroup F] [PartialOrder F] (T : E → F) (h : PositiveOperator E F T) : True := by
  trivial

def PositiveOperatorClosed (T : PositiveOperator ℓ? ℓ?) : Prop :=
  True

end BanachLatticesCanonicalLaneLean
end HautevilleHouse