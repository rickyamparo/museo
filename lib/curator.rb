require "./lib/museum"
require "./lib/artist"


class Curator

attr_reader :artists, :museums, :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(museum)
    if museum[:id] == nil
      museum[:id] = 1
    end
    @museums << Museum.new(museum)
  end

  def add_artist(artist)
    if artist[:id] == nil
      artist[:id] = 1
    end
    @artists << Artist.new(artist)
  end

end
