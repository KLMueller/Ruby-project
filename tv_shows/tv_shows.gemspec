# frozen_string_literal: true

require_relative "lib/tv_shows/version"

Gem::Specification.new do |spec|
  spec.name = "tv_shows"
  spec.version = TvShows::VERSION
  spec.authors = ["Kelley Mueller"]
  spec.email = [""]

  spec.summary = ""
  spec.description = ""
  spec.homepage = ""
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

 spec.metadata["allowed_push_host"] = ""

  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  gem "rake", "~> 13.0"
  gem 'nokogiri'
  gem 'open-uri'
  gem 'BCrypt'
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
