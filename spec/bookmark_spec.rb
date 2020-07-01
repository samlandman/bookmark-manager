require './lib/bookmark'

describe Bookmark do
  it 'should contain' do
    expect(Bookmark.all.join).to eq("www.cats.comwww.dogs.com")
   end
end