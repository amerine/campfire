# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "campfire/version"

Gem::Specification.new do |s|
  s.name        = "campfire"
  s.version     = Campfire::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark Turner", "Chris Kraybill", "Luke Sheridan"]
  s.email       = ["mark@amerine.net", "ckraybill@gmail.com", "luke@windmillium.com"]
  s.homepage    = ""
  s.summary     = "Command line interface for campfire"
  s.description = "Command line interface for campfire"

  s.rubyforge_project = "campfire"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "tinder", "~> 1.4.3"
end
