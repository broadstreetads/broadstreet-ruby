require File.dirname(__FILE__) + '/lib/broadstreet/version'

Gem::Specification.new do |s|

  s.name          = 'broadstreet'
  s.summary       = 'Broadstreet API Wrapper'
  s.author        = 'John Crepezzi'
  s.email         = 'john@broadstreetads.com'
  s.homepage      = 'https://github.com/broadstreetads/broadstreet-ruby'
  s.license       = 'MIT'

  s.version       = Broadstreet::VERSION
  s.platform      = Gem::Platform::RUBY
  s.files         = Dir['lib/**/*.rb']
  s.test_files    = Dir.glob('spec/*.rb')
  s.require_paths = ['lib']
  s.has_rdoc      = true

  s.add_dependency 'faraday'
  s.add_dependency 'hashie'

end
