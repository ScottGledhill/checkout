require 'checkout'

describe Checkout do
  subject(:checkout) {described_class.new}
  it 'can scan items' do
    checkout.scan("Lavender heart", (9.25))
    expect(checkout.total).to eq 9.25
  end
end
