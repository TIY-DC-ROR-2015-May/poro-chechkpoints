require 'minitest/autorun'
require 'pry'


class AdderTest < Minitest::Test
  def test_it_stores_a_number
    a = Adder.new 42
    assert_equal 42, a.stored_number
  end

  def test_it_can_add_to_that_number
    a = Adder.new 2
    assert_equal 4, a.add(2)
    assert_equal 1002, a.add(1000)
  end

  def test_it_tracks_how_many_additions_it_performs
    a = Adder.new rand(1..10)
    assert_equal 0, a.adds_performed

    a.add 7
    a.add 345
    a.add 51
    assert_equal 3, a.adds_performed
  end
end
