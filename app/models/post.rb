class Post < ActiveRecord::Base
  belongs_to :topic
  
  def self.containing(content)
    if content
     posts =  where('title LIKE ? or content LIKE ?', "%#{content}%", "%#{content}%")
     return posts.map { |post|
       [post.topic,post]
     }
   else 
     return []
   end
  end
end
