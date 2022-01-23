# frozen_string_literal: true

require "rails_helper"

RSpec.describe PrawnPlus do
  it "loads Prawn by default" do
    expect(defined?(Prawn)).to eq("constant")
  end
end
