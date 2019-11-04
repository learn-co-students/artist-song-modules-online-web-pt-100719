module Findable
  module ClassMethod
    @@all = []
    def self.find_by_name(name)
      @@artists.detect {|a| a.name == name}
      @@all << self
    end
  end
end