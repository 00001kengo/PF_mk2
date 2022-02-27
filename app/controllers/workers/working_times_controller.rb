class Workers::WorkingTimesController < ApplicationController

  def index
    @working_times = current_worker.working_times
  end

  def attendance
    #open_atにげんざい時刻を入れる
    # WorkingTime.find_by(worker_id: params[:worker_id], start_time: 今日)
#    @working_time = WorkingTime.find(params[:id])
    @workingtime.open_at = DateTime.now
    @workingtime.save
    # @workingtime.update(open_at: DateTime.now, close_at: xxx)
    redirect_to request.referer
  end

  def leaving
    #end?atに現在時刻を入れる
    # @working_time = WorkingTime.find(params[:id])
    @workingtime.end_at = DateTime.now
    @workingtime.save
    
    redirect_to request.referer
  end


  private

  def working_time_params
    params.require(:working_time).permit(:start_at, :finish_at, :open_at, :end_at)
  end
end
