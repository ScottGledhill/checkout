require 'frequency_discount'


describe FrequencyDiscount do
  subject(:frequency) {described_class.new(2, "Lavender heart")}

  it 'can calculate discount if frequency needed is met' do
    expect(frequency.apply_discount?(["Lavender heart", "Lavender heart", "Personalised cufflinks"], ("Lavender heart"))).to eq true
  end
end
