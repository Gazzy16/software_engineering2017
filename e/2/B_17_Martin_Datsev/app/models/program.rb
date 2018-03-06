class Program < ApplicationRecord
    validates :thread_id, inclusion: { in: ThreadObj.all.map { |e| e.thread_id },
        message: "thread %{value} is does not exist" }
end
