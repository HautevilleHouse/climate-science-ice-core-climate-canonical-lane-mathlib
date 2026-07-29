import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure GlacialInterglacialCyclesPackage where
  orbitalForcing : Type u
  insolationVariation : orbitalForcing -> Float
  iceVolumeResponse : orbitalForcing -> Prop
  d18OProxy : orbitalForcing -> Float
  cyclePeriodicity : Float
  milankovitchConsistent : Prop

structure GlacialInterglacialCyclesEvidence (G : GlacialInterglacialCyclesPackage) where
  iceVolumeResponseClosed : G.iceVolumeResponse
  milankovitchConsistentClosed : G.milankovitchConsistent
  cyclePeriodicityDefined : G.cyclePeriodicity > 0

def GlacialInterglacialCyclesClosed (G : GlacialInterglacialCyclesPackage) : Prop :=
  G.iceVolumeResponse ∧ G.milankovitchConsistent ∧ (G.cyclePeriodicity > 0)

theorem glacial_interglacial_cycles_closed_from_evidence (G : GlacialInterglacialCyclesPackage)
    (Ev : GlacialInterglacialCyclesEvidence G) : GlacialInterglacialCyclesClosed G := by
  exact And.intro Ev.iceVolumeResponseClosed
    (And.intro Ev.milankovitchConsistentClosed Ev.cyclePeriodicityDefined)

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
