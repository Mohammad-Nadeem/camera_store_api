module V1
  class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  def index
    # get categories
    @categories = Category.all.paginate(page: params[:page], per_page: 20)
    json_response(@categories)
  end

  # GET /categories/:id
  def show
    json_response(@category)
  end

  # POST /categories
  def create
    # create categories
    @category = Category.new(category_params)
    if @category.save
      json_response(@category, :created)
    end
  end

  # PUT /categories/:id
  def update
    @category.update(category_params)
    head :no_content
  end

  # DELETE /categories/:id
  def destroy
    @category.destroy
    head :no_content
  end

  private

  # remove `created_by` from list of permitted parameters
  def category_params
    params.permit(:title, :cat_type, :model)
  end

  def set_category
    @category = Category.find(params[:id])
  end
  end
end
