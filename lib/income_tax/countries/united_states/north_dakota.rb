module IncomeTax
  module Countries
    class UnitedStates
      class NorthDakota < State
        register "North Dakota", "ND"

        level  55975,      "0.00%"
        level  252325,     "1.95%"
        remainder          "2.50%"
      end
    end
  end
end
