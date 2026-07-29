import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure DansgaardOeschgerPackage where
  abruptWarmingEvents : Prop
  coolingPhase : Prop
  periodicity : Prop
  atlanticMeridionalOverturningCirculation : Prop
  iceCoreProxySignal : Type

structure DansgaardOeschgerEvidence (D : DansgaardOeschgerPackage) where
  abruptWarmingEventsClosed : D.abruptWarmingEvents
  coolingPhaseClosed : D.coolingPhase
  periodicityClosed : D.periodicity
  aMOCClosed : D.atlanticMeridionalOverturningCirculation

def DansgaardOeschgerClosed (D : DansgaardOeschgerPackage) : Prop :=
  D.abruptWarmingEvents ∧ D.coolingPhase ∧
  D.periodicity ∧ D.atlanticMeridionalOverturningCirculation

theorem dansgaard_oeschger_closed_from_evidence
    (D : DansgaardOeschgerPackage) (E : DansgaardOeschgerEvidence D) :
    DansgaardOeschgerClosed D := by
  exact And.intro E.abruptWarmingEventsClosed
    (And.intro E.coolingPhaseClosed
      (And.intro E.periodicityClosed E.aMOCClosed))

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
