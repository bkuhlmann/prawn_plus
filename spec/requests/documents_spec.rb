# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Rails Requests" do
  include Dummy::Application.routes.url_helpers
  include Capybara::DSL

  it "registers PDF as a MIME type" do
    expect(Mime::Type.lookup_by_extension(:pdf)).to eq("application/pdf")
  end

  it "registers the prawn file extension as a template handler" do
    expect(ActionView::Template::Handlers.extensions).to include(:prawn)
  end

  it "answers a PDF file" do
    visit documents_path
    click_link "PDF"
    expect(page.response_headers["Content-Type"]).to match(%r(application\/pdf))
  end
end
