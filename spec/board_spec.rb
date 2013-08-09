require 'spec_helper'

describe Board do

	describe "initializes" do
		it "should be an instance of a Shirt object" do
			board = Board.new
			board.should be_an_instance_of(Board)
		end

		it "initialize a board of 3x3 when not further defined" do
			board = Board.new
			board.size.should eq(3)
		end

		it "initialize a board of custom size when defined by user" do
			board = Board.new(9)
			board.size.should eq(9)
		end
	end

	describe "create board" do
		it "creates an empty board 3x3 when no further defined" do
			board = Board.new
			board.create
			board.show_board.should eq ([["E","E","E"],["E","E","E"],["E","E","E"]])
		end

		it "creates an empty board 5x5 when pre-defined" do
			board = Board.new(5)
			board.create
			board.show_board.should eq ([["E","E","E","E","E"],["E","E","E","E","E"],["E","E","E","E","E"],["E","E","E","E","E"],["E","E","E","E","E"]])
		end
	end

	describe "update marker" do
		it "updates the marker when field is empty and within range" do
			board = Board.new
			board.create
			board.update_marker("X", [0,2])
			board.show([0,2]).should eq("X")
		end

		it "does not update the marker when field is already occupied" do
			board = Board.new
			board.instance_variable_set("@board", [["E","E","E"],["E","E","X"],["E","E","E"]])
			board.update_marker("X", [1,2]).should eq("already taken")
		end

		it "raises an error when field which should be updated is not in range" do
			board = Board.new
			board.create
			board.update_marker("X", [3,2]).should eq("not on board")
		end
	end
end
