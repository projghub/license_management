class LicenseStatusesController < ApplicationController
  def index
    @q = LicenseStatus.search(params[:q])
    @license_statuses = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @license_status = LicenseStatus.new
  end

  def create
    @license_status = LicenseStatus.new(params[:license_status])

    if @license_status.save
      redirect_to @license_status, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @license_status = LicenseStatus.find(params[:id])
  end

  def show
    @license_status = LicenseStatus.find(params[:id])
  end

  def update
    @license_status = LicenseStatus.find(params[:id])

    if @license_status.update_attributes(params[:license_status])
      redirect_to @license_status, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @license_status = LicenseStatus.find(params[:id])
    @license_status.destroy
    redirect_to @license_status, notice: 'Successfully deleted.'
  end
end
