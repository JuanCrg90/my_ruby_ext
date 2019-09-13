Gem::Specification.new do |spec|
  spec.name = "my_ruby_ext"
  spec.summary = "MKMF Simple example"
  spec.version = "0.0.1"
  spec.authors = ["Juan C. Ruiz"]

  spec.required_ruby_version = "> 2.3"
  spec.files = `git ls-files`.split("\n")

  spec.extensions = ["ext/src/extconf.rb"]
  spec.require_paths = ["lib", "ext"]
end
