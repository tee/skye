
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "syke/version"

Gem::Specification.new do |spec|
  spec.name          = "syke"
  spec.version       = Syke::VERSION
  spec.authors       = ["Trenton Tyler"]
  spec.email         = ["ttyler@isharelessons.com"]

  spec.summary       = %q{A gem for generating fake values for testing or development.}
  spec.homepage      = "https://github.com/tee/syke"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
