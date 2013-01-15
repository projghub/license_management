class AgreementStatusesController < ApplicationController
  def index
    @q = AgreementStatus.search(params[:q])
    @agreement_statuses = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @agreement_status = AgreementStatus.new
  end

  def create
    @agreement_status = AgreementStatus.new(params[:agreement_status])

    if @agreement_status.save
      redirect_to @agreement_status, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @agreement_status = AgreementStatus.find(params[:id])
  end

  def show
    @agreement_status = AgreementStatus.find(params[:id])
  end

  def update
    @agreement_status = AgreementStatus.find(params[:id])

    if @agreement_status.update_attributes(params[:agreement_status])
      redirect_to @agreement_status, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @agreement_status = AgreementStatus.find(params[:id])
    @agreement_status.destroy
    redirect_to @agreement_status, notice: 'Successfully deleted.'
  end
end
