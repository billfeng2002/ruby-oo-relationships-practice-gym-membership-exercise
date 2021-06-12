class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select{|membership| membership.lifter==self}
  end

  def gyms
    self.get_memberships.map{|membership| membership.gym}
  end

  def self.average_lift_total
    self.all.sum{|lifter| lifter.lift_total}/self.all.count
  end

  def get_membership_costs
    self.get_memberships.sum{|membership| membership.cost}
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

end
