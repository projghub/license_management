class PurchaseOrdersController < ApplicationController
  def index
    @q = PurchaseOrder.search(params[:q])
    @purchase_orders = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @purchase_order = PurchaseOrder.new
  end

  def create
    @purchase_order = PurchaseOrder.new(params[:purchase_order])

    if @purchase_order.save
      redirect_to @purchase_order, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @purchase_order = PurchaseOrder.find(params[:id])
  end

  def show
    @purchase_order = PurchaseOrder.find(params[:id])
  end

  def update
    @purchase_order = PurchaseOrder.find(params[:id])

    if @purchase_order.update_attributes(params[:purchase_order])
      redirect_to @purchase_order, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @purchase_order = PurchaseOrder.find(params[:id])
    @purchase_order.destroy
    redirect_to @purchase_order, notice: 'Successfully deleted.'
  end
end
