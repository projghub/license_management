class InstallationTypesController < ApplicationController
  def index
    @q = InstallationType.search(params[:q])
    @installation_types = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @installation_type = InstallationType.new
  end

  def create
    @installation_type = InstallationType.new(params[:installation_type])

    if @installation_type.save
      redirect_to @installation_type, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @installation_type = InstallationType.find(params[:id])
  end

  def show
    @installation_type = InstallationType.find(params[:id])
  end

  def update
    @installation_type = InstallationType.find(params[:id])

    if @installation_type.update_attributes(params[:installation_type])
      redirect_to @installation_type, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @installation_type = InstallationType.find(params[:id])
    @installation_type.destroy
    redirect_to @installation_type, notice: 'Successfully deleted.'
  end
end
