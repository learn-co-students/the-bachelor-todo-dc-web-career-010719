def get_first_name_of_season_winner(data, season)
  full_name = ""
  data[season].each do |people|
   people.each do |k,v|
    if v == "Winner"
        full_name = people["name"]
      end
    end
  end
  full_name.split(" ").first
end

def get_contestant_name(data, occupation)
  x = ""
  data.each do |season, array|
    array.each do |people|
      people.each do |k,v|
        if v == occupation
          x = people["name"]
        end
      end
    end
  end
  x
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |person|
      person.each do |attr, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |person|
      person.each do |attr, value|
        if value == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contest_hash|
    ages << contest_hash["age"]
  end
  sum = 0
  ages.each do |x|
    sum += x.to_f
  end
  (sum / ages.size).round
end
