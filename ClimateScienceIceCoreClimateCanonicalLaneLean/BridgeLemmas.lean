import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceIceCoreClimateCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

def bridgeClosed (A : ClimateAdmissibleClass) : Prop :=
  ClimateAdmissibleObject.reconstructionValid A.object

theorem bridge_from_admissible_class (A : ClimateAdmissibleClass) : bridgeClosed A := by
  exact A.object.keyResultClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse