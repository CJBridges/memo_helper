# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memo_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "memo_helper"
  spec.version       = MemoHelper::VERSION
  spec.authors       = ["CJ Bridges"]
  spec.email         = ["gratch06@gmail.com"]

  spec.summary       = "One line method memoization for ruby classes."
  spec.description   = "One line method memoization for ruby classes."
  spec.homepage      = "https://github.com/CJBridges/memo_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rspec", '> 3.0'
  spec.add_development_dependency "fuubar"
end
