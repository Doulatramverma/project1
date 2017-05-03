class MembersController < ApplicationController
	def index
		@members=Member.all
	end

	def new
		@project= Project.find(params[:project_id])
		@member=Member.new
	end

	def create
		@project= Project.find(params[:project_id])
       @member = @project.members.create(member_params)
       redirect_to project_path(@project)
	end

	def show
		@project= Project.find(params[:project_id])
		@member=Member.find(param[:id])
	end

	private
	def member_params
		params.require(:member).permit(:user_id,:project_id)
	end
end
