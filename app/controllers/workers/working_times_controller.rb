class Workers::WorkingTimesController < ApplicationController

  def new #上司のみ勤務時間の作成
    @working_time = WorkingTime.new
  end

  def create
    @working_time = WorkingTime.new(working_time_params)
    @working_time.worker_id = params[:worker_id]
    @working_time.save!
    redirect_to bosses_workers_path
  end

  def index #上司、労働者ともに見る事ができる
    @worker = Worker.find(params[:id])
    @working_time = WorkingTime.find_by(id: params[:id])
  end

  def edit #上司のみ編集できる
    #日付毎に引っ張れてる？
    @working_time = WorkingTime.find_by(id: params[:id])

  end

  def update
    working_time = WorkingTime.find_by(id: params[:id])
    working_time.update(working_time_params)
    redirect_to bosses_worker_path(working_time.worker_id)
  end

  def destrroy

  end

  private

  def working_time_params
    params.require(:working_time).permit(:start_at, :finish_at, :open_at, :end_at)
  end
end
