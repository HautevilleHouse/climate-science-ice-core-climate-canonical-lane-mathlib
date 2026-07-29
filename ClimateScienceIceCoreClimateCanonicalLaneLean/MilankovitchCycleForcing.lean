import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure MilankovitchCycleForcingPackage where
  orbitalParameterSet : Type
  obliquity : orbitalParameterSet → ℝ
  eccentricity : orbitalParameterSet → ℝ
  precession : orbitalParameterSet → ℝ
  insolationAnomaly : orbitalParameterSet → ℝ
  orbitalTheoryValid : Prop
  insolationModelCalibrated : Prop

def MilankovitchCycleForcingClosed (M : MilankovitchCycleForcingPackage) : Prop :=
  M.orbitalTheoryValid ∧ M.insolationModelCalibrated

theorem milankovitch_cycle_forcing_closed (M : MilankovitchCycleForcingPackage)
    (h1 : M.orbitalTheoryValid) (h2 : M.insolationModelCalibrated) :
    MilankovitchCycleForcingClosed M := And.intro h1 h2

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
