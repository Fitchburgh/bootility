require_relative 'models/container'
require_relative 'models/panel'
require_relative 'models/pageheader_spec'
require_relative 'models/pageheader'
require_relative 'models/panel_spec'
require_relative 'models/row'
require_relative 'models/user'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

PanelSpec.!create(
  column_width: 6,
  offset: 3,
  keyword: 'Test'
)

PageheaderSpec.!create(
  header_size: 1,
  offset: 1,
  keyword: 'Test'
)

Panel.create!(
  div_row: 1,
  keyword: 'Test'
)

Pageheader.create!(
  div_row: 1,
  keyword: 'Test'
)

Row.create!(
  container: 1,
  keyword: 'Testing a keyword',
)

Container.create!(
  user: 1,
  keyword: 'Test'
)

User.create!(
  username: 'fitchburgh',
  password: 'ironyard'
)
# ActiveRecord::Base.connection.close
