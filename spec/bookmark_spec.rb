require './lib/bookmark'

describe Bookmark do
  it 'should contain' do
    expect(Bookmark.all.join).to eq("http://www.makersacademy.comhttp://www.google.comhttp://askjeeves.com")
   end
end