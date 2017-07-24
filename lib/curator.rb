require "./lib/museum"

class Curator

attr_reader :artists, :museums, :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(museum)
    @museums << Museum.new(museum)
  end

end
