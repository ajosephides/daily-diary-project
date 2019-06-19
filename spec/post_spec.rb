require 'post'

describe Post do

  subject(:post) {Post.new('Title 1')}
  
  describe '#initialize' do
    it 'is initialised with a title' do
      expect(subject.title).to eq('Title 1')  
    end
  end
end