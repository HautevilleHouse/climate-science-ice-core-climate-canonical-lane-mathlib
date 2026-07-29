import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure IceCoreProxyCalibrationPackage where
  proxyDataType : Type u
  transferFunction : Type v
  calibrationTarget : Type w
  uncertaintyQuantification : Prop
  validationAgainstInstrumental : Prop

structure IceCoreProxyCalibrationEvidence (C : IceCoreProxyCalibrationPackage) where
  uncertaintyQuantificationClosed : C.uncertaintyQuantification
  validationAgainstInstrumentalClosed : C.validationAgainstInstrumental

def IceCoreProxyCalibrationClosed (C : IceCoreProxyCalibrationPackage) : Prop :=
  C.uncertaintyQuantification ∧ C.validationAgainstInstrumental

theorem ice_core_proxy_calibration_closed_from_evidence (C : IceCoreProxyCalibrationPackage)
    (E : IceCoreProxyCalibrationEvidence C) : IceCoreProxyCalibrationClosed C := by
  exact And.intro E.uncertaintyQuantificationClosed E.validationAgainstInstrumentalClosed

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse