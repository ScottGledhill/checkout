require 'percentage_discount'


describe PercentageDiscount do
  subject(:percent) {described_class.new(60,10)}

  it 'can decrease total by percent given' do
    expect(percent.discount(70)).to eq 7
  end
end
