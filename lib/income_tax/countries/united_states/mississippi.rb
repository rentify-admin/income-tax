module IncomeTax
  module Countries
    class UnitedStates
      class Mississippi < State
        register "Mississippi", "MS"

        levels :single do
          level 10001,     "0%"
          remainder "4.7%"
        end

        levels :couple do
          standard_deduction = 12000
          level standard_deduction + 0,         "5%"
          level standard_deduction + 5000,      "3%"
          level standard_deduction + 10000,     "4%"
          remainder                             "5%"
        end
      end
    end
  end
end
