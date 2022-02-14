class Bosses::WorkersController < ApplicationController

  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
    @working_time = Working_times.find(params[:worker_params])
  end

  def edit
    @worker = Worker.find(params[:id])
    @working_time = Working_times.(worker_params)
  end

  def update
    @working_time = Working_times(worker_params).new
  end

  private
  def worker_params
    params.require(:worker).permit(:last_name, :first_name, :current_sign_in_at, :last_sign_in_at)
  end

  def working_time_params
    params.require(:working_time).permit(:start_at, :finish_at)
  end
end
