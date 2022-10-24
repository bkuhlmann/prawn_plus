# frozen_string_literal: true

require "rails_helper"

RSpec.describe "/unicode" do
  describe "#show" do
    it "renders PDF for multiple languages" do
      get unicode_path, headers: {accept: "application/pdf"}
      expect(response).to have_http_status(:ok)
    end
  end
end
