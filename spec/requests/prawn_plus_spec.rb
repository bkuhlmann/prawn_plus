require "spec_helper"

describe PrawnPlus do
  it "loads Prawn by default" do
    defined?(Prawn).should == "constant"
  end
end
