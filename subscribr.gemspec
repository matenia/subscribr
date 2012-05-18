$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subscribr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subscribr"
  s.version     = Subscribr::VERSION
  s.authors     = ["Matenia Rossides"]
  s.email       = ["matenia@gmail.com"]
  s.homepage    = "http://matenia.com"
  s.summary     = "Basic Engine that will collect names and emails from your site"
  s.description = "Basic Engine that will collect names and emails from your site with partials, styling etc ..."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  s.add_dependency "haml-rails"
  s.add_dependency 'client_side_validations',"~> 3.2.0.beta.3"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
