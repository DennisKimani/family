class Clan < ActiveRecord::Base
  has_many :members

  validates :name, :presence => true
  validates :quote, :presence => true
end
