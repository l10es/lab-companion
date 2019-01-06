class AboutUsController < ApplicationController
  def index
  end
  def icon
    icon = Icon.find(params[:id])
    send_data icon.content, :filename => icon.name, :type => icon.content_type
  end
end
