class ServerTypesController < ApplicationController
  def index
    @q = ServerType.search(params[:q])
    @server_types = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @server_type = ServerType.new
  end

  def create
    @server_type = ServerType.new(params[:server_type])

    if @server_type.save
      redirect_to @server_type, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @server_type = ServerType.find(params[:id])
  end

  def show
    @server_type = ServerType.find(params[:id])
  end

  def update
    @server_type = ServerType.find(params[:id])

    if @server_type.update_attributes(params[:server_type])
      redirect_to @server_type, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @server_type = ServerType.find(params[:id])
    @server_type.destroy
    redirect_to @server_type, notice: 'Successfully deleted.'
  end
end
