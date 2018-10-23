class River

  attr_reader :name
  attr_accessor :fishes

  def initialize(name)
    @name = name
    @fishes = []
  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def count_fish()
    return @fishes.length()
  end

end
