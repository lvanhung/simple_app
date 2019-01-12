class Api::EventLogsController < ApplicationController

  # Turn of CSRF for CURL testing. comment in/ delete the line in production
  skip_before_action :verify_authenticity_token

  def create
    EventLogJob.perform_later(event_log_params)
    render json: {status: 200, message: 'create event log successfully'}
  end

  private

  def event_log_params
    params.require(:event_log).permit(:event_name, :timestamp)
  end
end
