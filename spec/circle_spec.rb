require 'spec_helper'

describe Circle do
	describe "#get_radius" do
		before do
			@circle = Circle.new(:color=>"red", :radius=>2.0)
		end

		it "returns the value of radius" do
			expect(@circle.get_radius).to eq(2.0)
		end
	end

	describe "#get_color" do
		before do
			@circle = Circle.new(:color=>"red", :radius=>2.0)
		end

		it "returns the value of color" do
			expect(@circle.get_color).to eq("red")
		end
	end

	describe "#set_radius" do
		before do
			@circle = Circle.new(:color=>"red", :radius=>2.0)
		end

		it "sets the value of radius" do
			@circle.set_radius(4.0)
			expect(@circle.get_radius).to eq(4.0)
		end
	end

	describe "#set_color" do
		before do
			@circle = Circle.new(:color=>"red", :radius=>2.0)
		end

		it "sets the value of color" do
			@circle.set_color("black")
			expect(@circle.get_color).to eq("black")
		end
	end

	describe "#find_area" do
		before do
			@circle = Circle.new(:color=>"red", :radius=>2.0)
		end

		it "finds the area of circle" do
			@radius = @circle.get_radius
			expect(@circle.find_area).to eq(3.14159265*@radius*@radius)
		end
	end
	
	describe "#find_perimeter" do
		before do
			@circle = Circle.new(:color=>"red", :radius=>2.0)
		end

		it "finds the perimeter of circle" do
			@radius = @circle.get_radius
			expect(@circle.find_perimeter).to eq(2*3.14159265*@radius)
		end
	end
end