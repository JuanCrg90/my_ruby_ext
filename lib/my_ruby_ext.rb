require "my_ruby_ext/my_ruby_ext"

module MyRubyExt
  def self.hello(name)
    MyHelpers.c_hello(name)
  end

  def self.square(value)
    MyHelpers.c_square(value)
  end
end
