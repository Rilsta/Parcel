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
    return @weigh_cost
  end

  def shipping(mi)
    @shipping_cost = (0.20 * mi)
  end
#bonus giftwrap method
  # def wrapping()
  #   surface_area = (2 * @length * @width) + (2 * @width * @height) + (2 * @length * @height)
  #   @wrapping_cost = surface_area * 0.50
  #   return @wrapping_cost
  # end

  def cost_to_ship(miles)
    cost = volume_cost + weight_cost + shipping(miles.to_i)
    return "$" + cost.to_s
  end
end
