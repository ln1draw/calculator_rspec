require_relative 'calculator'
require 'rspec'

describe Calculator do 
  let (:calculator) {Calculator.new}

  describe "addition" do
    it "puts two and two together" do
      expect(calculator.add(2, 2)).to eq(4)
    end

    it "puts 2, 2, and 3 together" do
      expect(calculator.add(2, 2, 3)).to eq(7)
    end

    #superfluous, but I want to make sure that my multi-addition works well
    it "puts 2, 2, 2, 2, and 2 together" do
      expect(calculator.add(2, 2, 2, 2, 2)).to eq(10)
    end
  end

  describe "subtraction" do

    it "subtracts 2 from 4" do
      expect(calculator.subtract(4, 2)).to eq(2)
    end


    it "subtracts 2 from (4-2)" do
      expect(calculator.subtract(4, 2, 2)).to eq(0)
    end
  end

  describe "multiplication" do

    it "multiplies 2 by 2" do
      expect(calculator.multiply(2, 2)).to eq(4)
    end

    it "multiplies 2 by 2 by 2 by 2 by 2" do
      expect(calculator.multiply(2, 2, 2, 2, 2)).to eq(32)
    end
  end

  describe "division" do

    it "divides 4 by 2" do
      expect(calculator.divide(4, 2)).to eq(2)
    end

    it "evaluates 32 / 2 / 2 / 2 / 2" do
      expect(calculator.divide(32, 2, 2, 2, 2)).to eq(2)
    end

    it "doesn't divide by 0" do
      expect(calculator.divide(4, 0)).to eq(false)
    end
  end

  describe "powers" do
    it "evaluates 4 ** 2" do
      expect(calculator.powers(4, 2)).to eq(16)
    end
  end

end
  
