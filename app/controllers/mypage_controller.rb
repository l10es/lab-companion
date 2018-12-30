class MypageController < ApplicationController
  before_action :authenticate_member!
  def index
    @members = Member.all
    @roles = Role.all
    @grades = Grade.all
    @statuses = Status.all
    @room_statuses = RoomStatus.all
    @posts = Post.all
    @member_posts = Post.where(member_id: current_member.id ).all
    @published_posts = Post.where(published: true ).all
    @categories = Category.all
    @todos = Todo.all
  end
end
