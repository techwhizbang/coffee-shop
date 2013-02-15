class DrinkOrder
  attr_accessor :customer, :drink_type

  def initialize(options = {})
    @drink_type = options[:drink_type]
  end
end