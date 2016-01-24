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
      "6.3.0"
    end

    def self.label_version
      "#{label} #{version}"
    end
  end
end
