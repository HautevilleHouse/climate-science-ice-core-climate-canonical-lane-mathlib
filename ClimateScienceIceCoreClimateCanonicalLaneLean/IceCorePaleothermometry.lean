import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure IceCorePaleothermometryPackage where
  isotopeRatio : Float
  temperatureProxy : Float
  calibrationCurve : Prop
  climateInterpretation : Prop

structure IceCorePaleothermometryEvidence (P : IceCorePaleothermometryPackage) where
  calibrationCurveClosed : P.calibrationCurve
  climateInterpretationClosed : P.climateInterpretation

def IceCorePaleothermometryClosed (P : IceCorePaleothermometryPackage) : Prop :=
  P.calibrationCurve ∧ P.climateInterpretation

theorem ice_core_paleothermometry_closed_from_evidence (P : IceCorePaleothermometryPackage)
    (E : IceCorePaleothermometryEvidence P) : IceCorePaleothermometryClosed P := by
  exact And.intro E.calibrationCurveClosed E.climateInterpretationClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse