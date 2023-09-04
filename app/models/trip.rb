class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :farm
  has_many :orders, dependent: :destroy
  has_many :messages

  def label_text
    return "<div class='carpool-card'>
              <h3>#{self.date.strftime('%B %d %l:%M %p')}</h3>
              <div class='carpool-info'>
               <p>
                <span class='black-text'>#{self.user.electric_car ? "Electric" : "Gas"}</span> car,
                <span class='black-text'>#{seat} #{'seat'.pluralize(seat)}</span> available </br>
                Driver : <span class='black-text'>#{self.user.first_name.capitalize}</span>
              </p>
              </div>
            </div>".html_safe
  end
end
# <span class='black-text'>#{self.user.distance_to([current_user.latitude, current_user.longitude]).round}</span> km away from you
