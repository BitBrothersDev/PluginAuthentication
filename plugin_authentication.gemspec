require_relative "lib/plugin_authentication/version"

Gem::Specification.new do |spec|
  spec.name        = "plugin_authentication"
  spec.version     = PluginAuthentication::VERSION
  spec.authors     = ["Orest Kostiuk"]
  spec.email       = ["orest.kostiuk@bitbrothers.dev"]
  # spec.homepage    = "TODO"
  spec.summary     = "Summary of PluginAuthentication."
  spec.description = "Description of PluginAuthentication."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.5"
  spec.add_dependency "devise", ">= 4.9.2"
  spec.add_dependency "omniauth", '>= 1.6.1'
  spec.add_dependency "omniauth-google-oauth2", '>= 1.0.0'
  spec.add_dependency "omniauth-rails_csrf_protection", '>= 1.0.1'
  spec.add_dependency "dotenv-rails"
end
