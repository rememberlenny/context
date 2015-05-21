class Topic < ActiveRecord::Base
  has_many :stories
end
