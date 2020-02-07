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

  def long_method_2(a, b, c, d, e, f, g)



    eval("puts 'test'")   
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")         
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")

    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
  end


  def long_method
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")

    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
    eval("puts 'test'")
  end
end


# ActiveRecord::Base.transaction do
#   User.first.lock!
#   sleep 10
#   User.first.go!
# end

# User.where(status: 'start').each {|u| u.go! }
