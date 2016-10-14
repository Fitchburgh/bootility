require 'active_record'
#
class PanelSpec < ActiveRecord::Base
  belongs_to :panel

  after_initialize :defaults, unless: :persisted?

  def defaults
    self.offset ||= 0
    self.has_title ||= false
    self.has_footer ||= false
  end
end
