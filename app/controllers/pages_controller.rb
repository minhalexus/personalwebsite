class PagesController < ApplicationController
	before_action :set_message, only: [:show_message, :destroy_message]
	access all: [:index, :create], user: [:index, :create], admin: :all
	def index
		@message = Message.new

    if Problem.count <= 3
      @problems = Problem.all
      puts "****************************************************************"
      puts "slecting #{Problem.count} projects"
      puts "****************************************************************"
    else
      @problems = Problem.take(3)
    end
	end

    def create
	    @message = Message.new(message_params)
	    if @message.save
	    	puts "***************** Message Saved ***********************"
	    	redirect_to (root_url + '#newsletter'), notice: 'Message was successfully sent.'
	    else
	      render :index
	    end
  	end

  	def list_messages
  		@messages = Message.all
  	end

  	def show_message
  	end

  	def destroy_message
  		@message.destroy
  		redirect_to :show_message, notice: 'Message was successfully destroyed.'
  	end

  private
  	def message_params
  		params.require(:message).permit(:name,:email,:content)
  	end

  	def set_message
  		@message = Message.find(params[:id])
  	end

end