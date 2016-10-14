require 'active_record'
#
class CreatePanelSpecs < ActiveRecord::Migration[5.0]
  def up
    create_table :panel_specs do |t|
      t.integer :column_width
      t.integer :offset
      t.string :color, null: false, default: 'panel-default'
      t.boolean :header, null: false, default: false
      t.boolean :footer, null: false, default: false
      t.string :keyword
    end
  end

  def down
    drop_table :panel_specs
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreatePanelSpecs.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
