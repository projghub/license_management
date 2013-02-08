class EventsController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.js { Event.all.to_json }
    end
  end

  def new
    @license_status = LicenseEvent.new
  end

  def create
    @license_status = LicenseEvent.new(params[:license_status])

    if @license_status.save
      redirect_to @license_status, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @license_status = LicenseEvent.find(params[:id])
  end

  def show
    @license_status = LicenseEvent.find(params[:id])
  end

  def update
    @license_status = LicenseEvent.find(params[:id])

    if @license_status.update_attributes(params[:license_status])
      redirect_to @license_status, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @license_status = LicenseEvent.find(params[:id])
    @license_status.destroy
  end
end
