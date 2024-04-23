class User < ApplicationRecord
  has_one :user_metric, dependent: :destroy
end
