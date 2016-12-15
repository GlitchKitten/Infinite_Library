class BooksController < ApplicationController
  def index
    @books = Book.all.reorder("created_at DESC").paginate(page: params[:page], per_page: 6)
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    
    @book.save
    redirect_to books_path
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :author, :quote, :isbn)
    end

end
