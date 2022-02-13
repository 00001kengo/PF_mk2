class Bosses::WorkersController < ApplicationController

  def index
    @workers = Worker.all
  end

  private
  def worker_params
    params.require(:worker).permit(:last_name, :first_name, :current_sign_in_at, :last_sign_in_at)
  end
end
