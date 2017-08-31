class Clan < ActiveRecord::Base
  validates :name, :presence => true
  validates :quote, :presence => true
end
