class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @volume = @length * @width * @height
  end

  def volume_cost()
    @vol_cost = (@volume * 2.00)
    return @vol_cost
  end

  def weight_cost()
    @weigh_cost = (@weight * 1.00)
  end

  def shipping(mi)
    @shipping_cost = (0.20 * mi)
    return @shipping_cost
  end

  def cost_to_ship()
    cost = @vol_cost + @weight_cost + @shipping_cost
    return cost
  end
end
