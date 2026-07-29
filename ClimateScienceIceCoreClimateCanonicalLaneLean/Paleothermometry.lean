import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure PaleothermometryPackage where
  isotopeRatio : Type u
  temperatureProxy : isotopeRatio -> Float
  fractionationModelCorrect : Prop
  calibrationUncertainty : Prop
  temperatureReconstruction : Prop
  seasonalBias : Prop

structure PaleothermometryEvidence (P : PaleothermometryPackage) where
  fractionationModelCorrectClosed : P.fractionationModelCorrect
  calibrationUncertaintyClosed : P.calibrationUncertainty
  temperatureReconstructionClosed : P.temperatureReconstruction
  seasonalBiasClosed : P.seasonalBias

def PaleothermometryClosed (P : PaleothermometryPackage) : Prop :=
  P.fractionationModelCorrect ∧ P.calibrationUncertainty ∧
  P.temperatureReconstruction ∧ P.seasonalBias

theorem paleothermometry_closed_from_evidence (P : PaleothermometryPackage)
    (Ev : PaleothermometryEvidence P) : PaleothermometryClosed P := by
  exact And.intro Ev.fractionationModelCorrectClosed
    (And.intro Ev.calibrationUncertaintyClosed
      (And.intro Ev.temperatureReconstructionClosed Ev.seasonalBiasClosed))

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
