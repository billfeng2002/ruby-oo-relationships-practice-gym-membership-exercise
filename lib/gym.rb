class Gym
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select{|membership| membership.gym==self}
  end
  def get_lifters
    self.get_memberships.map{|membership| membership.lifter}
  end

  def lifter_names
    self.get_lifters.map{|lifter| lifter.name}
  end

  def total_lift
    self.get_lifters.sum{|lifter| lifter.lift_total}
  end

  def initialize(name)
    @name = name

    @@all << self
  end
end
