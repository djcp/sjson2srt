# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sjson2srt/version'

Gem::Specification.new do |spec|
  spec.name          = "sjson2srt"
  spec.version       = Sjson2srt::VERSION
  spec.authors       = ["Dan Collis-Puro"]
  spec.email         = ["dan_collis-puro@harvard.edu"]
  spec.summary       = %q{Convert the sjson captioning format to the srt format}
  spec.description   = %q{Convert the sjson captioning format to the srt format.  This includes an executable named "sjson2srt" that accepts sjson on STDIN and emits srt on STDOUT, suitable for use in a unix pipeline.}
  spec.homepage      = "https://github.com/djcp/sjson2srt"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "simplecov", "~> 0.9"
  spec.add_development_dependency "pry", "~> 0.10"
end
