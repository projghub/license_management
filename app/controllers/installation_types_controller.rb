class GroupsController < ApplicationController
  def index
    @q = Group.search(params[:q])
    @groups = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])

    if @group.save
      redirect_to @group, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def show
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    if @group.update_attributes(params[:group])
      redirect_to @group, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to @group, notice: 'Successfully deleted.'
  end
end
