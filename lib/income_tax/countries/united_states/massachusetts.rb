module IncomeTax
  module Countries
    class UnitedStates
      class Massachusetts < State
        register "Massachusetts", "MA"
        flat_rate "5.15%"
        levels :single do
           level 1000000, "5.00%"
           remainder "9.00%"
        end
      end
    end
  end
end
