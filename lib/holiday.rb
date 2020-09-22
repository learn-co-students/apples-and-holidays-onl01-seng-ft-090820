require 'pry'

# holiday_supplies = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

# def all_supplies(holiday_supplies)
#   holiday_supplies.each do |season, data|
#     puts "#{season.to_s.capitalize!}:"
#     data.each do |holiday, supply|
#       # holiday == :fourth_of_july
#       # we took the holiday key and converted a string
#       # str_holiday == fourth_of_july
#       # we took that converted string, and split it to an array with the elements divided by the _ (which removes the _)
#       # str_holiday == ["fourth", "of", "july"]
#       # we collected over that array in order to capitalize each word
#       # str_holiday == ["Fourth", "Of", "July"]
#       # we joined the elements together to form a string where each element is divded by an empty space
#       # str_holiday == "Fourth Of July"
#       str_holiday = holiday.to_s.split("_").collect {|word| word.capitalize!}.join(" ")
#       # supplies == ["BBQ", "Fireworks"]
#       # we joined it together converting the array to a string dividing each element by a , and a space
#       # supplies == "BBQ, Fireworks"
#       # "  Fourth Of July: BBQ, Fireworks"
#       puts "  #{str_holiday}: #{supply.join(", ")}"
#     end
#   end 
# end 

# all_supplies(holiday_supplies)

# def all_holidays_with_bbq(holiday_hash)
#   # return an array of holiday names (as symbols) where supply lists
#   # include the string "BBQ"
#   holiday_hash.map do |season, holidays|
#     holidays.map do |holiday, supplies|
#       holiday if supplies.include?("BBQ")
#     end
#   end.flatten.compact
# end
# all_holidays_with_bbq(holiday_supplies)

holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)	def add_supply_to_winter_holidays(holiday_hash, supply)


  holiday_hash[:winter].each {|k, v| holiday_hash[:winter][k] << supply }
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring][:memorial_day] << supply
end	end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)	def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array
end	end


def all_winter_holiday_supplies(holiday_hash)	def all_winter_holiday_supplies(holiday_hash)
  
  holiday_hash[:winter].values.flatten
end	end


def all_supplies_in_holidays(holiday_hash)


  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |holiday, supply|
      array = holiday.to_s.split("_")
      final_holiday = []
        array.each do |x|
          final_holiday << x.capitalize!
        end
      holiday = final_holiday.join(" ")

      supply = supply.join(", ")
      puts "  #{holiday}: #{supply}"

    end
  end

def all_holidays_with_bbq(holiday_hash)	def all_holidays_with_bbq(holiday_hash

answer = []
holiday_hash.each do |season, data|
  data.each do |holiday, value|
    value.each do |supply|
     if supply == "BBQ"
        answer.push(holiday)
      end
    end
  end
end
answer

end