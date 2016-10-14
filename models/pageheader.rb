require 'active_record'
#
class Pageheader < ActiveRecord::Base
  has_one :pageheader_spec
  belongs_to :row
end
