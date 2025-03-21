require_relative "lib/simplekiq/version"

Gem::Specification.new do |spec|
  spec.name = "simplekiq"
  spec.version = Simplekiq::VERSION
  spec.authors = ["Jack Noble", "John Wilkinson"]
  spec.email = ["jcwilkinson@doximity.com"]
  spec.summary = "Sidekiq-based workflow orchestration library"
  spec.description = "Provides tools for representing long chains of parallel and serial jobs in a flat, simple way."
  spec.homepage = "https://github.com/doximity/simplekiq"
  spec.license = "APACHE-2.0"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # TODO: spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "standard"

  spec.add_dependency "sidekiq", ">= 7.3.0"
  spec.add_dependency "sidekiq-pro", ">= 7.3.0"
end
