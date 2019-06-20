require 'pg'

class Post

  attr_reader :title, :content

  def initialize(id:, title:, content:)
    @id = id
    @title = title
    @content = content
  end

  def self.create(title:, content:)
    
    db = pick_db
    entry = db.exec("INSERT INTO posts (title, content) VALUES('#{title}', '#{content}') RETURNING id, title, content;")
    Post.new(id: entry[0]['id'], title: entry[0]['title'], content: entry[0]['content'])
  end  


  private

  def self.pick_db
    if ENV['ENVIRONMENT'] = 'test'
      return PG.connect(dbname: 'daily_diary_test')
    else
      PG.connect(dbname: 'daily_diary')
    end
  end
end