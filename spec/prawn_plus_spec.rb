require "spec_helper"

RSpec.describe PrawnPlus do
  it "loads Prawn by default" do
    expect(defined?(Prawn)).to eq("constant")
  end
end
