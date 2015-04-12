class StaticPagesController < ApplicationController

	def home
	end

	def example
	end

	def index
		@profile = Profile.new
	end
end
