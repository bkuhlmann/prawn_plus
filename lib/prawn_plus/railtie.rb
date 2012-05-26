module PrawnPlus
  class Railtie < Rails::Railtie
    initializer "prawn_plus.initialize" do
      Mime::Type.register("application/pdf", :pdf) unless Mime::Type.lookup_by_extension :pdf
      ActionView::Template.register_template_handler :prawn, PrawnPlus::TemplateHandlers::Prawn.new
    end
  end
end
