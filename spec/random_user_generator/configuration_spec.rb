require 'spec_helper'

describe RandomUserGenerator::Configuration do
  it 'configures the default values for api calls' do
    RandomUserGenerator.configure do |config|
      config.api_version = '0.6'
      config.key = 'abcdef'
      config.nat = 'US'
    end

    expect(RandomUserGenerator.api_version).to eq('0.6')
    expect(RandomUserGenerator.key).to eq('abcdef')
    expect(RandomUserGenerator.nat).to eq('US')
  end
end
