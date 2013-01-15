class LicenseTypesController < ApplicationController
  def index
    @q = LicenseType.search(params[:q])
    @license_types = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @license_type = LicenseType.new
  end

  def create
    @license_type = LicenseType.new(params[:license_type])

    if @license_type.save
      redirect_to @license_type, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @license_type = LicenseType.find(params[:id])
  end

  def show
    @license_type = LicenseType.find(params[:id])
  end

  def update
    @license_type = LicenseType.find(params[:id])

    if @license_type.update_attributes(params[:license_type])
      redirect_to @license_type, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @license_type = LicenseType.find(params[:id])
    @license_type.destroy
    redirect_to @license_type, notice: 'Successfully deleted.'
  end
end
