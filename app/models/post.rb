class Post < ActiveRecord::Base
	has_many :comments

	def self.search(search)
	  if search	
        search_condition = "%" + search + "%"
        find(:all, :conditions => ['content LIKE ? ', search_condition])
      else
        find(:all)
      end
    end
end
