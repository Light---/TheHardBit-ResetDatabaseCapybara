# Pre-requistites - Gems

Add the following gems:

```ruby
gem 'activerecord'
gem 'tiny_tds'
gem 'activerecord-sqlserver-adapter'
```
then run `bundle`

#Pre-requistites - Models

Create a Models folder
Add a .rb to Models folder

This file will contain:
```ruby
    require "active_record"
```

```ruby
module Models
  class Application < ActiveRecord::Base
    self.table_name = 'Applications'
    self.primary_key = 'ApplicationID'
  end
end
```

# Create connection to Database
Copy database.yml.example file
Add needed information
Rename to database.yml
Input new file into config folder.

# Connection to Database in spec_helper.rb
```ruby
database_config = YAML::load_file(File.join(__dir__, '..', 'config', 'database.yml'))
ActiveRecord::Base.establish_connection(database_config)
```

#Create update query in sql for code in 'before each test' section
```ruby
 before :example do
    preconfigured_test_application_id = -1
    ::Models::Application.find_by!(ApplicationId: preconfigured_test_application_id)
                         .update_attributes(Status: 87654)
  end
```

# gitignore file
```ruby
config/database.yml
screenshot_*
Thumbs.db
```