# frozen_string_literal: true

module PrawnPlus
  module TemplateHandlers
    # Renderer for a Prawn template. Assumes the template will reference a _pdf_ (a.k.a.
    # Prawn:Document) instance.
    class Prawn
      def call _template, source
        "pdf = ::Prawn::Document.new;" + source + ";pdf.render;"
      end
    end
  end
end
