attributes *variant_attributes

child(:images => :images) { extends "spree/api/images/show" }

child :product do
  child :classifications => :taxons do
    attributes :taxon_id, :position
    child(:taxon) do
      extends "spree/api/taxons/taxon_small"
    end
  end
end
