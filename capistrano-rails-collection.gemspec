# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-rails-collection'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-rails-collection"
  spec.version       = CapistranoRailsCollection::VERSION
  spec.authors       = ["dei79"]
  spec.email         = ["dirk.eisenberg@gmail.com"]
  spec.description   = %q{Rails specific Capistrano tasks which are not part of the official rails gem}
  spec.summary       = %q{Rails specific Capistrano tasks which are not part of the official rails gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano-rails', '~> 1.1.0'
end
