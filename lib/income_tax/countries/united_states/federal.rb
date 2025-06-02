module IncomeTax
  module Countries
    class UnitedStates
      class Federal < Models::Progressive
        wants_options :married, :joint_statement, :head_of_household

        def level_category
          return :single unless married?
          return :joint if joint_statement?
          return :separate unless head_of_household or head_of_household.nil?
          :head_of_household
        end

        GROUPS = [:single, :joint, :separate, :head_of_household]

        MARGINAL_TAX = [
          [ "10%", 11925,   18450,  11925,   13150  ],
          [ "15%", 48475,  74900,  48475,  50200  ],
          [ "25%", 103350,  151200, 103350,  129600 ],
          [ "28%", 197300, 230450, 197300, 209850 ],
          [ "33%", 250525, 411500, 250525, 411500 ],
          [ "35%", 626350, 464850, 626350, 439000 ],
        ]

        REMAINDER          = "37%"
        STANDARD_DEDUTIONS = [ 6300, 12600, 6300, 9250 ]

        GROUPS.each_with_index do |group, index|
          levels group do
            MARGINAL_TAX.each do |rate, *boundries|
              boundry = boundries[index] + STANDARD_DEDUTIONS[index]
              level boundry, rate
            end
            remainder REMAINDER
          end
        end
      end
    end
  end
end
