# UpdateOrCreate #
## DB utility plugin for ActiveRecord ##
update_or_create allows update_or_create to ActiveRecord.
And allows db:seed extension to Rake.
Very useful when use seeds.rb.

### Install ###
* Add  

```ruby
gem 'update_or_delete_or_create'
```
  to Gemfile.

### Usage ###
* add `require 'update_or_create'` to seeds.rb.
* Model.update_or_create([id: 1, value: 'test'], or etc...])
* When set `{ id: 4, 'delete record !!!' => true },` then record of "id=4" will be deleted.
* Make db/seeds/ext.rb(or etc) are same grammer as seeds.rb,
  then you can extra seed file as `rake db:seed:ext` command.

### System requirement ###
* Ruby 2.0 or later.
* RoR 4.1 or later.

License
----------
Copyright &copy; 2014 Jun’ya Shimoda(JironBach)  
Dual licensed under the [MIT license][MIT] and [GPL license][GPL].  

[Apache]: http://www.apache.org/licenses/LICENSE-2.0
[MIT]: http://www.opensource.org/licenses/mit-license.php
[GPL]: http://www.gnu.org/licenses/gpl.html

