class Cpu
  attr_reader :cpu_token
  
  def initialize(cpu_token)
    @cpu_token = cpu_token
  end

  def random_letter
    letters = ["A", "B", "C", "D", "E", "F", "G"]
    letters.sample
  end
end