class Review < ActiveRecord::Base
  has_one :wisata
  belongs_to :user
end
