require 'active_record'
#
class Panel < ActiveRecord::Base
  has_one :panel_spec
  belongs_to :row
end
