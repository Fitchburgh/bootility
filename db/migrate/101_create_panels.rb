require 'active_record'
#
class CreatePanels < ActiveRecord::Migration[5.0]
  def up
    create_table :panels do |t|
      t.references :panel_spec, foreign_key: true
      t.integer :div_row
      t.string :keyword
    end
  end

  def down
    drop_table :panels
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreatePanels.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
