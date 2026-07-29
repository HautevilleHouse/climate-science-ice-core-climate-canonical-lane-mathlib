import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  iceCoreSite : Type u
  depthProfile : Type v
  isotopicRatioDelta : depthProfile → Prop
  temperatureReconstruction : depthProfile → Prop
  calibrationValid : Prop
  boreholeTemperatureConstraint : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  isotopicRatioDeltaClosed : I.isotopicRatioDelta (I.depthProfile)
  temperatureReconstructionClosed : I.temperatureReconstruction (I.depthProfile)
  calibrationValidClosed : I.calibrationValid
  boreholeTemperatureConstraintClosed : I.boreholeTemperatureConstraint

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.calibrationValid ∧ I.boreholeTemperatureConstraint

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometryPackage)
    (E : IsotopicPaleothermometryEvidence I) : IsotopicPaleothermometryClosed I := by
  exact And.intro E.calibrationValidClosed E.boreholeTemperatureConstraintClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse