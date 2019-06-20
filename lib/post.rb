require 'pg'

class Post

  attr_reader :title, :content

  def initialize(id, title, content)
    @id = id
    @title = title
    @content = content
  end

  def self.create(title, content)
    db = PG.connect(dbname: 'daily_diary_test')
    entry = db.exec("INSERT INTO posts (title, content) VALUES('#{title}', '#{content}') RETURNING id, title, content;")
    Post.new(entry[0]['id'], entry[0]['title'], entry[0]['content'])
  end  
end