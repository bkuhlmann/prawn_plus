module PrawnPlus
  module TemplateHandlers
    class Prawn
      # Renders a Prawn template. It is assumed that the template will reference a
      # _pdf_ (a.k.a. Prawn:Document) instance.
      # * +template+ - Required. The template to render to a PDF.
      # * +options+ - Optional. The template options. Default: {}.
      def call template, options = {}
        "pdf = ::Prawn::Document.new;" + template.source + ";pdf.render;"
      end
    end
  end
end
