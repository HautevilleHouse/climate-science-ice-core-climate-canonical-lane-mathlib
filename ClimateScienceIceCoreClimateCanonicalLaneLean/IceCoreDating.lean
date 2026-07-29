import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure IceCoreDatingPackage where
  depthAgeModel : Float
  annualLayerCounting : Prop
  volcanicMarkers : Prop
  absoluteChronology : Prop

structure IceCoreDatingEvidence (D : IceCoreDatingPackage) where
  annualLayerCountingClosed : D.annualLayerCounting
  volcanicMarkersClosed : D.volcanicMarkers
  absoluteChronologyClosed : D.absoluteChronology

def IceCoreDatingClosed (D : IceCoreDatingPackage) : Prop :=
  D.annualLayerCounting ∧ D.volcanicMarkers ∧ D.absoluteChronology

theorem ice_core_dating_closed_from_evidence (D : IceCoreDatingPackage)
    (E : IceCoreDatingEvidence D) : IceCoreDatingClosed D := by
  exact And.intro E.annualLayerCountingClosed
    (And.intro E.volcanicMarkersClosed E.absoluteChronologyClosed)

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse