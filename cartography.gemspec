# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cartography/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bill Centinaro"]
  gem.email         = ["bill@theresnobox.net"]
  gem.description   = %q{Cartography, a site map creator}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cartography"
  gem.require_paths = ["lib"]
  gem.version       = Cartography::VERSION

  gem.add_dependency('nokogiri')
end
