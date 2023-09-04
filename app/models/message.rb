class Message < ApplicationRecord
  belongs_to :trip
  belongs_to :user

  def sender?(user)
    if self.user == user
      return true
    else
      return false
    end
  end
end
