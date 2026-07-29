import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure MilankovitchCyclesPackage where
  orbitalParameters : Float
  insolationForcing : Float
  orbitalTheoryValid : Prop
  climateResponse : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalTheoryValidClosed : M.orbitalTheoryValid
  climateResponseClosed : M.climateResponse

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalTheoryValid ∧ M.climateResponse

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage)
    (E : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro E.orbitalTheoryValidClosed E.climateResponseClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse