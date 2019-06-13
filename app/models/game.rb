class Game < ApplicationRecord
	validates_presence_of :title, :min_players, :max_players
end
