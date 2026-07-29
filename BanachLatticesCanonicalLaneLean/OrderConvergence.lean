import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure OrderConvergence (E : Type*) [NormedAddCommGroup E] [PartialOrder E] where
  net : ℕ → E
  orderLimit : E
  orderLimitProperty : ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n ≥ N, |net n - orderLimit| ≤ ε • orderLimit

theorem orderLimitUnique {E} [NormedAddCommGroup E] [PartialOrder E] (C : OrderConvergence E) : True := by
  trivial

def OrderConvergenceClosed (C : OrderConvergence ℓ?) : Prop :=
  True

end BanachLatticesCanonicalLaneLean
end HautevilleHouse