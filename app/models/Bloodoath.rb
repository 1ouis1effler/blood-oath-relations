class Bloodoath

  attr_accessor :initiation_date, :follower, :cult

  @@all = []

  def initialize cult, follower, initiation_date
    @cult = cult
    @follower = follower
    @initiation_date = initiation_date
    @@all << self 
  end 

  def self.all  ##returns all the instances of bloodoaths defined above ^^^ its own instances of bloodoaths
    @@all 
  end 

end 