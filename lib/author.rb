require './lib/book'

class Author
  attr_reader :first_name, :last_name, :book
  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name  = author_info[:last_name]
    @title = author_info[:title]
    @book = []
  end

  def add_book(title, publication_date)
  @book << book_info[:title] => title
  @book << book_info[:publication_date] => publication_date
  @book << book_info[:author_first_name] => first_name
  @book << book_info[:author_last_name] => last_name

  end

  def conversion

  end
end
