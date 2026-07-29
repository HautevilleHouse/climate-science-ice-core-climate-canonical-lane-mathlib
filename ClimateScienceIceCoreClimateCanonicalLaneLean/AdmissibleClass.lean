import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure ClimateAdmissibleObject where
  iceCoreRecord : Type u
  paleoClimateData : Prop
  reconstructionValid : Prop
  keyResultClosed : Prop

structure ClimateAdmissibleClass where
  object : ClimateAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ClimateAdmissibleClass) : Prop :=
  ClimateAdmissibleObject.reconstructionValid A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse