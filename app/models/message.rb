class Message < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  validates :content, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end

  def self.unseen_messages_count_for(user)
    joins(trip: { orders: :user })
      .where(seen: false)
      .where.not(user: user)
      .where(orders: { user: user })
      .count
  end
end
