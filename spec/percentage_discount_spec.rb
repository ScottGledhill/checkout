require 'percentage_discount'


describe PercentageDiscount do
  subject(:percent) {described_class.new(60,10)}

  it 'can calculate discount by percent given' do
    expect(percent.discount(70)).to eq 7
  end

  it 'doesnt calculate discount if lower than required amount' do
    expect(percent.discount(55)).to eq 55
  end
end
