import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure BanachLattice (E : Type*) [NormedAddCommGroup E] [PartialOrder E] where
  normMonotone : ∀ x y : E, |x| ≤ |y| → ‖x‖ ≤ ‖y‖
  solidInequality : ∀ x : E, |x| = x ∨ |x| = -x
  normComplete : CompleteSpace E

structure BanachLatticeHomomorphism (E F : Type*) [NormedAddCommGroup E] [PartialOrder E] [NormedAddCommGroup F] [PartialOrder F] (f : E → F) where
  linear : f 0 = 0 ∧ ∀ x y, f (x + y) = f x + f y ∧ ∀ t : ℝ, f (t • x) = t • f x
  positive : ∀ x : E, 0 ≤ x → 0 ≤ f x
  bounded : ∃ M : ℝ, ∀ x : E, ‖f x‖ ≤ M * ‖x‖

def BanachLatticeClosed (E : BanachLattice ℓ?) : Prop :=
  True

end BanachLatticesCanonicalLaneLean
end HautevilleHouse