require "rake/extensiontask"
require "rake/testtask"

desc "Compile MyRubyExt C code"
Rake::ExtensionTask.new("my_ruby_ext") do |ext|
  ext.lib_dir = "lib/my_ruby_ext"
end

Rake::TestTask.new do |t|
  t.test_files = FileList["test/**/*_test.rb"]
end

task default: :test
