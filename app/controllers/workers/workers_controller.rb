class Workers::WorkersController < ApplicationController

def show

  @worker = Worker.find(params[:id])
    date = DateTime.now
    today = date.strftime("%Y-%m-%d").split('-')
    day_start = DateTime.new(today[0].to_i, today[1].to_i, today[2].to_i, 0,0,0)
    day_end = DateTime.new(today[0].to_i, today[1].to_i, today[2].to_i, 23,59,59)
    @working_time = @worker.working_times.find_by(start_at:day_start..day_end)
end


end
