module IncomeTax
  module Countries
    class UnitedStates
      class Maine < State
        register "Maine", "ME"

        levels :single do
          level 26800,     "5.80%"
          level 63450,     "6.75%"
          remainder "7.15%"
        end

        levels :couple do
          standard_deduction = 3900
          level standard_deduction + 10450,     "7.95%"
          level standard_deduction + 41850,     "6.50%"
          remainder                             "7.95%"
        end
      end
    end
  end
end
