require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new('Alan')
    @fish2 = Fish.new('Bob')
    @fish3 = Fish.new('Chris')
  end

  def test_fish_has_name
    expected = "Alan"
    actual = @fish1.name
    assert_equal(expected, actual)
  end

end
