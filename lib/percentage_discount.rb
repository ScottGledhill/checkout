require 'checkout'
class PercentageDiscount
  attr_reader :checkout

  def initialize(checkout = Checkout.new)
    @checkout = checkout
  end

  def check_discount(amount,reduction)
    p checkout.total
    if amount > checkout.total
      checkout.total % 100 * (100 - reduction)
    end
  end
end
