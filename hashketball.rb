# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def points_per_player(player, hashketball)
  player.capitalize!
  if hashketball[:home][:players].include?(player)
   hashketball[:home][:players][player][:stats][:points]
  elsif hashketball[:away][:players].include?(player)
   hashketball[:away][:players][player][:stats][:points]
  else
   "No player found."
  end
end

puts points_per_player("blanko", hashketball)

#

# Return the shoe size for any player:

def player_shoe_size(player, hashketball)
  player.capitalize!
  if hashketball[:home][:players].include?(player)
   hashketball[:home][:players][player][:shoe_size]
  elsif hashketball[:away][:players].include?(player)
   hashketball[:away][:players][player][:shoe_size]
  else
   "No player found."
  end
end

puts player_shoe_size("taz", hashketball)


#

# Return both colors for any team:

def team_colors(team, hashketball)
  sym = team.to_sym
  if hashketball.include?(sym)
   hashketball[sym][:colors]
  else
   "Try home or away."
  end
end

puts team_colors("away", hashketball)

#

# Return both teams names:

def team_names(hashketball)
  puts "The #{hashketball[:home][:team_name]} welcome the #{hashketball[:away][:team_name]}"
  puts 
end

puts team_names(hashketball)

#

# Return all the player numbers for a team:

def player_nums(team, hashketball)
    sym = team.to_sym
    player_numbers = []
    
      hashketball[sym][:players].each_value do |x|
      player_numbers << x[:number]
  end
    player_numbers
end

puts player_nums("away", hashketball)


# Return all the stats for a player:

def player_stats(player_name, hashketball)
  player_name.capitalize!
  if hashketball[:home][:players].include?(player_name)
    hashketball[:home][:players][player_name][:stats]
  elsif hashketball[:away][:players].include?(player_name)
    hashketball[:away][:players][player_name][:stats]
  else
    "No player found."
  end
end

puts player_stats("Daffy", hashketball)

#

# Return the rebounds for the player with the largest shoe size

def biggest_shoe(hashketball)
  player_number_with_biggest_shoe = ""
  biggest_shoe_size = 0
  
  hashketball[:home][:players].each do |name, player|
    if player[:shoe_size] > biggest_shoe_size
      player_number_with_biggest_shoe = name
      biggest_shoe_size = player[:shoe_size]
    end
  end
  hashketball[:away][:players].each do |name, player|
    if player[:shoe_size] > biggest_shoe_size
      player_number_with_biggest_shoe = name
      biggest_shoe_size = player[:shoe_size]
    end
  end
  
  " #{player_number_with_biggest_shoe} : #{biggest_shoe_size} "
end

puts biggest_shoe(hashketball)