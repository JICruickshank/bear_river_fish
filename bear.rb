class Bear

  attr_reader :name

  def initialize(name)

    @name = name
    @stomach = []

  end

  def stomach_count

    return @stomach.length

  end

  def bear_roar

    return "Roar!!"

  end

  def bear_eats_fish

    fish = @river.get_fish_copy
    @stomach.push(fish[0])
    @river.remove_fish

  end


end
