module IncomeTax
  module Countries
    class UnitedStates
      class Vermont < State
        register "Vermont", "VT"

        levels :single do
          level  47900,     "3.35%"
          level  75000,     "6.6%"
          level  116000,    "6.60%"
          level  242000,    "7.6%"
          remainder         "8.75%"
        end

        levels :couple do
          standard_deduction = 3900
          level standard_deduction + 0,         "8.95%"
          level standard_deduction + 73800,     "3.55%"
          level standard_deduction + 148850,    "6.8%"
          level standard_deduction + 226850,    "7.80%"
          level standard_deduction + 405100,    "8.8%"
          remainder                             "8.95%"
        end
      end
    end
  end
end
