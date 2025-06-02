module IncomeTax
  module Countries
    class UnitedStates
      class Virginia < State
        register "Virginia", "VA"

        level 3000,      "2%"
        level 5000,      "3%"
        level 17000,     "5%"
        remainder        "5.75%"
      end
    end
  end
end
