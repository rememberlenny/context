class Story < ActiveRecord::Base
  has_one :topic

  belongs_to :user, dependent: :destroy
  validates :topic_id, presence: true
  validates :name, presence: true,
                     length: { maximum: 255 },
                 uniqueness: { case_sensitive: false }
end
