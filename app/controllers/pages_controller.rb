class PagesController < ApplicationController
	before_action :set_message, only: [:show_message, :destroy_message]
  before_action :instantiate_objects, only: [:index, :create_message, :add_email_to_list]
	access all: [:index, :create_message, :add_email_to_list], admin: :all
	def index
	end

  def create_message
    @message = Message.new(message_params)
    if @message.save
    	puts "***************** Message Saved ***********************"
    	redirect_to (root_url + '#contact'), notice: 'Submitted Sucessfully!'
    else
      render :index
    end
	end

  def add_email_to_list
    @emailaddress = EmailList.new(email_params)
    if  @emailaddress.save
      puts "***************** Message Saved ***********************"
      redirect_to (root_url + '#newsletter'), notice: 'Submitted Sucessfully!'
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

    def email_params
      params.require(:email_list).permit(:email)
    end

    def instantiate_objects
      @message = Message.new()
      @emailaddress = EmailList.new()
      if Problem.count <= 3
        @problems = Problem.all
        puts "****************************************************************"
        puts "slecting #{Problem.count} problems"
        puts "****************************************************************"
      else
        @problems = Problem.take(3)
      end

      if Project.count <= 3
        @projects = Project.all
        puts "****************************************************************"
        puts "selecting #{Project.count} projects"
        puts "****************************************************************"
      else
        @projects = Project.take(3)
      end
    end

end