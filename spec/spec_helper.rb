require 'pry'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'random_user_generator'

RSpec.configure do |config|
  config.after do
    RandomUserGenerator.reset
  end
end
