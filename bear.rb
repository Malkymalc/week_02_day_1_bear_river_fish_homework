class Bear

  attr_reader :name, :belly

  def initialize(name)
    @name = name
    @belly = []
    @isms = [
      "When you come to a fork in the road, take it.",
      "You can observe a lot by just watching.",
      "In theory there is no difference between theory and practice. In practice there is.",
      "No one goes there nowadays, it’s too crowded.",
      "It's tough to make predictions, especially about the future.",
    ]
  end

  def take_fish_from_river(river)
    fish_caught = river.fishes.sample()
    @belly.push(fish_caught)
    river.fishes.delete(fish_caught)
  end

  def count_food()
    return @belly.size
  end

  def talk()
    return @isms.sample()
  end

end
