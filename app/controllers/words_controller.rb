class WordsController < ApplicationController

	def index
		@words = Word.all.order('created_at DESC')
	end

	def new
		@word = Word.new
	end

	def create
		@word = Word.new(word_params)
		
		if @word.save
			redirect_to @word
		else
			render 'new'
		end
	end


	private

		def word_params
			params.require(:word).permit(:title, :category)
		end
end
