module Spree
  module V2
    module Storefront
      class CartSerializer < BaseSerializer
        set_type :cart

        attributes :number, :item_total, :total, :ship_total, :adjustment_total, :created_at,
                   :updated_at, :included_tax_total, :additional_tax_total, :display_additional_tax_total,
                   :display_included_tax_total, :tax_total, :currency, :state, :token, :email,
                   :display_item_total, :display_ship_total, :display_adjustment_total, :display_tax_total,
                   :item_count, :special_instructions, :display_total

        has_many   :line_items
        has_many   :variants
        has_many   :promotions

        belongs_to :user
      end
    end
  end
end
