class Member   < ActiveRecord::Base
  belongs_to :clan

  validates :name, :presence => true
  validates :married, :presence => true
  validates :social_media, :presence => true
  validates :date_of_birth, :presence => true
  validates :place_of_birth, :presence => true
  validates :email, :presence => true
  validates :location, :presence => true
end
