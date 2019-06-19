require 'post'

describe Post do

  subject(:post) {Post.new('Title 1', 'This is my first entry')}

  describe '#initialize' do
    it 'is initialised with a title' do
      expect(subject.title).to eq('Title 1')  
    end

    it 'is initialized with content' do
      expect(subject.content).to eq('This is my first entry')
    end
  end
end