module IncomeTax
  module Countries
    class UnitedStates
      class Maryland < State
        register "Maryland", "MD"

        levels :single do
          level  1000,      "2%"
          level  2000,      "3%"
          level  3000,      "4%"
          level  100000,    "4.75%"
          level  125000,    "5%"
          level  150000,    "5.25%"
          level  250000,    "5.5%"
          remainder                             "5.75%"
        end

        levels :couple do
          standard_deduction = 3200
          level standard_deduction + 0,         "5.75%"
          level standard_deduction + 1000,      "2%"
          level standard_deduction + 2000,      "3%"
          level standard_deduction + 3000,      "4%"
          level standard_deduction + 150000,    "4.75%"
          level standard_deduction + 175000,    "5%"
          level standard_deduction + 225000,    "5.25%"
          level standard_deduction + 300000,    "5.5%"
          remainder                             "5.75%"
        end
      end
    end
  end
end
