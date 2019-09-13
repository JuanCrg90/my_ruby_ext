#include "ruby/ruby.h"
#include "ruby/ruby.h"
#include "library.h"

static VALUE c_hello(VALUE self, VALUE name) {
  Check_Type(name, T_STRING);

  char* pointer_in = RSTRING_PTR(name);
  char* pointer_out = hello_from_library(pointer_in);
  return rb_str_new2(pointer_out);
}

static VALUE c_square(VALUE self, VALUE value) {
  Check_Type(value, T_FIXNUM);

  int number_in = NUM2INT(value);
  int number_out = square_from_library(number_in);
  return INT2NUM(number_out);
}

void Init_my_ruby_ext(void) {
  VALUE MyRubyExt = rb_define_module("MyRubyExt");
  VALUE MyHelpers = rb_define_class_under(MyRubyExt, "MyHelpers", rb_cObject);

  rb_define_singleton_method(MyHelpers, "c_hello", c_hello, 1);
  rb_define_singleton_method(MyHelpers, "c_square", c_square, 1);
}
