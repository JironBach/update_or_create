require 'active_record/base'

module UpdateOrCreate
	class ActiveRecord::Base
		class << self
			def update_or_create(attributes_array)
				attributes_array.each do |attributes|
					begin
						first = self.find(attributes[:id])
					rescue
					end
					if first.nil?
						self.new(attributes).save
					else
            if attributes['delete record !!!'] == true
              first.destroy
            else
  						first.attributes = attributes
  						first.save
            end
					end
				end
	   	end

		end
 	end
end
