require_relative 'lib/agrovoc/version'

Gem::Specification.new do |spec|
  spec.name          = "agrovoc"
  spec.version       = Agrovoc::VERSION
  spec.authors       = ["Nate Flood"]
  spec.email         = ["nflood@echonet.org"]

  spec.summary       = %q{Ruby API wrapper for the AGROVOC Linked Open Data set about agriculture}
  spec.description   = %q{Provides a ruby api wrapper for the FAO's AGROVOC multilingual and controlled vocabulary  designed to cover concepts and terinology related to agriculre under the FAO's areas of interest.}
  spec.homepage      = "https://github.com/ECHOInternational/agrovoc-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ECHOInternational/agrovoc-ruby"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~>3.13"
end
