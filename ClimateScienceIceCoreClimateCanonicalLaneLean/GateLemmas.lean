import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceIceCoreClimateCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

def gateClosed (A : ClimateAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ClimateAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse