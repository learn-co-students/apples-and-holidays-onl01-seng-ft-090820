require 'pry'


  # given that holiday_hash looks like this:
  # {
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
  
  
def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
  # holiday_hash.each do |seasons, holidays|
  #     if seasons == :summer
  #       holidays.each do |food|
  #         return food 
  #       end
  #     end 
  # end
end




def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each do |key, value|
      
      value << (supply)
  end
  
end







def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
 
  holiday_hash[:spring].each do |key, value|
      value << supply
  end

end



require 'pry'
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  # holiday_hash[:fall][:columbus_day] = ["Flags", "Italian Food", "Parade Floats"]
  # holiday_hash[:winter][:valentines_day] = []
  
  holiday_hash[season][holiday_name] = supply_array
  #binding.pry 
  return holiday_hash 
  
 
end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
  holiday_hash[:winter].each do |key, value|
    all_supplies << value
  end
  all_supplies.flatten
end


require 'pry'

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |seasons, holiday|
    puts "#{seasons.capitalize}:"
    holiday.each do |key, value|
     
      # new_key= key.to_s.split("_").map do |word|
        
      #   word.capitalize
    
    holiday_new ="  #{key.to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{value.join(", ")}"
      puts "#{holiday_new}"
      #binding.pry
    end
  end 
end

require 'pry'
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  all_with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_new, supply|
      binding.pry
      if supply.include?("BBQ")
        all_with_bbq << holiday_new
      end
    end
  end
  all_with_bbq
end







