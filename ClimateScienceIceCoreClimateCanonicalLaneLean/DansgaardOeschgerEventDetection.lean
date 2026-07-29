import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure DansgaardOeschgerEventDetectionPackage where
  eventRecord : Type
  eventTime : eventRecord → ℝ
  eventMagnitude : eventRecord → ℝ
  eventRateOfChange : eventRecord → ℝ
  abruptTransitionDetected : Prop
  stadialInterstadialPattern : Prop
  millennialScaleConsistent : Prop

structure DansgaardOeschgerEventDetectionEvidence
    (D : DansgaardOeschgerEventDetectionPackage) where
  abruptTransitionDetectedClosed : D.abruptTransitionDetected
  stadialInterstadialPatternClosed : D.stadialInterstadialPattern
  millennialScaleConsistentClosed : D.millennialScaleConsistent

def DansgaardOeschgerEventDetectionClosed (D : DansgaardOeschgerEventDetectionPackage) : Prop :=
  D.abruptTransitionDetected ∧ D.stadialInterstadialPattern ∧ D.millennialScaleConsistent

theorem dansgaard_oeschger_event_detection_closed_from_evidence
    (D : DansgaardOeschgerEventDetectionPackage)
    (E : DansgaardOeschgerEventDetectionEvidence D) :
    DansgaardOeschgerEventDetectionClosed D := by
  exact And.intro E.abruptTransitionDetectedClosed
    (And.intro E.stadialInterstadialPatternClosed E.millennialScaleConsistentClosed)

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
