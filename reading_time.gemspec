# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reading_time/version'

Gem::Specification.new do |spec|
  spec.name          = 'reading_time'
  spec.version       = ReadingTime::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Antti-Jussi Kovalainen']
  spec.email         = ['ajk@ajk.fi']
  spec.summary       = %q{Estimated reading time of text}
  spec.homepage      = 'https://github.com/darep/reading_time'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.8.7'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.0'

  spec.add_runtime_dependency 'sanitize', '~> 2.0.6'
end
