class Bosses::WorkersController < ApplicationController

  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
    date = DateTime.now
    today = date.strftime("%Y-%m-%d").split('-')
    day_start = DateTime.new(today[0].to_i, today[1].to_i, today[2].to_i, 0,0,0)
    day_end = DateTime.new(today[0].to_i, today[1].to_i, today[2].to_i, 23,59,59)
    #当日のデータから勤務データを引張る
    @working_time = @worker.working_times.find_by(start_at:day_start..day_end)

  end

  

  private
  def worker_params
    params.require(:worker).permit(:last_name, :first_name, :current_sign_in_at, :last_sign_in_at)
  end

  def working_time_params
    params.require(:working_time).permit(:start_at, :finish_at)
  end
end
