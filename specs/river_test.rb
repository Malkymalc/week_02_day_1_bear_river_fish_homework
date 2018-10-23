require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < Minitest::Test

  def setup
    @fish1 = Fish.new('Alan')
    @fish2 = Fish.new('Bob')
    @fish3 = Fish.new('Chris')

    @river1 = River.new('Rio')
  end

  def test_river_has_name
    expected = "Rio"
    actual = @river1.name
    assert_equal(expected, actual)
  end


  def test_river_holds_fishes__empty
    expected = []
    actual = @river1.fishes
    assert_equal(expected, actual)
  end

  def test_can_add_fish_to_river
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    expected = [@fish1, @fish2, @fish3]
    actual = @river1.fishes
    assert_equal(expected, actual)
  end

  def test_river_can_count_fish
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)

    expected = 2
    actual = @river1.count_fish

    assert_equal(expected, actual)
  end

end
