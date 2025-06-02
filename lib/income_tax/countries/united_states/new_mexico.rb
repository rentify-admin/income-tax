module IncomeTax
  module Countries
    class UnitedStates
      class NewMexico < State
        register "New Mexico", "NM"

        levels :single do
          level  5500,      "1.5%"
          level  16500,     "3.2%"
          level  33500,     "4.3%"
          level  66500,     "4.7%"
          level  210000,    "4.9%"
          remainder         "5.9%"
        end

        levels :couple do
          standard_deduction = 3900
          level standard_deduction + 0,         "4.9%"
          level standard_deduction + 8000,      "1.7%"
          level standard_deduction + 16000,     "3.2%"
          level standard_deduction + 24000,     "4.7%"
          remainder                             "4.9%"
        end
      end
    end
  end
end
