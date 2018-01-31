class River

  attr_accessor :name, :fish

  def initialize(name, fish)

    @name = name
    @fish = fish

  end


  def fish_count

    @fish.length()

  end

  # def find_fish
  #
  #   return @fish[0].name
  #
  # end

  def remove_fish

    @fish.delete_at(0)

  end

  def get_fish_copy

    copy = @fish
    return copy

  end






end
