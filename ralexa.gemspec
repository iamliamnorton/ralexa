# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ralexa/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Paul Annesley"]
  gem.email         = ["paul@annesley.cc"]
  gem.description   = %q{Ruby client for Amazon Alexa APIs.}
  gem.summary       = %q{Ruby client for Amazon Alexa APIs such as TopSites.}
  gem.homepage      = "https://github.com/flippa/ralexa"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "ralexa"
  gem.require_paths = ["lib"]
  gem.version       = Ralexa::VERSION

  # addressable 2.2.7 introduces URI#hostname for Net::HTTP compatibility.
  gem.add_runtime_dependency "addressable", ">= 2.2.7"
  gem.add_runtime_dependency "nokogiri"

  gem.add_development_dependency "minitest"
  gem.add_development_dependency "rake"
end
