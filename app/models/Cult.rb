class Cult   ##create the class Cult

attr_accessor :name, :location, :founding_year, :slogan 

@@all = []

  def initialize name, location, founding_year, slogan
    @name = name  ##value of whatever is passed into name method
    @location = location  ##value of whatever is passed into location method
    @founding_year = founding_year ##etc
    @slogan = slogan
    @@all << self ##once we create the @@all pointing to the empty array it will shovel the self instances into the all array, self inside of instance method is the way to call the method. 
  end 

  def self.all 
    @@all
  end 

  def recruit_follower follower, initiation_date
    Bloodoath.new(self, follower, initiation_date)
  end

  def all_oaths
    Bloodoath.all.select{|oath| oath.cult == self}
  end

  def cult_population 
    Bloodoath.all.select{|oath| oath.cult == self}.length.to_s.split('')
  end 

  def self.find_by_name name
    all.find {|cult| name == cult.name}
  end 

  def self.find_by_location location
    all.select{|cult| location == cult.location}
  end

  def self.find_by_founding_year year 
    all.select{|cult| year == cult.founding_year}
  end 

####additional advanced methods (analytics) practice####

  def average_age
    ages = all_oaths.map{|oath| oath.follower.age}
    (ages.sum/ages.length).to_f
  end 

  def my_followers_mottos
    mottos = oaths.map{|oath| oath.follower.age}
    (ages.reduce {|motto| motto})
  end 

end 