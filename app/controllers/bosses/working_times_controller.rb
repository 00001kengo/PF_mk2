class Bosses::WorkingTimesController < ApplicationController
  
  def new #上司のみ勤務時間の作成
    @working_time = WorkingTime.new
  end

  def create
    @working_time = WorkingTime.new(working_time_params)
    @working_time.worker_id = params[:worker_id]
    @working_time.save!
    redirect_to bosses_workers_path
  end
  
  def edit #上司のみ編
    @working_time = WorkingTime.find_by(id: params[:id])

  end

  def update
    working_time = WorkingTime.find_by(id: params[:id])
    working_time.update(working_time_params)
    redirect_to bosses_worker_path(working_time.worker_id)
  end
  
end
