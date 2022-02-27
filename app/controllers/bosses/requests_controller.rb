class Bosses::RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    request = Request.find(params[:id])
    if request.update(request_params) && request.confirmed?
      request.working_time.over_at = request.finish_at - request.start_at
      request.working_time.save!
    end
    #byebug
    redirect_to bosses_requests_index_path
  end

  private
  def request_params
    params.require(:request).permit(:start_at, :finish_at, :job_description, :status)
  end

end
