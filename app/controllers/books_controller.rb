class BooksController < ApplicationController

	before_action :authenticate_user!
	
	def index
		@books = Book.all
	end


	def show
		@book = Book.find(params[:id])
		@comments = @book.comments
	end

	
	def new	
		@book = Book.new
	end


	
	def edit
		@books = Book.all
		@book = Book.find(params[:id])
	end
	

	
	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to book_path(:id=>@book.id)
		else
			render :action=> "new"
		end
	end


	def update


		@book = Book.find(params[:id])


		if @book.update(book_params)
			redirect_to @book
		else
			render 'edit'
		end
		
	end


	def destroy
		@book = Book.find(params[:id])
		@book.destroy

		redirect_to books_path
	end


	private
		def book_params
			params.require(:book).permit(:title, :text)
		end
end