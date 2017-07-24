require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test

  def test_it_can_create_new_class
    photo = Photograph.new({
                            name: "Rue Mouffetard, Paris (Boy with Bottles)",
                            artist_id: 4,
                            museum_id: 2,
                            year: 1954
                            })

    assert_instance_of Photograph, photo
  end

  def test_it_has_an_id
    photo = Photograph.new({id: 1,
                            name: "Rue Mouffetard, Paris (Boy with Bottles)",
                            artist_id: 4,
                            museum_id: 2,
                            year: 1954
                            })

    assert_equal 1, photo.id
  end

  def test_it_has_an_artist_id
    photo = Photograph.new({id: 1,
                            name: "Rue Mouffetard, Paris (Boy with Bottles)",
                            artist_id: 4,
                            museum_id: 2,
                            year: 1954
                            })

    assert_equal 4, photo.artist_id
  end

  def test_it_has_a_museum_id
    photo = Photograph.new({id: 1,
                            name: "Rue Mouffetard, Paris (Boy with Bottles)",
                            artist_id: 4,
                            museum_id: 2,
                            year: 1954
                            })

    assert_equal 2, photo.museum_id
  end

  def test_it_has_a_name
    photo = Photograph.new({id: 1,
                            name: "Rue Mouffetard, Paris (Boy with Bottles)",
                            artist_id: 4,
                            museum_id: 2,
                            year: 1954
                            })

    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photo.name
  end

  def test_it_has_a_year
    photo = Photograph.new({id: 1,
                            name: "Rue Mouffetard, Paris (Boy with Bottles)",
                            artist_id: 4,
                            museum_id: 2,
                            year: 1954
                            })

    assert_equal 1954, photo.year
  end

end
