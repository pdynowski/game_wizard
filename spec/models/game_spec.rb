require 'rails_helper'

RSpec.describe Game, type: :model do

	it "is valid with valid attributes" do
		game = Game.new(title: "TestGame, the game of tests", min_players: 1, max_players: 10)
		expect(game).to be_valid
	end

	it "is not valid without a title" do
		game = Game.new(title: nil)
		expect(game).to_not be_valid
	end

	it "is not valid without min_players" do
		game = Game.new(min_players: nil)
		expect(game).to_not be_valid
	end

	it "is not valid without max_players" do
		game = Game.new(max_players: nil)
		expect(game).to_not be_valid
	end
end
