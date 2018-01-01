# frozen_string_literal: true

module PrawnPlus
  # Gem identity information.
  module Identity
    def self.name
      "prawn_plus"
    end

    def self.label
      "Prawn+"
    end

    def self.version
      "8.0.0"
    end

    def self.version_label
      "#{label} #{version}"
    end
  end
end
