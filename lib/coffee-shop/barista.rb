class Barista
  include ActiveModel::Validations

  attr_accessor :first_name, :years_of_experience, :coffee_shop

  validates :first_name, :presence => true
  validates :years_of_experience, :presence => true, :numericality => {:only_integer => true}

  def get_cup_of(drink_order)
    case drink_order.drink_type
      when "latte"
        make_latte_for(drink_order)
      when "mocha"
        make_mocha_for(drink_order)
      when "espresso"
        make_espresso_for(drink_order)
      else
        make_drip_coffee_for(drink_order)
    end
  end

  private

  ##
  # returns a cup of mocha
  def make_mocha_for(drink_order)
    Frother.froth("milk")
  end

  ##
  # returns a cup of coffee
  def make_drip_coffee_for(drink_order)

  end

  ##
  # returns a cup of espresso
  def make_espresso_for(drink_order)

  end

  ##
  # returns a cup of latte
  def make_latte_for(drink_order)
    Frother.froth("milk")
  end

end