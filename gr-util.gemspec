# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gr/util/version'

Gem::Specification.new do |spec|
  spec.name          = "gr-util"
  spec.version       = Gr::Util::VERSION
  spec.authors       = ["Giorgio Desideri"]
  spec.email         = ["giorgio.desideri@gmail.com"]

  spec.summary       = %q{Util modules that avoids the repetition of code}
  spec.description   = %q{Util is a collection as module form of all pieces of code that need to re-write or include inside your code. 
  						This gem helps to not repeat your code and enhance encapsulation.}
  spec.homepage      = "https://github.com/kallsu/gr-util"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/kallsu/gr-util"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
