# spec/number_converter_spec.rb
require_relative '../number_converter'
RSpec.describe('NumberConverter', type: :request) do
  context 'to_roman' do
    let(:converter) { NumberConverter.new }
    it 'converts 152 to "CLII"' do
      expect(converter.to_roman(152)).to eq 'CLII'
    end

    it 'converts a 4 to a "IV"' do
      expect(converter.to_roman(4)).to eq 'IV'
    end

    it 'converts 2013 to MMXIII' do
      expect(converter.to_roman(2013)).to eq 'MMXIII'
    end

    it 'fails if is string ' do
      expect { converter.to_roman('2013') }.to raise_error(IntegerRequiredError)
    end
  end
end
