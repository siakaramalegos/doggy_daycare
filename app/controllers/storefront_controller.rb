class StorefrontController < ApplicationController
  def all_items
    # TODO: Add logic to handle when cat_id returns empty products
    # Essentially, return all products and cats with a notice.
    if params[:cat_id]
      @category = Category.find(params[:cat_id])
      @products = Product.where(category_id: params[:cat_id])
    else
      @products = Product.all
    end
  end
end
