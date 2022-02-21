class Workers::WorkingTimesController < ApplicationController

  def index
    @working_times = current_worker.working_times
  end

  def attendance
    #open_atにげんざい時刻を入れる
    @working_time = WorkingTime.find(params[:id])
    @working_time.open_at = DateTime.now
    @working_time.update
    redirect_to request.referer
  end

  def leaving
    #end?atに現在時刻を入れる
    @working_time = WorkingTime.find(params[:id])
    @working_time.end_at = DateTime.now
    @working_time.update
    redirect_to request.referer
  end


  private

  def working_time_params
    params.require(:working_time).permit(:start_at, :finish_at, :open_at, :end_at)
  end
end
