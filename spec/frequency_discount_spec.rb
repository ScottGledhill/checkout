require 'frequency_discount'


describe FrequencyDiscount do
  subject(:frequency) {described_class.new()}

  it 'can calculate discount if frequency needed is met' do

    expect(frequency.discount?(20)).to eq true
  end
end
