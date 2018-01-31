require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestBear < MiniTest::Test

  def setup

    @bear = Bear.new("Yogi")
    fish = Fish.new("Sammy the Salmon")
    @river = River.new("Nile", [fish])

  end

  def test_bear_has_name

    assert_equal("Yogi", @bear.name)

  end

  def test_stomach_count

    assert_equal(0, @bear.stomach_count)

  end

  def test_bear_roar

    assert_equal("Roar!!", @bear.bear_roar)

  end

  def test_bear_eats_fish

    @bear.bear_eats_fish
    assert_equal(1, @bear.stomach_count)
    assert_equal(0, @river.fish_count)

  end






end
