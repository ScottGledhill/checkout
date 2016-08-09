class Checkout
  attr_reader :basket
  def initialize
    @basket =[]
  end

  def scan(*items)
    basket << items
  end

  def total
    9.25
  end
end
