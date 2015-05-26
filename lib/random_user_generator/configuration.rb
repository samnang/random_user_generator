module RandomUserGenerator
  module Configuration
    OPTIONS = [:api_version, :key, :nat, :gender, :seed]

    attr_accessor *OPTIONS

    def configure
      yield self
    end

    def options
      OPTIONS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    def reset
      self.api_version = nil
      self.key         = nil
      self.nat         = nil
      self.gender      = nil
      self.seed        = nil
    end
  end
end
