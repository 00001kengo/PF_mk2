class Workers::RequestsController < ApplicationController

  #申請ページ
  def new
    @request = Request.new
    
  end

  #申請機能
  def create
    request = Request.new(request_params)
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
