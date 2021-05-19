Gem::Specification.new do |spec|
  spec.name = "my_ruby_ext"
  spec.summary = "MKMF Simple example"
  spec.version = "0.0.1"
  spec.authors = ["Juan C. Ruiz"]

  spec.required_ruby_version = "> 2.3"
  spec.files = `git ls-files`.split("\n")

  spec.extensions = ["ext/src/extconf.rb"]
  spec.require_paths = ["lib", "ext"]

  spec.add_development_dependency 'bundler', '~> 2.2.15'
  spec.add_development_dependency 'rake', '~> 13.0.3'
  spec.add_development_dependency 'rake-compiler', '~> 1.1.1'
  spec.add_development_dependency 'minitest', '~> 5.14.4'
end
