import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

structure IceCoreStratigraphyPackage where
  depthScale : Type u
  iceLayers : depthScale -> Prop
  annualLayersResolved : Prop
  layerThicknessVariation : Prop
  continuousDepthProfile : Prop
  datingUncertainty : Prop

structure IceCoreStratigraphyEvidence (E : IceCoreStratigraphyPackage) where
  annualLayersResolvedClosed : E.annualLayersResolved
  layerThicknessVariationClosed : E.layerThicknessVariation
  continuousDepthProfileClosed : E.continuousDepthProfile
  datingUncertaintyClosed : E.datingUncertainty

def IceCoreStratigraphyClosed (E : IceCoreStratigraphyPackage) : Prop :=
  E.annualLayersResolved ∧ E.layerThicknessVariation ∧
  E.continuousDepthProfile ∧ E.datingUncertainty

theorem ice_core_stratigraphy_closed_from_evidence (E : IceCoreStratigraphyPackage)
    (Ev : IceCoreStratigraphyEvidence E) : IceCoreStratigraphyClosed E := by
  exact And.intro Ev.annualLayersResolvedClosed
    (And.intro Ev.layerThicknessVariationClosed
      (And.intro Ev.continuousDepthProfileClosed Ev.datingUncertaintyClosed))

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
