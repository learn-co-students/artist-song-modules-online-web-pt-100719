module Paramable

 def to_param
    name.downcase.gsub(' ', '-')
  end
end

class Artist
  extend Artist:Song
  include Artist:Song
end

class Song
  extend Artist:Song
  include Artist:Song
end