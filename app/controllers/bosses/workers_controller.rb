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
    #週刊勤務時間
    @working_time_week = @worker.working_times.where(start_at:date.beginning_of_week..date.end_of_week)
    @week_time = (@working_time_week.sum(:over_at)) / 3600
    #月間勤務時間引っ張る
    @working_time_month = @worker.working_times.where(start_at:date.beginning_of_month..date.end_of_month)
    @month_time = (@working_time_month.sum(:over_at)) / 3600
  end



  private
  def worker_params
    params.require(:worker).permit(:last_name, :first_name, :current_sign_in_at, :last_sign_in_at)
  end

  def working_time_params
    params.require(:working_time).permit(:start_at, :finish_at)
  end
end
