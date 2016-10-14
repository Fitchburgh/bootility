require 'active_record'
#
class Row < ActiveRecord::Base
  has_many :panels
  has_many :panel_specs, through: :panels

  has_many :pageheaders
  has_many :pageheader_specs, through: :pageheaders

  belongs_to :container

end
