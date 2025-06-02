module IncomeTax
  module Countries
    class UnitedStates
      class Illinois < State
        register "Illinois", "IL"
        flat_rate "4.95%"
      end
    end
  end
end
