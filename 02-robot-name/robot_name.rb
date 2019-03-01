class Robot
  attr_reader :name

  def initialize
    @name = rand(65..90).chr + rand(65..90).chr + rand(100...1000).to_s
  end

  def reset
    @name = rand(65..90).chr + rand(65..90).chr + rand(100...1000).to_s
  end
end
