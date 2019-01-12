class EventLogJob < ActiveJob::Base
  queue_as :default

  def perform(event_log)
    event_log = EventLog.new(event_log)
    if event_log.save
      logger.info 'Event log is created successfully'
    else
      logger.warn 'failed creating a Event Log'
    end
  end
end
