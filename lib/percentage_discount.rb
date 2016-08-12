class PercentageDiscount
attr_reader :spend_neccessary, :reduction

  def initialize(spend_neccessary,reduction)
    @spend_neccessary = spend_neccessary
    @reduction = reduction
  end

  def apply_discount?(current_total)
    current_total > spend_neccessary
  end

  def discount(current_total)
    apply_discount?(current_total) ? current_total * reduction / 100 : current_total
  end
end
