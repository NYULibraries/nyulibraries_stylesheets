$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nyulibraries_stylesheets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nyulibraries_stylesheets"
  s.version     = NyulibrariesStylesheets::VERSION
  s.authors     = ["Eric Griffis"]
  s.email       = ["eric.griffis@nyu.edu"]
  s.homepage    = "http://www.github.com/NYULibraries/nyulibraries_stylesheets"
  s.summary     = "Stylesheets NYULibraries based on Bootstrap"
  s.description = "Stylesheets NYULibraries based on Bootstrap"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/**/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  # s.test_files = Dir["test/**/*"]

  s.add_dependency "bootstrap-sass", "~> 3.2"
  s.add_dependency "compass", ">= 1.0.1"
end
