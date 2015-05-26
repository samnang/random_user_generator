require "ostruct"

require "faraday"
require 'faraday_middleware'

require "random_user_generator/configuration"
require "random_user_generator/client"
require "random_user_generator/user"

require "random_user_generator/version"

module RandomUserGenerator
  extend Configuration

  def self.generate(params = {})
    results = client.request(params)
    users   = results.map { |u| User.new(u) }

    params[:results] ? users : users.first
  end

  def self.generate_female(params = {})
    generate(gender: 'female')
  end

  def self.generate_male(params = {})
    generate(gender: 'male')
  end

  def self.client
    @client ||= Client.new
  end
end
