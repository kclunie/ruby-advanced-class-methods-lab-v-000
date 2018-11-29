class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    s = self.new
    s.save
    s
  end

  def self.new_by_name(string)
    s = self.new 
    s.name = string
    s
  end
  
  def self.create_by_name(string)
    s = self.new
    s.name = string
    s.save
    s 
  end
  
  def self.find_by_name(string)
    self.all.detect { |i| i.name == string}
  end

  def self.find_or_create_by_name(string)
    c = self.find_by_name(string)
    if c == nil 
      self.create_by_name(string)
    else
      c
    end
  end 
  
end
