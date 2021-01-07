class Follower

attr_accessor :name, :age, :life_motto

@@all = []

  def initialize name, age, life_motto
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end 

  def self.all
    @@all
  end 

  def cults
    Bloodoath.all.select{|oath| self == oath.follower}
  end 

  def join_cult cult, initiation_date 
    Bloodoath.new(cult, self, initiation_date)
  end

  def self.of_a_certain_age age
    all.select{|follower| follower.age >= age}
  end

###additional practice#####

  def self.most_active
  #  all.reduce do |most_active_follower, follower|
  #   binding.pry
  #   if most_active_follower.cults.count > most_active_follower.cults.count
  #     follower
  #   else
  #     most_active_follower
  #   end 
  # end 
  all.max_by {|follower| follower.cults.count}
end 

end 