require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class TestRiver < MiniTest::Test

  def setup

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Goldie")
    @fish3 = Fish.new("Fishy")
    fish = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", fish)

  end

  def test_river_has_name

    assert_equal("Amazon", @river.name)

  end

  def test_fish_count

    assert_equal(3, @river.fish_count())

  end

  # def test_find_fish
  #
  #   assert_equal("Nemo", @river.find_fish())

  # end

  def test_remove_fish

    @river.remove_fish
    assert_equal(2, @river.fish_count)

  end

end
