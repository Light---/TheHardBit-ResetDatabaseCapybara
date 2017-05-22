require "active_record"

module Models
  class Application < ActiveRecord::Base
    self.table_name = 'Applications'
    self.primary_key = 'ApplicationID'
  end
end