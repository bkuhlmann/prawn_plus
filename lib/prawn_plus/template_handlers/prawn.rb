# frozen_string_literal: true

module PrawnPlus
  module TemplateHandlers
    # Prawn template renderer. Assumes template will reference a _pdf_ (a.k.a. Prawn::Document).
    class Prawn
      def call(_template, source) = "pdf = ::Prawn::Document.new;" + source + ";pdf.render;"
    end
  end
end
