module IncomeTax
  module Countries
    class UnitedStates
      class WestVirginia < State
        register "West Virginia", "WV"

        levels :single do
          level 10000,     "2.36%"
          level 25000,     "3.15%"
          level 40000,     "3.54%"
          level 60000,     "4.72%"
          remainder        "5.12%"
        end

        levels :couple do
          standard_deduction = 2000
          level standard_deduction + 0,         "6.5%"
          level standard_deduction + 10000,     "3%"
          level standard_deduction + 25000,     "4%"
          level standard_deduction + 40000,     "4.5%"
          level standard_deduction + 60000,     "6%"
          remainder                             "6.5%"
        end
      end
    end
  end
end
