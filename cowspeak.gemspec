# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cowspeak/version'

Gem::Specification.new do |spec|
  spec.name          = "cowspeak"
  spec.version       = Cowspeak::VERSION
  spec.authors       = ["Eli Shkurkin"]
  spec.email         = ["eshkurkin@gmail.com"]
  spec.summary       = %q{Cow used to say, now it speak.}
  spec.description   = %q{Type what you want cow to speak.}
  spec.homepage      = "https://github.com/shkurkin/cowspeak"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "cowsay"
  spec.add_dependency "lolcat"
end
