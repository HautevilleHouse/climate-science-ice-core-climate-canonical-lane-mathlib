import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  eventTiming : Float
  amplitude : Float
  abruptTransition : Prop
  atlanticMeridionalOverturning : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  abruptTransitionClosed : D.abruptTransition
  atlanticMeridionalOverturningClosed : D.atlanticMeridionalOverturning

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.abruptTransition ∧ D.atlanticMeridionalOverturning

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage)
    (E : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro E.abruptTransitionClosed E.atlanticMeridionalOverturningClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse