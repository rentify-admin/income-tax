module IncomeTax
  module Countries
    class UnitedStates
      class Nebraska < State
        register "Nebraska", "NE"

        levels :single do
          level  3310,      "0.00%"
          level  6480,      "2.26%"
          level  21050,     "3.22%"
          level  30510,     "4.91%"
          level  38740,     "5.07%"
          level  72750,     "5.23%"
          remainder         "5.37%"
        end

        levels :couple do
          standard_deduction = 126
          level standard_deduction + 0,         "6.84%"
          level standard_deduction + 6000,      "2.46%"
          level standard_deduction + 36000,     "3.51%"
          level standard_deduction + 58000,     "5.01%"
          remainder                             "6.84%"
        end
      end
    end
  end
end
