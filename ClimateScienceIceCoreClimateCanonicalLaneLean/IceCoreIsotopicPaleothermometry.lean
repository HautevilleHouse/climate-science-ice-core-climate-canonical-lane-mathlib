import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure IceCoreIsotopicPaleothermometryPackage where
  iceCoreSample : Type
  depthProfile : iceCoreSample → ℝ
  delta18O : iceCoreSample → ℝ
  deuteriumExcess : iceCoreSample → ℝ
  temperatureReconstruction : iceCoreSample → ℝ
  calibrationConfirmed : Prop
  proxyLinearizationValid : Prop
  seasonalBiasRemoved : Prop

structure IceCoreIsotopicPaleothermometryEvidence (P : IceCoreIsotopicPaleothermometryPackage) where
  calibrationConfirmedClosed : P.calibrationConfirmed
  proxyLinearizationValidClosed : P.proxyLinearizationValid
  seasonalBiasRemovedClosed : P.seasonalBiasRemoved

def IceCoreIsotopicPaleothermometryClosed (P : IceCoreIsotopicPaleothermometryPackage) : Prop :=
  P.calibrationConfirmed ∧ P.proxyLinearizationValid ∧ P.seasonalBiasRemoved

theorem ice_core_isotopic_paleothermometry_closed_from_evidence
    (P : IceCoreIsotopicPaleothermometryPackage)
    (E : IceCoreIsotopicPaleothermometryEvidence P) : IceCoreIsotopicPaleothermometryClosed P := by
  exact And.intro E.calibrationConfirmedClosed
    (And.intro E.proxyLinearizationValidClosed E.seasonalBiasRemovedClosed)

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
