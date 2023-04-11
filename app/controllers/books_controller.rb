class BooksController < ApplicationController

	def index
		@books = Book.all
	end
	
	def show
		@book = Book.find(params[:id])
	end
	
	def new
		@book = Book.new
		@book.year = 2023
		@book.month = 4
	end
	
	def create
		book_params = params.require(:book).permit(:year, :month, :inout, :category, :amount)
		@book = Book.new(book_params)
		if @book.save
			flash[:notice]="added!"
			redirect_to books_path
		else
			flash.now[:alert] = "faild"
			render :new
		end
	end
	
	def edit
	 	@book = Book.find(params[:id])
	end
	
	def update
		@book = Book.find(params[:id])

			book_params = params.require(:book).permit(:year, :month, :inout, :category, :amount)
		
		if @book.update(book_params)
			flash[:notice]="updated!"
			redirect_to books_path
		else
			flash.now[:alert] = "faild"
			render :edit
		end
	end
		
	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		flash[:notice]="bye!"
		redirect_to books_path
		
	end
	
end
