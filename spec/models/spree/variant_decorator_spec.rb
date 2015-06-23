require "rails_helper"

describe Spree::Variant do
  describe ".bestsellers" do
    def assign_product_to_order(order, product)
      create(:line_item, order: order, variant: product)
    end

    let(:scope) { described_class.bestsellers }
    let(:product1) { create(:base_variant) }
    let(:product2) { create(:base_variant) }
    let(:product3) { create(:base_variant) }

    let(:order1) { create(:order) }
    let(:order2) { create(:order) }
    let(:order3) { create(:order) }

    before do
      assign_product_to_order(order1, product1)
      assign_product_to_order(order2, product1)
      assign_product_to_order(order3, product2)
    end

    it "includes products that have been ordered" do
      expect(scope).to include(product1)
      expect(scope).to include(product2)
    end

    it "excludes products that have not been ordered" do
      expect(scope).not_to include(product3)
    end

    it "returns as first most often ordered product" do
      expect(scope.to_a).to eq [product1, product2]
    end
  end
end
