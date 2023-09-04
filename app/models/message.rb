class Message < ApplicationRecord
  belongs_to :trip
  belongs_to :user

  def sender?(user)
    self.user == user
  end
end
