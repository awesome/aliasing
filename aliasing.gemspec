# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'aliasing/version'

Gem::Specification.new do |s|
  s.name        = 'aliasing'
  s.version     = Aliasing::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.authors     = ['Max Lahey']
  s.email       = ['maxwellslahey@gmail.com']
  s.homepage    = 'https://github.com/maxwells/aliasing'
  s.summary     = 'Bash alias suggestion tool'
  s.description = 'Aliasing makes recommendations of potential aliases based on your bash history'

  s.required_ruby_version = '>= 1.9.3'

  s.add_runtime_dependency 'thor', '>= 0.18.1'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec', '~>2.14'

  s.files        = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md]
  s.executable   = 'aliasing'
  s.require_path = 'lib'
end