class AgreementsController < ApplicationController
  def index
    @q = Agreement.search(params[:q])
    @agreements = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @agreement = Agreement.new
  end

  def create
    @agreement = Agreement.new(params[:agreement])

    if @agreement.save
      redirect_to @agreement, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @agreement = Agreement.find(params[:id])
  end

  def show
    @agreement = Agreement.find(params[:id])
  end

  def update
    @agreement = Agreement.find(params[:id])

    if @agreement.update_attributes(params[:agreement])
      redirect_to @agreement, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @agreement = Agreement.find(params[:id])
    @agreement.destroy
    redirect_to @agreement, notice: 'Successfully deleted.'
  end
end
