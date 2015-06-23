Spree::Api::VariantsController.class_eval do
  def bestsellers
    @bestsellers = Spree::Variant.bestsellers.ransack(params[:q]).result
    @bestsellers = @bestsellers.distinct.page(params[:page]).per(params[:per_page])
    respond_with(@bestsellers)
  end
end
