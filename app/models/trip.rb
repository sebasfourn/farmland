class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :farm
  has_many :orders, dependent: :destroy
  has_many :messages

  def label_text
    return "<div class='red'>#{self.date.strftime('%B %d %l:%M %p')} || Pickup point:  #{self.address} || #{seat} #{'seat'.pluralize(seat)}.</div>".html_safe
  end
end
