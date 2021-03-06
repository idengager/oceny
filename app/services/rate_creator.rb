class RateCreator
  attr_accessor :submission, :user, :value

  def initialize(submission, user, value)
    self.submission = submission
    self.user = user
    self.value = value
  end

  def call
    rate = Rate.find_or_create_by({
      user: user,
      submission: submission,
      nickname: user.nickname
    })
    rate.update_attribute(:value, value)
    submission.update_average_rate
  end
end
