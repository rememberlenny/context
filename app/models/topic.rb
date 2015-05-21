class Topic < ActiveRecord::Base
  has_many :stories
  validates :name, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
end
