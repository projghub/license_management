class ProductVersionsController < ApplicationController
  def index
    @q = ProductVersion.search(params[:q])
    @product_versions = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])

  respond_to do |format|
    format.html
    format.json { render :json => @product_versions }
  end

  end

  def new
    @product_version = ProductVersion.new
  end

  def create
    @product_version = ProductVersion.new(params[:product_version])

    if @product_version.save
      redirect_to @product_version, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @product_version = ProductVersion.find(params[:id])
  end

  def show
    @product_version = ProductVersion.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @product_version }
    end
  end

  def update
    @product_version = ProductVersion.find(params[:id])

    if @product_version.update_attributes(params[:product_version])
      redirect_to @product_version, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @product_version = ProductVersion.find(params[:id])
    @product_version.destroy
    redirect_to @product_version, notice: 'Successfully deleted.'
  end
end
