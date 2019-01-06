class ComponentsController < ApplicationController
  def index
    @members = Member.all
    @roles = Role.all
    @grades = Grade.all
    @statuses = Status.all
    @room_statuses = RoomStatus.all
    @posts = Post.all
    @categories = Category.all
    @todos = Todo.all
  end
  def icon
    icon = Icon.find(params[:id])
    send_data icon.content, :filename => icon.name, :type => icon.content_type
  end
end