require 'active_record'
#
class CreatePageheaderSpecs < ActiveRecord::Migration[5.0]
  def up
    create_table :pageheader_specs do |t|
      t.integer :header_size
      t.integer :offset
      t.string :color, null: false, default: 'panel-default'
      t.string :keyword
    end
  end

  def down
    drop_table :pageheader_specs
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreatePageheaderSpecs.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
