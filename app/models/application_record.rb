class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  # before_action :authentificate_user!
end
