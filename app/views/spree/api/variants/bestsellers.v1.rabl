node(:count) { @bestsellers.length }

child(@bestsellers => :variants) do
  extends "spree/api/variants/variant_small"
end
