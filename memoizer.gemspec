# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memoizer/version'

Gem::Specification.new do |spec|
  spec.name          = "memoizer"
  spec.version       = Memoizer::VERSION
  spec.authors       = ["CJ Bridges"]
  spec.email         = ["bridges.cj@gmail.com"]

  spec.summary       = "One line method memoization for ruby classes."
  spec.description   = "One line method memoization for ruby classes."
  spec.homepage      = "https://github.com/CJBridges/memoizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rspec", '> 3.0'
  spec.add_development_dependency "fuubar"
end
