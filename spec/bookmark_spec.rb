require './lib/bookmark'

describe Bookmark do
  let(:conn) { PG.connect( dbname: 'bookmark_manager_test' ) }
    describe ".all" do
      it "returns all bookmarks" do
        bookmarks = Bookmark.all
        expect(bookmarks).to include("www.google.com")
      end
    end
  end
