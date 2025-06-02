module IncomeTax
  module Countries
    class UnitedStates
      class Idaho < State
        register "Idaho", "ID"
        flat_rate "5.80%"

      end
    end
  end
end
