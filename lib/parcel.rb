class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
    @weight = weight.to_i
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
  end

  def cost_to_ship(miles)
    cost = volume_cost + weight_cost + shipping(miles.to_i)
    return "$" + cost.to_s
  end
end
