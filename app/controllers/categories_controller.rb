class CategoriesController < ApplicationController
  def show
    if params[:id] == 'new'
      @category = Category.new
      @products = [] # You might not need this, as it's a new category
      render :new
    else
      @category = Category.find(params[:id])
      @products = @category.products.order(created_at: :desc)
    end
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category, notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end  

end