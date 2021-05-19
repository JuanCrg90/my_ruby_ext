# Ruby Extension Using MKMF

## Motivation

This example shows you how to encapsulate a simple C library to use it inside a Ruby Module. This approach uses [mkmf.rb](https://ruby-doc.org/stdlib-2.0.0/libdoc/mkmf/rdoc/MakeMakefile.html) that helps to create a Makefile that will correctly compile and link the C extension to ruby and a third-party library. The [ruby.h](https://github.com/ruby/ruby/blob/master/include/ruby/ruby.h) header is included in the `my_ruby_ext.c` file that helps to encapsulate the existing library to use it in Ruby after compiling it.

## How to run this
Install dependencies and compile the C library:

```bash
bin/setup
```

## Example of use

Start an irb console with the library loaded
```bash
$ bin/console
```

```ruby
# calling the hello method
MyRubyExt.hello('JuanCrg90')

# Calling the square method
MyRubyExt.square(5)
```

## Contributing
Bug reports and pull requests are welcome!
