# `Kernel#Symbol`

Returns a `Symbol` based on the given argument.

## Status

[![Version](https://img.shields.io/github/v/tag/cyril/kernel-symbol.rb?label=Version&logo=github)](https://github.com/cyril/kernel-symbol.rb/tags)
[![Yard documentation](https://img.shields.io/badge/Yard-documentation-blue.svg?logo=github)](https://rubydoc.info/github/cyril/kernel-symbol.rb/main)
[![Ruby](https://github.com/cyril/kernel-symbol.rb/workflows/Ruby/badge.svg?branch=main)](https://github.com/cyril/kernel-symbol.rb/actions?query=workflow%3Aruby+branch%3Amain)
[![License](https://img.shields.io/github/license/cyril/kernel-symbol.rb?label=License&logo=github)](https://github.com/cyril/kernel-symbol.rb/raw/main/LICENSE.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "kernel-symbol"
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install kernel-symbol
```

## Usage

If the argument is a symbol, returns the symbol.
If the argument is not a symbol, tries to convert to a symbol.

In all other cases, returns an error.

### Example

```ruby
require "kernel/symbol"

Symbol(:foo)            # => :foo
Symbol("foo")           # => :foo
Symbol(true)            # => :true
Symbol(42)              # => :"42"
Symbol(BasicObject.new) # TypeError (can't convert BasicObject into String)
```

### Note

The `#Symbol` method could be used similarly to the methods already present in the `Kernel` module:

* `#Array`
* `#Complex`
* `#Float`
* `#Hash`
* `#Integer`
* `#Rational`
* `#String`

### Warning

The `Kernel` module is included in the `Object` class, so by loading this library, the `#Symbol` method will be available in every Ruby object.

## Versioning

`Kernel#Symbol` uses [Semantic Versioning 2.0.0](https://semver.org/)

## See also

* [`kernel-boolean`](https://github.com/cyril/kernel-boolean.rb): Returns a `Boolean` based on the given argument.

## License

The [gem](https://rubygems.org/gems/kernel-symbol) is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
