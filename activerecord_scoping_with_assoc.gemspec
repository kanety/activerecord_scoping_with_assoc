# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord_scoping_with_assoc/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord_scoping_with_assoc"
  spec.version       = ActiveRecordScopingWithAssoc::VERSION
  spec.authors       = ["Yoshikazu Kaneta"]
  spec.email         = ["kaneta@sitebridge.co.jp"]
  spec.summary       = %q{Merge scoping to associations}
  spec.description   = %q{Merge scoping to associations}
  spec.homepage      = "https://github.com/kanety/activerecord_scoping_with_assoc"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 6.0"

  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "simplecov"
end
