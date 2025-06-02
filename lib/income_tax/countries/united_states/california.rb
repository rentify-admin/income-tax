module IncomeTax
  module Countries
    class UnitedStates
      class California < State
        register "California", "CA"

        levels :single do
          level   7124,    "1%"
          level   16890,   "2%"
          level   26657,   "4%"
          level   37005,   "6%"
          level   46766,   "8.3%"
          level   1000000, "9.3%"

          remainder        "10.3%"
        end

        levels :couple do
          standard_deduction = 7812
          level standard_deduction + 0,       "0%"
          level standard_deduction + 15174,   "1%"
          level standard_deduction + 35952,   "2%"
          level standard_deduction + 46346,   "4%"
          level standard_deduction + 57359,   "6%"
          level standard_deduction + 67751,   "8%"
          level standard_deduction + 345780,  "9.3%"
          level standard_deduction + 414936,  "10.3%"
          level standard_deduction + 691560,  "11.3%"
          level standard_deduction + 1000000, "12.3%"
          remainder                           "13.3%"
        end
      end
    end
  end
end
