module Findable
  module ClassMethod
    def self.find_by_name(name)
      @@artists.detect {|a| a.name == name}
      @@all << name
    end
  end
end