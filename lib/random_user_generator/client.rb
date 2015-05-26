module RandomUserGenerator
  class Client
    HOST = 'http://api.randomuser.me'

    def request(params)
      response = connection.get(api_url, params)
      response.body['results'].map { |u| u['user'] }
    end

    private

    def connection
      Faraday.new(HOST, params: RandomUserGenerator.options) do |faraday|
        faraday.response :json, content_type: /\bjson$/

        faraday.use     FaradayMiddleware::FollowRedirects
        faraday.adapter Faraday.default_adapter
      end
    end

    def api_url
      "/#{RandomUserGenerator.api_version}"
    end
  end
end
