class PlatformsController < ApplicationController
  def index
    @q = Platform.search(params[:q])
    @platforms = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.new(params[:platform])

    if @platform.save
      redirect_to @platform, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @platform = Platform.find(params[:id])
  end

  def show
    @platform = Platform.find(params[:id])
  end

  def update
    @platform = Platform.find(params[:id])

    if @platform.update_attributes(params[:platform])
      redirect_to @platform, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @platform = Platform.find(params[:id])
    @platform.destroy
    redirect_to @platform, notice: 'Successfully deleted.'
  end
end
