require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test

  def test_it_can_create_new_class
    curator = Curator.new

    assert_instance_of Curator, curator
  end

  def test_it_starts_with_no_artists
    curator = Curator.new

    assert_equal [], curator.artists
  end

  def test_it_starts_with_no_museum
    curator = Curator.new

    assert_equal [], curator.museums
  end

  def test_it_starts_with_no_photographs
    curator = Curator.new

    assert_equal [], curator.photographs
  end

  def test_it_can_add_museums
    curator = Curator.new

    curator.add_museum({name: "MoMA"})

    assert_instance_of Museum, curator.museums[0]
  end

  def test_it_has_one_museum
    curator = Curator.new

    curator.add_museum({name: "MoMA"})

    assert_equal 1, curator.museums.count
  end

  def test_museums_have_id_numbers
    curator = Curator.new

    curator.add_museum({name: "MoMA"})

    assert_equal 1, curator.museums.first.id
  end

  def test_it_can_add_artists
    curator = Curator.new

    curator.add_artist({
                        name: "Ansel Adams",
                        born: 1902,
                        died: 1984,
                        country: "United States"
                        })

    assert_instance_of Artist, curator.artists[0]
  end

  def test_it_count_artists
    curator = Curator.new

    curator.add_artist({
                        name: "Ansel Adams",
                        born: 1902,
                        died: 1984,
                        country: "United States"
                        })

    assert_equal 1, curator.artists.count
  end

  def test_artist_has_an_id
    curator = Curator.new

    curator.add_artist({
                        name: "Ansel Adams",
                        born: 1902,
                        died: 1984,
                        country: "United States"
                        })

    assert_equal 1, curator.artists.first.id
  end

  def test_it_can_add_photographs
    curator = Curator.new

    curator.add_photograph({
                            name: "Moonrise, Hernandez",
                            artist_id: 1,
                            museum_id: 1,
                            year: 1941
                            })

    assert_instance_of Photograph, curator.photographs[0]
  end

  def test_it_can_count_photographs
    curator = Curator.new

    curator.add_photograph({
                            name: "Moonrise, Hernandez",
                            artist_id: 1,
                            museum_id: 1,
                            year: 1941
                            })

    assert_equal 1, curator.photographs.count
  end

  def test_photograph_has_an_id
    curator = Curator.new

    curator.add_photograph({
                            name: "Moonrise, Hernandez",
                            artist_id: 1,
                            museum_id: 1,
                            year: 1941
                            })

    assert_equal 1, curator.photographs.first.id
  end

  def test_it_can_find_museum
    curator = Curator.new

    curator.add_museum({
                        name: "Museo de Arte Moderno"
                        })
    museum = curator.find_museum(1)
  end

end
