require 'active_record'
#
class Container < ActiveRecord::Base
  has_many :rows
  # has_many :panels, through: :rows
  # has_many :pageheaders, through: :rows
end
