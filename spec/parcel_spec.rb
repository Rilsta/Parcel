require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('calculates the volume of a package') do
      package = Parcel.new(2,2,2,34)
      expect(package.volume()).to(eq(8))
    end
  end
end
