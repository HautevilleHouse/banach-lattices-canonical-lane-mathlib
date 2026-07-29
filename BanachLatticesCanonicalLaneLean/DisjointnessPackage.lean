import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesCanonicalLaneLean.BanachLatticePackage

namespace HautevilleHouse
namespace BanachLatticesCanonicalLaneLean

structure DisjointnessPackage (B : BanachLatticePackage) where
  elements : List B.vectorSpace
  pairwiseDisjoint : Prop
  bandGenerated : Prop
  disjointSequenceExists : Prop

structure DisjointnessEvidence {B : BanachLatticePackage} (D : DisjointnessPackage B) where
  pairwiseDisjointClosed : D.pairwiseDisjoint
  bandGeneratedClosed : D.bandGenerated
  disjointSequenceExistsClosed : D.disjointSequenceExists

def DisjointnessClosed {B : BanachLatticePackage} (D : DisjointnessPackage B) : Prop :=
  D.pairwiseDisjoint ∧ D.bandGenerated ∧ D.disjointSequenceExists

theorem disjointness_closed_from_evidence {B : BanachLatticePackage} (D : DisjointnessPackage B) (E : DisjointnessEvidence D) :
    DisjointnessClosed D := by
  exact And.intro E.pairwiseDisjointClosed (And.intro E.bandGeneratedClosed E.disjointSequenceExistsClosed)

end BanachLatticesCanonicalLaneLean
end HautevilleHouse