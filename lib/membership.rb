class Membership
  attr_reader :cost, :lifter, :gym
  @@all = []

  def self.all
    @@all
  end

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter=lifter
    @gym=gym
    @@all << self
  end
end
