class Asset < ActiveRecord::Base
  validates :asset_tag, :serial_number, :uniqueness => true
  validates :asset_tag, :presence => true
end
