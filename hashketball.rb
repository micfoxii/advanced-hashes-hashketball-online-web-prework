require "pry"

def game_hash 
  game = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      { :name => "Alan Anderson",
        :number => 0, 
        :shoe => 16 ,
        :points => 22, 
        :rebounds => 12, 
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
    },
      { :name => "Reggie Evans",
        :number => 30,
        :shoe =>14,
        :points =>12,
        :rebounds =>12,
        :assists =>12,
        :steals =>12,
        :blocks =>12,
        :slam_dunks => 7
    },
      { :name => "Brook Lopez",
        :number =>11,
        :shoe =>17,
        :points =>17,
        :rebounds =>19,
        :assists =>10,
        :steals =>3,
        :blocks =>1,
        :slam_dunks =>15
    },
      { :name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
    },
      { :name => "Jason Terry",
        :number =>31,
        :shoe =>15,
        :points =>19,
        :rebounds =>2,
        :assists =>2,
        :steals =>4,
        :blocks =>11,
        :slam_dunks =>1
    }    
   ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise","Purple"],
    :players => [
     {:name => "Jeff Adrien",
      :number =>4, 
      :shoe =>18, 
      :points =>10, 
      :rebounds =>1, 
      :assists =>1, 
      :steals =>2,
      :blocks =>7, 
      :slam_dunks =>2
  }, 
     {:name => "Bismack Biyombo",
      :number =>0,
      :shoe =>16,
      :points =>12, 
      :rebounds =>4,
      :assists =>7, 
      :steals =>22, 
      :blocks =>15, 
      :slam_dunks =>10
  },
     {:name => "DeSagne Diop",
      :number =>2,
      :shoe =>14,
      :points =>24,
      :rebounds =>12,
      :assists =>12,
      :steals =>4,
      :blocks =>5,
      :slam_dunks =>5
  },
     {:name => "Ben Gordon",
      :number =>8,
      :shoe =>15,
      :points =>33,
      :rebounds =>3,
      :assists =>2,
      :steals =>1,
      :blocks =>1,
      :slam_dunks =>0
  },
     {:name => "Kemba Walker",
      :number =>33,
      :shoe =>15,
      :points =>6,
      :rebounds =>12,
      :assists =>12,
      :steals =>7,
      :blocks =>5,
      :slam_dunks =>12
    }
   ]
  }
 }
 return game
end

def num_points_scored(name)
  game_hash.values.each do |team|
    team[:players].each do |player|
      return player[:points] if player.has_value? (name)
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |loc, team|
    team.each do |attrib, data|
      if attrib == :players
        data.each do |player, stats|
          if player == player_name
            return stats[:shoe]
          end
        end
      end
    end
  end
end


def team_colors(team_name)
  game_hash.each do |team, keys|
    if keys[:team_name] == team_name
      return keys[:colors].map(&:capitalize)
    end
  end
end

def team_names
  game_hash.map {|team, keys| keys[:team_name]}
end

def player_numbers(team_name)
  game_hash.each do |team, keys|
    if keys[:team_name] == team_name
      return keys[:players].map {|player| player[:number]}
    end
  end
end

def player_stats(player_n)
  game_hash.each do |location, team_data|
    team_data.each do |attrib, data|
      if attrib == :players
        data.each do |player, stats|
          if player == player_name
            return stats
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  biggest = 0 
  rebounds = 0 
  game_hash.each do |team, keys|
    keys[:players].each do |player|
      size = player[:shoe]
      if size>biggest
        biggest = size
        rebounds = player[:rebounds]
      end
    end
  end
  rebounds 
end

def most_points_scored
  
end

def winning_team
  
end

# Write your code here!