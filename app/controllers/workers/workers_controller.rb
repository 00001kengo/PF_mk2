class Workers::WorkersController < ApplicationController

def show
  @working_time = current_worker.working_time
  
end


end
