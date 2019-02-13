require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'
class AuthorTest < Minitest::Test
  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @new_book = Book.new({author_first_name: "N.K.", author_last_name: "Jemisin", publication_date: "2015", title: "The Fifth Season"})
  end

  def test_existence_of_author
    assert_instance_of Author, @nk_jemisin
  end

  def test_if_author_has_a_book
    assert_equal [], @nk_jemisin.book
  end

  def test_add_book_Author
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    assert_equal [@new_book], @nk_jemisin.book
  end
end
