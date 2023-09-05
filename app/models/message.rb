class Message < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  validates :content, presence: true

  def sender?(user)
    self.user == user
  end

end
