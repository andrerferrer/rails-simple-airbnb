class Flat < ApplicationRecord
  ATTRIBUTES =
    %w[
      name
      address
      description
      price_per_night
      number_of_guests
    ].freeze
end
