class Game < ApplicationRecord
	validates_presence_of :title, :min_players, :max_players
	validates_uniqueness_of :title
end
