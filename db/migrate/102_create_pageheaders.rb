require 'active_record'
#
class CreatePageheaders < ActiveRecord::Migration[5.0]
  def up
    create_table :pageheaders do |t|
      t.references :pageheader_spec, foreign_key: true
      t.integer :div_row
      t.string :keyword
    end
  end

  def down
    drop_table :pageheaders
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreatePageheaders.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
