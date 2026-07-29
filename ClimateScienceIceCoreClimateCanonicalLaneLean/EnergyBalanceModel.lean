import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarConstant : Float
  albedo : Float
  greenhouseEffect : Float
  radiativeEquilibrium : Prop
  temperatureResponse : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  radiativeEquilibriumClosed : E.radiativeEquilibrium
  temperatureResponseClosed : E.temperatureResponse

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeEquilibrium ∧ E.temperatureResponse

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.radiativeEquilibriumClosed Ev.temperatureResponseClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse