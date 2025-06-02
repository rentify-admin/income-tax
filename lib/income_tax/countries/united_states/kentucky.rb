module IncomeTax
  module Countries
    class UnitedStates
      class Kentucky < State
        register "Kentucky", "KY"
        flat_rate "4.0%"
      end
    end
  end
end
