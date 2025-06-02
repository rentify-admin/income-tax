module IncomeTax
  module Countries
    class UnitedStates
      class Arizona < State
        register "Arizona", "AZ"

        levels :single do
          level 10000,  "2.59%"
          level 25000,  "2.88%"
          level 50000, "3.36%"
          level 150000, "4.24%"
          remainder    "4.54%"
        end

        levels :couple do
          level 4000,  "0%"
          level 8199,  "1%"
          level 12299, "2.5%"
          level 16399, "3.5%"
          level 24699, "4.5%"
          level 38599, "6%"
          remainder    "7%"
        end
      end
    end
  end
end
