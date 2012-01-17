class Post < ActiveRecord::Base
  belongs_to :topic
  
  def self.containing(content)
    unless content
     #return where('content LIKE ?', "%#{content}%")
     return where('content LIKE %bla%')
   else 
     return []
   end
  end
end
