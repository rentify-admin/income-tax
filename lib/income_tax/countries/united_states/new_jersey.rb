module IncomeTax
  module Countries
    class UnitedStates
      class NewJersey < State
        register "New Jersey", "NJ"

        levels :single do
          level  20000,     "1.4%"
          level  35000,     "1.75%"
          level  40000,     "3.5%"
          level  75000,     "5.53%"
          level  500000,    "6.37%"
          level  1000000,   "8.97%"
          remainder "10.75%"
        end

        levels :couple do
          standard_deduction = 1000
          level standard_deduction + 0,         "8.97%"
          level standard_deduction + 20000,     "1.40%"
          level standard_deduction + 50000,     "1.75%"
          level standard_deduction + 70000,     "2.45%"
          level standard_deduction + 80000,     "3.50%"
          level standard_deduction + 150000,    "5.525%"
          level standard_deduction + 500000,    "6.37%"
          remainder                             "8.97%"
        end
      end
    end
  end
end
