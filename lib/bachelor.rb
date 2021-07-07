def get_first_name_of_season_winner(data, season)
  season_winner = data[season][0]["name"].split(" ")
  season_winner.first 
end

def get_contestant_name(data, occupation)
  data.each do |season, list_items|
    list_items.each do |cont|
      cont.each do |key, value|
        if value == occupation
          return cont["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, list_items|
    list_items.each do |cont|
      cont.each do |key,value|
        if value == hometown
          count += 1
        end
      end
    end
  end
count
end

def get_occupation(data, hometown)
  data.each do |season, list_items|
    list_items.each do |cont|
      cont.each do |key,value|
        if value == hometown
          return cont["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  age = 0
  data[season].each do |cont|
    cont.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_i #Kept trying to add strings
      end
    end
  end

  average_age = age / count.to_f #Floats contain decimals
  return average_age.round 
end
