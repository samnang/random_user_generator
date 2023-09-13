# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random_user_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "random_user_generator"
  spec.version       = RandomUserGenerator::VERSION
  spec.authors       = ["Samnang Chhun"]
  spec.email         = ["samnang.chhun@gmail.com"]

  spec.summary       = %q{Ruby wrapper for the RandomUser API.}
  spec.description   = %q{A Ruby wrapper for the RandomUser API.}
  spec.homepage      = "https://github.com/samnang/random_user_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "2.7.11"
  spec.add_dependency "faraday_middleware", ">= 0.9.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.5.0"
  spec.add_development_dependency "pry", ">= 0.10.0"
end
