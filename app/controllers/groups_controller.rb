class GroupsController < ApplicationController
  def new
    @group = Group.new
    @users = User.all - [current_user]
  end

  def create
    @group = Group.new(group_params)
    @group.organizer_id = current_user.id
    if @group.save
      redirect_to group_path(@group)
    else
      render 'new'
    end
  end

  def show
    @group = set_group
    @organizer = User.find_by(id:@group.organizer_id)
  end

  def edit
    @group = set_group
    @users = User.all - [current_user]
  end

  def update

  end

  # def add_members
  #   @group = set_group
  #   @group.update(member_params)
  #   redirect_to @group
  # end

  private

    def set_group
      Group.find_by(id:params[:id]) || Group.find_by(id:params[:group_id])
    end

    def group_params
      params.require(:group).permit(:name,:signup_deadline,user_ids:[])
    end

    def member_params
      params.require(:group).permit(members:[])
    end
end
