require "json"
require "ostruct"

require "faraday"
require 'faraday_middleware'

require "random_user_generator/configuration"
require "random_user_generator/client"

require "random_user_generator/version"

module RandomUserGenerator
  extend Configuration

  def self.generate(params = {})
    results = client.request(params)
    users   = JSON.parse(results.to_json, object_class: OpenStruct)

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
