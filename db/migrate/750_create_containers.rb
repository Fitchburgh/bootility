require 'active_record'
#
class CreateContainers < ActiveRecord::Migration[5.0]
  def up
    create_table :containers do |t|
      t.references :row, index: true, foreign_key: true
      t.integer :user
      t.string :keyword
    end
  end

  def down
    drop_table :containers
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateContainers.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
