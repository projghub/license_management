class DeliveryTypesController < ApplicationController
  def index
    @q = DeliveryType.search(params[:q])
    @delivery_types = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @delivery_type = DeliveryType.new
  end

  def create
    @delivery_type = DeliveryType.new(params[:delivery_type])

    if @delivery_type.save
      redirect_to @delivery_type, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @delivery_type = DeliveryType.find(params[:id])
  end

  def show
    @delivery_type = DeliveryType.find(params[:id])
  end

  def update
    @delivery_type = DeliveryType.find(params[:id])

    if @delivery_type.update_attributes(params[:delivery_type])
      redirect_to @delivery_type, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @delivery_type = DeliveryType.find(params[:id])
    @delivery_type.destroy
    redirect_to @delivery_type, notice: 'Successfully deleted.'
  end
end
