require "spec_helper"

RSpec.describe Cpu do
  describe "#initializes" do
    it "can initialize" do
      cpu = Cpu.new("O")

      expect(cpu).to be_a(CPU)
    end
  end

  describe "#has readable attributes" do
    it "has readable attributes" do
      cpu = Cpu.new("O")

      expect(cpu.token).to eq("O")
    end
  end

  describe "#random_letter" do
    it "can choose a letter A through G at random" do
      cpu = Cpu.new("O")
      letters_array = ["A", "B", "C", "D", "E", "F", "G"]

      cpu.random_letter

      expect(letters_array.include?(cpu.random_letter)).to be(true)
    end
  end
end