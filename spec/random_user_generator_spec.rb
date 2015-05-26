require 'spec_helper'

describe RandomUserGenerator do
  it 'generates a single random user' do
    result = RandomUserGenerator.generate

    expect(result.email).not_to be_empty
  end

  it 'generates multiple random users' do
    results = RandomUserGenerator.generate(results: 2)

    expect(results.count).to eq(2)
    expect(results[0].email).not_to be_empty
  end

  it 'generates a random user base on global option' do
    RandomUserGenerator.configure do |config|
      config.gender = 'female'
    end

    user1 = RandomUserGenerator.generate
    user2 = RandomUserGenerator.generate

    expect(user1.gender).to eq('female')
    expect(user2.gender).to eq('female')
  end

  it 'generates a random user base on inline specified param' do
    RandomUserGenerator.configure do |config|
      config.gender = 'female'
    end

    female = RandomUserGenerator.generate
    male   = RandomUserGenerator.generate(gender: 'male')

    expect(female.gender).to eq('female')
    expect(male.gender).to eq('male')
  end

  it 'generates a random male/female user' do
    female = RandomUserGenerator.generate_female
    male   = RandomUserGenerator.generate_male

    expect(female.gender).to eq('female')
    expect(male.gender).to eq('male')
  end
end
