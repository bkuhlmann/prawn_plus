require "spec_helper"

describe "Rails Requests" do
  include Dummy::Application.routes.url_helpers
  include Capybara::DSL

  it "registers PDF as a MIME type" do
    Mime::Type.lookup_by_extension(:pdf).should == "application/pdf"
  end

  it "registers the prawn file extension as a template handler" do
    ActionView::Template::Handlers.extensions.should include(:prawn)
  end

  it "answers a PDF file" do
    visit documents_path
    click_link "PDF"
    page.response_headers["Content-Type"].should =~ /application\/pdf/
  end
end
