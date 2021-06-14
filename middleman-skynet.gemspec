require_relative 'lib/middleman/skynet/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-skynet"
  spec.version       = Middleman::Skynet::VERSION
  spec.authors       = ["Christoph Klocker"]
  spec.email         = ["christoph@vedanova.com"]

  spec.summary       = %q{Middleman extension to upload files to Sia Skynet}
  spec.description   = %q{Skynet is a content and application hosting platform bringingdecentralized storage to users, creators and app developers.}
  spec.homepage      = "https://siasky.net/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = 'https://rubygems.org'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/corck/middleman-skynet"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
