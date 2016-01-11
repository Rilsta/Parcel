require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume_cost') do
    it('calculates the volume cost of a package') do
      package = Parcel.new(2,2,2,34)
      expect(package.volume_cost()).to(eq(16))
    end
  end

  describe('#weight_cost') do
    it('calculates weight cost of a package') do
      package = Parcel.new(2,2,2,34)
      expect(package.weight_cost()).to(eq(34))
    end
  end

  describe('#shipping') do
    it('calculates shipping cost of a package') do
      package = Parcel.new(2,2,2,34)
      expect(package.shipping(10)).to(eq(2))
    end
  end
end
