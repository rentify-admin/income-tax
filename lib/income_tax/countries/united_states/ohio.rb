module IncomeTax
  module Countries
    class UnitedStates
      class Ohio < State
        register "Ohio", "OH"

        levels :single do
          level  25051,       "0.00%"
          level  100001,      "2.75%"
          remainder           "3.50%"
        end

        levels :couple do
          standard_deduction = 1700
          level standard_deduction + 0,         "5.392%"
          level standard_deduction + 5200,      "0.540%"
          level standard_deduction + 10400,     "1.070%"
          level standard_deduction + 15650,     "2.150%"
          level standard_deduction + 20900,     "2.690%"
          level standard_deduction + 41700,     "3.220%"
          level standard_deduction + 83350,     "3.760%"
          level standard_deduction + 104250,    "4.300%"
          level standard_deduction + 208500,    "4.990%"
          remainder                             "5.392%"
        end
      end
    end
  end
end
