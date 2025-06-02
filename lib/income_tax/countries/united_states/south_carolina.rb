module IncomeTax
  module Countries
    class UnitedStates
      class SouthCarolina < State
        register "South Carolina", "SC"

        standard_deduction = 3460
        level standard_deduction + 0,      "0%"
        level standard_deduction + 13870,  "3%"
        remainder                          "6.3%"
      end
    end
  end
end
