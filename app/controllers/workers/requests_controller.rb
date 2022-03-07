class Workers::RequestsController < ApplicationController
  # include Language

  #申請ページ
  def new
    @working_time = WorkingTime.find(params[:working_time_id])
    @request = Request.new

  end

  #申請機能
  def create
    request = Request.new(request_params)
    request.score = Request.get_data(request_params[:job_description])
    request.working_time_id = params[:working_time_id]
    request.save
    redirect_to workers_worker_working_times_path(current_worker.id)

  end

  #申請一覧ページ
  def index
    #@requests =current_worker.

  end

  #申請詳細ページ
  def show

  end

  private
  def request_params
    params.require(:request).permit(:start_at, :finish_at, :job_description, :status)
  end
end
