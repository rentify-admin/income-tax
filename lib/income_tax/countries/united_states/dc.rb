module IncomeTax
  module Countries
    class UnitedStates
      class Dc < State
        register "Washington, D.C.", "D.C.", "DC", "District of Columbia"


        level  10000,     "4%"
        level  40000,     "6%"
        level  60000,     "6.5%"
        level  250000,    "8.5%"
        level  500000,    "9.25%"
        level  1000000,   "9.75%"
        remainder         "10.75%"
      end
    end
  end
end
