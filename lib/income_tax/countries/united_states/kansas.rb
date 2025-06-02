module IncomeTax
  module Countries
    class UnitedStates
      class Kansas < State
        register "Kansas", "KS"

        levels :single do
          level 23000,     "5.2%"
          remainder                             "5.58%"
        end

        levels :couple do
          standard_deduction = 2250
          level standard_deduction + 0,         "4.80%"
          level standard_deduction + 30000,     "2.70%"
          remainder                             "4.80%"
        end
      end
    end
  end
end
