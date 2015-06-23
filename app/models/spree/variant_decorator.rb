module Spree
  Variant.class_eval do
    scope :bestsellers, lambda {
      joins(:orders)
        .select("spree_variants.*, count(spree_orders.id) as order_count")
        .includes(:images, :default_price, product: [classifications: :taxon])
        .group("spree_variants.id")
        .order("order_count DESC")
        .limit(10)
    }
  end
end
