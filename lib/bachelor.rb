def get_first_name_of_season_winner(data, season)
  winner = data[season][0]["name"].split
  return winner.first
end

def get_contestant_name(data, occupation)
  data.each do |season, values|
    values.each do |contestants|
      contestants.each do |key, value|
        if value == occupation
          return contestants["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, values|
    values.each do |contestants|
      contestants.each do |key, value|
        if value == hometown
          count += 1
        end
      end
    end
  end

  return count
end

def get_occupation(data, hometown)
  data.each do |season, values|
    values.each do |contestants|
      contestants.each do |key, value|
        if value == hometown
          return contestants["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  age = 0
  data[season].each do |contestants|
    contestants.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_i
      end
    end
  end

  average = age / count.to_f
  return average.round
end
