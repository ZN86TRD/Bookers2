class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  #投稿データの保存
  def Create
    @book = Book.new(book_params)
    @book.user_id = current_uer.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def show
  end

  #投稿データのストロングパラメーター
  private

  def book_params
    params.require(:book).permit(:title, :body)
end

end
