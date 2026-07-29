import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateCanonicalLaneLean

def ConstrainedIceCoreClimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_icecoreclimate_endgame (A : AdmissibleClass) :
    ConstrainedIceCoreClimateClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceIceCoreClimateCanonicalLaneLean
end HautevilleHouse
