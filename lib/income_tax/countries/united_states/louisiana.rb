module IncomeTax
  module Countries
    class UnitedStates
      class Louisiana < State
        register "Louisiana", "LA"
        flat_rate "3.0%"
      end
    end
  end
end
