module IncomeTax
  module Countries
    class UnitedStates
      class Indiana < State
        register "Indiana", "IN"
        flat_rate "3.0%"
      end
    end
  end
end
