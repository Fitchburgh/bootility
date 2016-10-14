require 'active_record'
#
class CreateRows < ActiveRecord::Migration[5.0]
  def up
    create_table :rows do |t|
      t.references :panel, foreign_key: true
      t.references :pageheader, foreign_key: true
      # t.references :panel, index: true, foreign_key: true
      t.integer :container
      t.string :keyword
    end
  end

  def down
    drop_table :rows
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateRows.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
