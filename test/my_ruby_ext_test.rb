require "minitest/autorun"
require "my_ruby_ext"

class TestMyRubyExt < Minitest::Test
  def test_hello_method
    assert_equal "Hello Juan C.", MyRubyExt.hello("Juan C.")
  end

  def test_square_method
    assert_equal 81, MyRubyExt.square(9)
  end
end
