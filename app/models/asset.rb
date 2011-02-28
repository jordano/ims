class Asset < ActiveRecord::Base
  validates :asset_tag, :uniqueness => true
  validates :asset_tag, :presence => true
end
