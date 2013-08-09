require 'spec_helper'

describe Game do

	describe "initializes" do
		it "should be an instance of a Shirt object" do
			game = Game.new
			game.should be_an_instance_of(Game)
		end
	end
end
