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

def second_supply_for_fourth_of_july(holiday_hash)
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, decorations|
    decorations << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].map do |holiday, supply|
  supply
end
array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, supply|
      holiday if supply.include?("BBQ")
    end
  end.flatten.compact
end
