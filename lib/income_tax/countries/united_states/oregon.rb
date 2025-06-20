module IncomeTax
  module Countries
    class UnitedStates
      class Oregon < State
        register "Oregon", "OR"
        deduct_federal

        levels :single do
          level 4300,      "4.75%"
          level 10750,     "6.75%"
          level 125000,    "8.75%"
          remainder        "9.9%"
        end

        levels :couple do
          standard_deduction = 188
          level standard_deduction + 0,         "9.9%"
          level standard_deduction + 6500,      "5%"
          level standard_deduction + 16300,     "7%"
          level standard_deduction + 250000,    "9%"
          remainder                             "9.9%"
        end
      end
    end
  end
end
