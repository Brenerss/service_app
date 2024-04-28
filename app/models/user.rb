class User < ApplicationRecord
  has_secure_password
  has_one :user_metric, dependent: :destroy
end
