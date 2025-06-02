module IncomeTax
  module Countries
    class UnitedStates
      class NorthCarolina < State
        register "North Carolina", "NC"
        flat_rate "4.25%"
      end
    end
  end
end
