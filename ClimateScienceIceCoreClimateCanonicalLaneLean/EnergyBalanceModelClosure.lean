import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure EnergyBalanceModelPackage where
  albedo : ℝ → ℝ
  incomingSolar : ℝ → ℝ
  outgoingLongwave : ℝ → ℝ
  energyBalanceEquation : Prop
  equilibriumTemperature : ℝ
  equilibriumReached : equilibriumTemperature = 288.15

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  energyBalanceEquationClosed : E.energyBalanceEquation
  equilibriumReachedClosed : E.equilibriumReached

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.energyBalanceEquation ∧ E.equilibriumReached

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.energyBalanceEquationClosed Ev.equilibriumReachedClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
