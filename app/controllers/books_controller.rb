class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book= Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to dashbaord_path, status: :see_other
  end


  private

  def book_params
    params.require(:book).permit(:title, :description, :author, :year, :publisher, price_per_day:, user_id:)
  end
end
