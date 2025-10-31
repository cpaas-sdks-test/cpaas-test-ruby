# frozen_string_literal: true

require_relative "lib/cpaas_test_ruby/config"

Gem::Specification.new do |spec|
  spec.name = "cpaas_test_ruby"
  spec.version = Karaden::Config::VERSION
  spec.authors = ["cpaas-sdks-test-om"]
  spec.email = ["cpaas-sdks-test-om@nttcoms.com"]

  spec.summary = ""
  spec.homepage = "https://github.com/cpaas-sdks-test/cpaas-test-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency 'bundler', '>= 1.5', '< 3.0'
  spec.add_development_dependency 'debug'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'webmock'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
