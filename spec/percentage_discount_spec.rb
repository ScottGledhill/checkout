require 'percentage_discount'


describe PercentageDiscount do
  subject(:percent) {described_class.new}

  it 'can decrease total by percent given' do
    checkout = Checkout.new
    checkout.scan("Personalised cufflinks")
    checkout.scan("Lavender heart")
    checkout.scan("Personalised cufflinks")
    checkout.scan("Lavender heart")
    checkout.total
    percent.check_discount(60,10)
  end
end
