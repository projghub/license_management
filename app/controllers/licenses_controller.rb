class LicensesController < ApplicationController
  def create
    @purchase_order = PurchaseOrder.find(params[:purchase_order_id])
    @license = @purchase_order.licenses.build(params[:license])
    @license.license_status_id = 1

    if @license.save
      redirect_to purchase_order_path(@license.purchase_order_id), notice: 'Successfully created.'
    else
      redirect_to purchase_order_path(@license.purchase_order_id), error: 'Failed create.'
    end
  end

  def edit
    @license = License.find(params[:id])
  end

  def update
    @license = License.find(params[:id])

    if @license.update_attributes(params[:license])
      redirect_to purchase_order_path(@license.purchase_order_id), notice: 'Successfully updated.'
    else
      redirect_to purchase_order_path(@license.purchase_order_id), notice: 'Failed update.'
    end
  end

  def destroy
    @license = License.find(params[:id])
    @license.destroy
    redirect_to @license, notice: 'Successfully deleted.'
  end

  def proposal
    @license = License.new
  end
end
