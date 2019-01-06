class MypageController < ApplicationController
  before_action :authenticate_member!
  def index
    if current_member.specific_id.blank?
      redirect_to edit_member_path(current_member)
    end
    session[:member] = current_member
    
    if current_member.role.id != 1
      @members = Member.where(status_id: 1).all
    else
      @members = Member.all
    end
    @roles = Role.all
    @grades = Grade.all
    @statuses = Status.all
    @room_statuses = RoomStatus.all
    @posts = Post.all
    @member_posts = Post.where(member_id: current_member.id ).all
    @published_posts = Post.where(published: true ).all
    @categories = Category.all
    @todos = Todo.where(member_id: current_member.id).all
  end

  def icon
    icon = Icon.find(params[:id])
    send_data icon.content, :filename => icon.name, :type => icon.content_type
  end
end
