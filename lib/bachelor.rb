require 'json'
require 'pry'

def get_first_name_of_season_winner(data, season_selection)
  # gets name of the winner of the season entered
  winner_name = nil
  data.each do |season, stats|
    if season_selection == season
      stats.each do |elem|
        if elem["status"] == "Winner"
          winner_name = elem["name"]
        end
      end
    end
  end
  return winner_name.rpartition(" ").first
end

def get_contestant_name(data, occupation)
  # gets occupation of participant and returns the full name
  contestant_name = nil
  data.each do |season, stats|
    stats.each do |elem|
      if elem["occupation"] == occupation
        contestant_name = elem["name"]
      end
    end
  end
  return contestant_name
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, stats|
    stats.each do |elem|
      if elem["hometown"] == hometown
        i += 1
      end
    end
  end
  return i
end

def get_occupation(data, hometown)
  data.each do |season, stats|
    stats.each do |elem|
      if elem["hometown"] == hometown
        return elem["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season_selection)
  avg_age = 0
  i = 0.0
  data.each do |season, stats|
    if season_selection == season
      stats.each do |elem|
        avg_age += elem["age"].to_i
        i += 1
      end
    end
  end
  age = avg_age / i
  return age.round
end
