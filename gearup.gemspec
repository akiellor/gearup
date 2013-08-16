# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gearup/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Kiellor"]
  gem.email         = ["akiellor@thoughtworks.com"]
  gem.description   = %q{Sprockets + Thin to get you going with static content.}
  gem.summary       = %q{Sprockets + Thin to get you going with static content.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gearup"
  gem.require_paths = ["lib"]
  gem.version       = Gearup::VERSION
  
  gem.add_development_dependency("rake", "~> 0.9.2.2")
  gem.add_dependency("rack", "~> 1.4.1")
  gem.add_dependency("sprockets", "~> 2.4.5")
  gem.add_dependency("coffee-script", "~> 2.2.0")
  gem.add_dependency("haml", "~> 3.1.7")
  gem.add_dependency("sass", "~> 3.2.1")
  gem.add_dependency("less", "~> 2.2.1")
  
  if RUBY_PLATFORM == 'java'
    gem.add_dependency("therubyrhino", "~> 2.0.1")
    gem.add_development_dependency("jruby-openssl", "~> 0.7.7")
  else
    gem.add_dependency("therubyracer", "~> 0.10.2")
  end
end
