require 'pry'

class Photograph

  attr_reader :photo, :id

  def initialize(photo)
    @photo = photo
    @id = 1
  end

  def artist_id
    @photo[:artist_id]
  end

  def museum_id
    @photo[:museum_id]
  end

  def name
    @photo[:name]
  end

  def year
    @photo[:year]
  end

end
