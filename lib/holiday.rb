require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash = {
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
    holiday_supplies[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 
 holiday_hash[:winter][:christmas] << "Balloons"
 holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
supplies = holiday_hash[:winter].values
supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, data|
season = season.to_s 
season.capitalize!
puts "#{season}:"
data.each do |holiday_name, supply|
holiday_name = holiday_name.to_s 
holiday_name.capitalize!
supply = supply.join(", ")
holiday_name = holiday_name.tr("_", " ")
holiday_name = holiday_name.split 
holiday_name.each { |word| word.capitalize! }
holiday_name = holiday_name.join(" ")
puts "  #{holiday_name}: #{supply}"
end
end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_supplies = []
holiday_hash.each do |season, data|
  data.each do |holiday_name, supply|
    if supply.include?("BBQ")
 holiday_supplies << holiday_name
end
end 
end
return holiday_supplies
end






