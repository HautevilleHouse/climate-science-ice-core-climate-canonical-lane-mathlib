import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure GlacialInterglacialTransitionsPackage where
  glacialStages : Type u
  interglacialStages : Type v
  transitionDuration : Type w
  seaLevelCorrelation : Prop
  greenhouseGasForcing : Prop
  orbitalPacing : Prop

structure GlacialInterglacialTransitionsEvidence (G : GlacialInterglacialTransitionsPackage) where
  seaLevelCorrelationClosed : G.seaLevelCorrelation
  greenhouseGasForcingClosed : G.greenhouseGasForcing
  orbitalPacingClosed : G.orbitalPacing

def GlacialInterglacialTransitionsClosed (G : GlacialInterglacialTransitionsPackage) : Prop :=
  G.seaLevelCorrelation ∧ G.greenhouseGasForcing ∧ G.orbitalPacing

theorem glacial_interglacial_transitions_closed_from_evidence (G : GlacialInterglacialTransitionsPackage)
    (E : GlacialInterglacialTransitionsEvidence G) : GlacialInterglacialTransitionsClosed G := by
  exact And.intro E.seaLevelCorrelationClosed (And.intro E.greenhouseGasForcingClosed
    E.orbitalPacingClosed)

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse