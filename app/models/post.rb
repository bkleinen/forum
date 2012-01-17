class Post < ActiveRecord::Base
  belongs_to :topic
  
  def self.containing(content)
    if content
     return where('title LIKE ? or content LIKE ?', "%#{content}%", "%#{content}%")
   else 
     return []
   end
  end
end
