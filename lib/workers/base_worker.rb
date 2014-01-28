module Workers
  class QueueNotImplementedError < NotImplementedError
  end

  class BaseWorker
    include Sidekiq::Worker
    include Sidekiq::Benchmark::Worker
    sidekiq_options backtrace: true

    def self.defer(job)
      perform_async(job.id)
    end

    def self.perform(id)
      instance = self.new
      instance.perform(id)
    end

    def self.queue(name = nil)
      sidekiq_options(queue: name) if name
      @queue ||= name
    end

    def self.retry_count(count = nil)
      sidekiq_options(retry: count) if count
      @retry_count ||= count
    end
  end
end
