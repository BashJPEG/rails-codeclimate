class User < ApplicationRecord
  include AASM

  aasm requires_lock: true, column: 'status' do
    state :start, initial: true
    state :executing
    state :finished

    event :go do
      transitions from: :start, to: :executing
    end

    event :stop do
      transitions from: :executing, to: :finished
    end
  end
end


# ActiveRecord::Base.transaction do
#   User.first.lock!
#   sleep 10
#   User.first.go!
# end

# User.where(status: 'start').each {|u| u.go! }
