# frozen_string_literal: true

require "simplecov"
SimpleCov.start

require "bundler/setup"
require "r_spec"
require_relative File.join("..", "lib", "kernel")
