require 'spec_helper'

describe Sjson2srt::Converter do
  include FileHelpers

  it 'raises an error with invalid json' do
    expect { described_class.new('asdf') }.to raise_error
  end

  it 'converts between sjson and srt' do
    content = content_from_example_file('example.sjson')

    converter = described_class.new(content)

    expect(converter.convert).to eq content_from_example_file('example.srt')
  end
end
