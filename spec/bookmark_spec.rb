require './lib/bookmark'

describe Bookmark do

  let (:bookmark) {Bookmark.new("Josh", "www.makers.tech", "Makers", "Bootcamp, Tech, Coding", "This is a comment.")}

  it 'should create a new bookmark' do
    expect(bookmark).to be_an_instance_of(Bookmark)
  end

  it 'should assign an owner on initialize' do
    expect(bookmark.user).to eq("Josh")
  end

  it 'should assign an owner on initialize' do
    expect(bookmark.url).to eq("www.makers.tech")
  end

  it 'should assign an owner on initialize' do
    expect(bookmark.name).to eq("Makers")
  end

  it 'should assign an owner on initialize' do
    expect(bookmark.tag_collection).to eq("Bootcamp, Tech, Coding")
  end

  it 'should assign an owner on initialize' do
    expect(bookmark.comment_collection).to eq("This is a comment.")
  end

end