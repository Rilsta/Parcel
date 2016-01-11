class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume()
    vol = @length * @width * @height
    return vol
  end

end
