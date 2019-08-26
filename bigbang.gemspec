lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bigbang/version"

Gem::Specification.new do |spec|
  spec.name          = "bigbang"
  spec.version       = Bigbang::VERSION
  spec.authors       = ["David Sanchez"]
  spec.email         = ["sanchez.dav90@gmail.com"]

  spec.summary       = %q{Ruby framework.}
  spec.description   = %q{Ruby framework based on Rack.}
  spec.homepage      = "https://github.com/Sanchezdav/bigbang"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Sanchezdav/bigbang"
  spec.metadata["changelog_uri"] = "https://github.com/Sanchezdav/bigbang/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "rack", "~> 2.0.7"
  spec.add_development_dependency "rack-test", "~> 1.1.0"
  spec.add_development_dependency "test-unit", "~> 3.3.3"
end
