# frozen_string_literal: true

require_relative "spec_helper"

RSpec.describe Kernel do
  describe "#Symbol" do
    subject do
      Symbol(arg)
    end

    context "when the argument is :foo" do
      let(:arg) { :foo }

      it { is_expected.to be :foo }
    end

    context "when the argument is 'foo'" do
      let(:arg) { "foo" }

      it { is_expected.to be :foo }
    end

    context "when the argument is 42" do
      let(:arg) { 42 }

      it { is_expected.to be :"42" }
    end

    context "when the argument is BasicObject.new" do
      let(:arg) { BasicObject.new }

      it { is_expected.to raise_exception(TypeError) }
    end
  end
end
