require "./lib/museum"

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

end
