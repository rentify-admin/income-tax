module IncomeTax
  module Countries
    class UnitedStates
      class Georgia < State
        register "Georgia", "GA"
        flat_rate "5.39%"
      end
    end
  end
end
