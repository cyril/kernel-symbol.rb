# frozen_string_literal: true

# The Kernel module.
module Kernel
  # rubocop:disable Naming/MethodName

  # @note Converts _arg_ to a string and then converts the string to a symbol.
  #
  # @param arg [#object_id] An object.
  #
  # @return [Symbol] Returns _arg_ as a `Symbol`.
  #
  # @raise [ArgumentError, TypeError] Not conform with symbol representation.
  #
  # @example
  #   require "kernel/symbol"
  #
  #   Symbol(:foo)            # => :foo
  #   Symbol("foo")           # => :foo
  #   Symbol(true)            # => :true
  #   Symbol(42)              # => :"42"
  #   Symbol(BasicObject.new) # TypeError (can't convert BasicObject into String)
  def Symbol(arg)
    :"#{String(arg)}"
  end
  # rubocop:enable Naming/MethodName
end
