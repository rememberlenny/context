class Story < ActiveRecord::Base
  has_one :topic
  belongs_to :user, dependent: :destroy
end
