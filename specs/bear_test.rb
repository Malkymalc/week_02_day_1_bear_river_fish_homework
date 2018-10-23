require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < Minitest::Test

  def setup
    fish1 = Fish.new('Alan')
    fish2 = Fish.new('Bob')
    fish3 = Fish.new('Chris')

    @river1 = River.new('Rio')
    @river1.add_fish(fish1)
    @river1.add_fish(fish2)
    @river1.add_fish(fish3)

    @bear1 = Bear.new('Yogi')
  end

  def test_bear_has_name
    expected = 'Yogi'
    actual = @bear1.name
    assert_equal(expected, actual)
  end

  def test_bear_has_empty_belly
    expected = []
    actual = @bear1.belly
    assert_equal(expected, actual)
  end

  def test_bear_can_take_fish_from_a_river
    @bear1.take_fish_from_river(@river1)

    expected_bear = 1
    actual_bear = @bear1.belly.size

    expected_river = 2
    actual_river = @river1.count_fish()

    assert_equal(expected_bear, actual_bear)
    assert_equal(expected_river, actual_river)
  end

  def test_bear_can_count_food
    @bear1.take_fish_from_river(@river1)
    @bear1.take_fish_from_river(@river1)

    expected = 2
    actual = @bear1.count_food()

    assert_equal(expected, actual)
  end

  def test_bear_can_talk
    expected = "".class
    actual = @bear1.talk().class
    actual
    assert_equal(expected, actual)
  end


end
