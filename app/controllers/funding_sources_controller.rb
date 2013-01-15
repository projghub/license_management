class FundingSourcesController < ApplicationController
  def index
    @q = FundingSource.search(params[:q])
    @funding_sources = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @funding_source = FundingSource.new
  end

  def create
    @funding_source = FundingSource.new(params[:funding_source])

    if @funding_source.save
      redirect_to @funding_source, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @funding_source = FundingSource.find(params[:id])
  end

  def show
    @funding_source = FundingSource.find(params[:id])
  end

  def update
    @funding_source = FundingSource.find(params[:id])

    if @funding_source.update_attributes(params[:funding_source])
      redirect_to @funding_source, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @funding_source = FundingSource.find(params[:id])
    @funding_source.destroy
    redirect_to @funding_source, notice: 'Successfully deleted.'
  end
end
