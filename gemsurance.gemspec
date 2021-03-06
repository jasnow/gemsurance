$LOAD_PATH << File.expand_path("../lib", __FILE__)
require 'gemsurance/version'

Gem::Specification.new do |s|
  s.name                      = "gemsurance"
  s.version                   = Gemsurance::VERSION

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'
  s.authors                   = ["Jon Kessler"]
  s.description               = "Gem vulnerability and version checker"
  s.email                     = "jon.kessler@appfolio.com"

  s.homepage                  = "http://github.com/appfolio/gemsurance"
  s.licenses                  = ["MIT"]
  s.require_paths             = ["lib"]
  s.summary                   = "Your Gem Insurance Policy"

  s.files                     = `git ls-files -- bin lib`.split("\n")
  s.executables               = ["gemsurance"]

  s.add_dependency("bundler")
  s.add_dependency("git")
  s.add_dependency("gems")

  s.add_development_dependency("mocha")
  s.add_development_dependency("rake")
  s.add_development_dependency("nokogiri")
  s.add_development_dependency("test-unit")
end
