require 'checkout'

describe Checkout do
  subject(:checkout) {described_class.new}
  it 'can scan items' do
    expect(checkout.scan("Lavender heart", (9.25)))
  end
end
