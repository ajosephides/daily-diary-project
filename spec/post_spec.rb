require 'post'
require 'pg'

describe Post do

  describe '#create' do
    it 'creates a new entry in a database' do
      first_post = Post.create(title: 'Title 1', content: 'This is my first entry')
      expect(first_post.title).to eq('Title 1')
      expect(first_post.content).to eq('This is my first entry')
    end
  end
end