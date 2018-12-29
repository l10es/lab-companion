class WelcomeController < ApplicationController
  def index
    if current_member
      redirect_to member_root_path
    end
  end
end
