# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongomapper/archive/version'

Gem::Specification.new do |spec|
  spec.name          = "mongomapper-archive"
  spec.version       = Mongomapper::Archive::VERSION
  spec.authors       = ["Ben Scofield"]
  spec.email         = ["git@turrean.com"]
  spec.description   = "Add simple archive / soft delete functionality to your MongoMapper models."
  spec.summary       = "Add simple archive / soft delete functionality to your MongoMapper models."
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "mongo_mapper", ">= 0.12.0"
  spec.add_development_dependency "rspec",        "~> 2.13.0"
  spec.add_development_dependency "rake"
end
