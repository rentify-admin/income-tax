module IncomeTax
  module Countries
    class UnitedStates
      class NewYork < State
        register "New York", "NY"

        levels :single do
          level  8500,      "4%"
          level  11700,     "4.5%"
          level  13900,     "5.25%"
          level  80650,     "5.5%"
          level  215400,    "6.00%"
          level  1077550,   "6.85%"
          level  5000000,   "9.65%"
          level  25000000,  "10.30%"
          remainder         "10.90%"
        end

        levels :couple do
          standard_deduction = 15400
          level standard_deduction + 0,         "8.82%"
          level standard_deduction + 16450,     "4%"
          level standard_deduction + 22600,     "4.5%"
          level standard_deduction + 26750,     "5.25%"
          level standard_deduction + 41150,     "5.9%"
          level standard_deduction + 154350,    "6.45%"
          level standard_deduction + 308750,    "6.65%"
          level standard_deduction + 2058550,   "6.85%"
          remainder                             "8.82%"
        end
      end
    end
  end
end
