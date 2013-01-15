class RegionsController < ApplicationController
  def index
    @q = Region.search(params[:q])
    @regions = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(params[:region])

    if @region.save
      redirect_to @region, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @region = Region.find(params[:id])
  end

  def show
    @region = Region.find(params[:id])
  end

  def update
    @region = Region.find(params[:id])

    if @region.update_attributes(params[:region])
      redirect_to @region, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to @region, notice: 'Successfully deleted.'
  end
end
