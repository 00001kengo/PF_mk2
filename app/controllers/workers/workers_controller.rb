class Workers::WorkersController < ApplicationController

def show
  @working_time = current_worker.working_times
  if @working_time.blank?
    @working_time = WorkingTime.new
    
  end
  
end


end
