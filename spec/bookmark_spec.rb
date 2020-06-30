require './lib/bookmark'

xdescribe Bookmark do

  it 'should contain' do
    expect(bookmark.user).to eq("Josh")
  end

end
